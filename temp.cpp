// Wheel의 현재 상태를 저장하는 구조체
struct WheelState {
    WheelControlValue control_value;  // 현재 각도와 속도
    bool is_updated;                  // 업데이트 여부
    
    WheelState() : is_updated(false) {}
};

// 특정 sequence에 대한 모든 wheel의 상태를 관리하는 클래스
class SequenceWheelStates {
public:
    SequenceWheelStates() : is_complete(false) {
        wheel_states.fill(WheelState());
    }
    
    std::array<WheelState, 4> wheel_states;  // 4개 휠의 상태
    bool is_complete;                        // 4개 휠 모두 업데이트 됐는지
    std::chrono::system_clock::time_point timestamp;  // 데이터 생성 시간
};

// Driving 클래스에서 사용할 Wheel 상태 관리 클래스
class WheelStateManager {
public:
    WheelStateManager(size_t max_sequence_buffer = 100) 
        : current_sequence(0), max_buffer_size(max_sequence_buffer) {}
    
    // wheel로부터 callback 받을 때 호출
    void updateWheelState(uint32_t sequence, int wheel_index, const WheelControlValue& value) {
        std::lock_guard<std::mutex> lock(mutex_);
        
        // 해당 sequence의 상태 가져오기 or 생성
        auto& seq_states = getOrCreateSequenceState(sequence);
        
        // wheel 상태 업데이트
        seq_states.wheel_states[wheel_index].control_value = value;
        seq_states.wheel_states[wheel_index].is_updated = true;
        
        // 모든 wheel이 업데이트 되었는지 확인
        checkSequenceComplete(sequence);
        
        // 오래된 시퀀스 정리
        cleanOldSequences();
    }
    
    // 특정 sequence의 모든 wheel 데이터가 수집되었는지 확인
    bool isSequenceComplete(uint32_t sequence) const {
        std::lock_guard<std::mutex> lock(mutex_);
        auto it = sequence_states.find(sequence);
        return (it != sequence_states.end() && it->second.is_complete);
    }
    
    // 완성된 sequence의 wheel 상태들 가져오기
    std::optional<std::array<WheelControlValue, 4>> getCompleteWheelStates(uint32_t sequence) {
        std::lock_guard<std::mutex> lock(mutex_);
        auto it = sequence_states.find(sequence);
        if (it != sequence_states.end() && it->second.is_complete) {
            std::array<WheelControlValue, 4> result;
            for (int i = 0; i < 4; ++i) {
                result[i] = it->second.wheel_states[i].control_value;
            }
            return result;
        }
        return std::nullopt;
    }

private:
    mutable std::mutex mutex_;
    uint32_t current_sequence;
    size_t max_buffer_size;
    std::map<uint32_t, SequenceWheelStates> sequence_states;
    
    SequenceWheelStates& getOrCreateSequenceState(uint32_t sequence) {
        auto it = sequence_states.find(sequence);
        if (it == sequence_states.end()) {
            auto [new_it, _] = sequence_states.emplace(sequence, SequenceWheelStates());
            new_it->second.timestamp = std::chrono::system_clock::now();
            return new_it->second;
        }
        return it->second;
    }
    
    void checkSequenceComplete(uint32_t sequence) {
        auto& states = sequence_states[sequence];
        states.is_complete = std::all_of(states.wheel_states.begin(), 
                                       states.wheel_states.end(),
                                       [](const WheelState& state) { 
                                           return state.is_updated; 
                                       });
    }
    
    void cleanOldSequences() {
        auto now = std::chrono::system_clock::now();
        auto it = sequence_states.begin();
        while (it != sequence_states.end()) {
            if (sequence_states.size() <= max_buffer_size) break;
            
            auto age = now - it->second.timestamp;
            if (age > std::chrono::seconds(5) || sequence_states.size() > max_buffer_size) {
                it = sequence_states.erase(it);
            } else {
                ++it;
            }
        }
    }
};