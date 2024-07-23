#!/usr/bin/env python3
import rospy
from geometry_msgs.msg import PoseStamped
from std_msgs.msg import Bool
import tf
import math

setpoint_position = PoseStamped()
recovery_position_2 = PoseStamped()
recovery_position_3 = PoseStamped()
mission_start_pub = rospy.Publisher('/mission_start_1', Bool, queue_size=10)
uav0_alive = True
uav2_alive = True
uav3_alive = True
subscription_active = False
mission_land = False
MAX_MISSED_DURATION = 0.8

def uav0_setpoint_pose_callback(data):
    global setpoint_position
    setpoint_position = data  

def uav2_setpoint_pose_callback(data):
    global recovery_position_2
    recovery_position_2 = data

def uav3_setpoint_pose_callback(data):
    global recovery_position_3
    recovery_position_3 = data

def uav0_alive_callback(data):
    global uav0_alive
    uav0_alive = data.data

def uav2_alive_callback(data):
    global uav2_alive
    uav2_alive = data.data

def uav3_alive_callback(data):
    global uav3_alive
    uav3_alive = data.data

def mission_land_callback(data):
    global mission_land
    mission_land = data.data

def calculate_transformed_position(x, y, z, yaw):
    # 회전한 좌표계 기준으로 새로운 좌표 계산
    new_x = x * math.cos(yaw) - y * math.sin(yaw)
    new_y = x * math.sin(yaw) + y * math.cos(yaw)
    return new_x, new_y, z

def move_uav1():
    global uav0_alive, uav2_alive, uav3_alive, mission_land
    global setpoint_position, recovery_position_2, recovery_position_3
    rospy.init_node('uav1_command', anonymous=True)

    rospy.Subscriber('/uav0/mavros/setpoint_position/local', PoseStamped, uav0_setpoint_pose_callback)
    rospy.Subscriber('/uav2/mavros/setpoint_position/local', PoseStamped, uav2_setpoint_pose_callback)
    rospy.Subscriber('/uav3/mavros/setpoint_position/local', PoseStamped, uav3_setpoint_pose_callback)
    rospy.Subscriber('/signal_check0-1', Bool, uav0_alive_callback)
    rospy.Subscriber('/signal_check1-2', Bool, uav2_alive_callback)
    rospy.Subscriber('/signal_check1-3', Bool, uav3_alive_callback)
    rospy.Subscriber('/mission_land', Bool, mission_land_callback)

    pub = rospy.Publisher('/uav1/mavros/setpoint_position/local', PoseStamped, queue_size=10)
    pub_land = rospy.Publisher('/mission_land', Bool, queue_size=10)

    rate = rospy.Rate(100)
    
    while not rospy.is_shutdown():
        
        if uav0_alive:
            yaw = tf.transformations.euler_from_quaternion([
                setpoint_position.pose.orientation.x,
                setpoint_position.pose.orientation.y,
                setpoint_position.pose.orientation.z,
                setpoint_position.pose.orientation.w
            ])[2]

            # UAV0의 회전한 좌표계 기준으로 +1 이동
            x, y, z = 1, 0, 0
            new_x, new_y, new_z = calculate_transformed_position(x, y, z, yaw)
            relative_position = PoseStamped()
            relative_position.pose.position.x = setpoint_position.pose.position.x + new_x
            relative_position.pose.position.y = setpoint_position.pose.position.y + new_y
            relative_position.pose.position.z = setpoint_position.pose.position.z + new_z
            relative_position.pose.orientation = setpoint_position.pose.orientation
            #print("setposition from uav0")
        
        elif uav2_alive:
            yaw = tf.transformations.euler_from_quaternion([
                recovery_position_2.pose.orientation.x,
                recovery_position_2.pose.orientation.y,
                recovery_position_2.pose.orientation.z,
                recovery_position_2.pose.orientation.w
            ])[2]

            # UAV2의 회전한 좌표계 기준으로 +1 이동
            x, y, z = 1, -1, 0
            new_x, new_y, new_z = calculate_transformed_position(x, y, z, yaw)
            relative_position = PoseStamped()
            relative_position.pose.position.x = recovery_position_2.pose.position.x + new_x
            relative_position.pose.position.y = recovery_position_2.pose.position.y + new_y
            relative_position.pose.position.z = recovery_position_2.pose.position.z + new_z
            relative_position.pose.orientation = recovery_position_2.pose.orientation
            print("Timeout Recovery has activated: uav2 position is used")

        elif uav3_alive:
            yaw = tf.transformations.euler_from_quaternion([
                recovery_position_3.pose.orientation.x,
                recovery_position_3.pose.orientation.y,
                recovery_position_3.pose.orientation.z,
                recovery_position_3.pose.orientation.w
            ])[2]

            # UAV3의 회전한 좌표계 기준으로 +1 이동
            x, y, z = 0, -1, 0
            new_x, new_y, new_z = calculate_transformed_position(x, y, z, yaw)
            relative_position = PoseStamped()
            relative_position.pose.position.x = recovery_position_3.pose.position.x + new_x
            relative_position.pose.position.y = recovery_position_3.pose.position.y + new_y
            relative_position.pose.position.z = recovery_position_3.pose.position.z + new_z
            relative_position.pose.orientation = recovery_position_3.pose.orientation
            print("Timeout Recovery has activated: uav3 position is used")

        else:
            mission_land = True
            rospy.loginfo("Connections with other vehicles are lost")
            pub_land.publish(mission_land)
            break
        
        if mission_land == True:
            break

        pub.publish(relative_position)
        mission_start_pub.publish(True)
        print("Publishing relative position for uav1: ({}, {}, {})".format(relative_position.pose.position.x, relative_position.pose.position.y, relative_position.pose.position.z))
        rate.sleep()

if __name__ == '__main__':
    try:
        move_uav1()
    except rospy.ROSInterruptException:
        mission_start_pub.publish(False)
        pass
    mission_start_pub.publish(False)
