# UnitStateMsg.msg
# Observer -> Unit으로 발송하는 Message

# bit flag를 통해 각 unit index와 1:1 매칭된다.
# 0:alive , 1:dead or timeout
int32 alive

# Array for unit states
int32[] states