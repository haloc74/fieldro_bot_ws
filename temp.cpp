WheelControlValue* AckermannDouble::calculate_wheel_velocities(const geometry_msgs::Twist& twist)
{
    const double linear_x = twist.linear.x;    // 전진 속도
    const double linear_y = twist.linear.y;    // 측방 속도
    const double angular_z = twist.angular.z;  // 회전 속도

    // 정지 상태 체크
    const double movement = std::abs(linear_x) + std::abs(linear_y);
    if(std::abs(movement) < MOVEMENT_THRESHOLD && std::abs(angular_z) < ROTATION_THRESHOLD) 
    {
        for(int i = 0; i < 4; i++) 
        {
            _value[i]._velocity = 0.0;
            _value[i]._angle = 0.0;
        }
        return _value;
    }

    // 선속도와 각속도 모두 존재하는 경우의 처리
    if(movement > MOVEMENT_THRESHOLD && std::abs(angular_z) > ROTATION_THRESHOLD)
    {
        // 전체 움직임에서 선속도와 회전 성분의 비율 계산
        const double linear_ratio = movement / (movement + std::abs(angular_z));
        const double angular_ratio = std::abs(angular_z) / (movement + std::abs(angular_z));

        for(int i = 0; i < 4; i++)
        {
            // 선속도 성분
            double linear_velocity = std::hypot(linear_x, linear_y);
            
            // 회전 성분
            double radius = std::hypot(_pos[i].x, _pos[i].y);  // 중심으로부터의 거리
            double rotational_velocity = angular_z * radius;

            // 선속도와 회전속도 합성
            _value[i]._velocity = linear_velocity * linear_ratio + rotational_velocity * angular_ratio;

            // 각속도 계산
            double linear_angle_rate = std::atan2(linear_y, linear_x);
            double rotational_angle_rate = angular_z;

            // 전륜과 후륜의 각속도 방향이 반대
            if(i >= 2)  // 후륜
            {
                _value[i]._angle = (-linear_angle_rate * linear_ratio + 
                                  -rotational_angle_rate * angular_ratio);
            }
            else  // 전륜
            {
                _value[i]._angle = (linear_angle_rate * linear_ratio + 
                                  rotational_angle_rate * angular_ratio);
            }
        }
    }
    else if(movement > MOVEMENT_THRESHOLD)  // 선속도만 있는 경우
    {
        const double velocity = std::hypot(linear_x, linear_y);
        const double angle_rate = std::atan2(linear_y, linear_x);

        // 전륜
        _value[Wheel::FrontLeft]._angle = angle_rate;
        _value[Wheel::FrontRight]._angle = angle_rate;
        
        // 후륜 (반대 방향)
        _value[Wheel::RearLeft]._angle = -angle_rate;
        _value[Wheel::RearRight]._angle = -angle_rate;

        // 모든 바퀴 동일 선속도
        for(int i = 0; i < 4; i++) 
        {
            _value[i]._velocity = velocity;
        }
    }
    else  // 각속도만 있는 경우
    {
        // 전륜
        _value[Wheel::FrontLeft]._angle = angular_z;
        _value[Wheel::FrontRight]._angle = angular_z;
        
        // 후륜 (반대 방향)
        _value[Wheel::RearLeft]._angle = -angular_z;
        _value[Wheel::RearRight]._angle = -angular_z;

        // 각 바퀴의 선속도 계산
        for(int i = 0; i < 4; i++) 
        {
            double radius = std::hypot(_pos[i].x, _pos[i].y);
            _value[i]._velocity = angular_z * radius;
        }
    }

    return _value;
}


void AckermannDouble::calculate_complex_control(const geometry_msgs::Twist& twist, double movement)
{
    const double linear_ratio = movement / (movement + std::abs(twist.angular.z));
    const double angular_ratio = std::abs(twist.angular.z) / (movement + std::abs(twist.angular.z));

    // 이동 방향 계산
    const double move_direction = std::atan2(twist.linear.y, twist.linear.x);

    for(int i=0; i<4; ++i)
    {
        // 선속도 성분
        double linear_velocity = std::hypot(twist.linear.x, twist.linear.y);
        
        // 회전 성분
        double radius = std::hypot(_pos[i].x, _pos[i].y);
        double rotational_velocity = twist.angular.z * radius;

        // 선속도와 회전속도 합성
        _value[i]._velocity = linear_velocity * linear_ratio + rotational_velocity * angular_ratio;

        // 각속도 계산
        if(i < 2)  // 전륜
        {
            // 선형 이동에 의한 각속도와 회전에 의한 각속도 합성
            _value[i]._angle = twist.angular.z * angular_ratio;
            if(std::abs(linear_velocity) > frb::ThresHold::Movement) {
                _value[i]._angle += std::atan2(twist.linear.y, twist.linear.x) * linear_ratio;
            }
        }
        else  // 후륜
        {
            // 전륜과 반대 방향
            _value[i]._angle = -_value[i-2]._angle;
        }
    }
}


void AckermannDouble::calculate_complex_control(const geometry_msgs::Twist& twist, double movement)
{
    const double linear_ratio = movement / (movement + std::abs(twist.angular.z));
    const double angular_ratio = std::abs(twist.angular.z) / (movement + std::abs(twist.angular.z));

    for(int i=0; i<4; ++i)
    {
        // 선속도 성분
        double linear_velocity = std::hypot(twist.linear.x, twist.linear.y);
        
        // 회전 성분
        double radius = std::hypot(_pos[i].x, _pos[i].y);  // 중심으로부터의 거리
        double rotational_velocity = twist.angular.z * radius;

        // 선속도와 회전속도 합성
        _value[i]._velocity = linear_velocity * linear_ratio + rotational_velocity * angular_ratio;

        // 각속도 계산
        if(i < 2)  // 전륜
        {
            // 회전 성분의 각속도
            double rot_angular_vel = twist.angular.z;
            
            // 선형 이동에 의한 각속도 (선속도를 각속도로 변환)
            double linear_angular_vel = 0.0;
            if(std::abs(linear_velocity) > frb::ThresHold::Movement) 
            {
                // 선속도를 각속도로 변환 (v = ωr 관계 사용)
                linear_angular_vel = linear_velocity / (_wheel_base/2);  // 휠베이스의 절반을 반지름으로 사용
            }

            // 각속도 합성
            _value[i]._angle = rot_angular_vel * angular_ratio + linear_angular_vel * linear_ratio;
        }
        else  // 후륜
        {
            // 후륜은 전륜의 반대 방향
            _value[i]._angle = -_value[i-2]._angle;
        }
    }
    return;
}