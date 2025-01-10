Header header

uint8 MAX_LENGTH=200
uint8 valid_length

geometry_msgs/Pose2D[200] path
geometry_msgs/Twist front_vel
geometry_msgs/Twist current_vel
geometry_msgs/Pose2D current_pose

uint8[200] mode
uint8 DRIVING_MODE=1
uint8 ROTATING_MODE=2
uint8 ROTATING_MODE_IN=3
uint8 ROTATING_MODE_OUT_CW=4
uint8 ROTATING_MODE_OUT_CCW=5