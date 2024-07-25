#!/usr/bin/env python3
import rospy
from geometry_msgs.msg import PoseStamped
from std_msgs.msg import Bool
import tf
import math

current_position = PoseStamped()
setpoint_position = PoseStamped()
recovery_position_2 = PoseStamped()
recovery_position_3 = PoseStamped()
mission_start_pub = rospy.Publisher('/mission_start_1', Bool, queue_size=10)
current_yaw = 0.0
uav0_alive = True
uav2_alive = True
uav3_alive = True
uav2_deviation = False
subscription_active = False
mission_land = False

def current_pose_callback(data):
    global current_position, current_yaw
    current_position = data
    
    orientation_q = current_position.pose.orientation
    orientation_list = [orientation_q.x, orientation_q.y, orientation_q.z, orientation_q.w]

    (roll, pitch, yaw) = tf.transformations.euler_from_quaternion(orientation_list)
    current_yaw = yaw

def uav0_setpoint_pose_callback(data):
    global setpoint_position
    setpoint_position = data  

def uav2_setpoint_pose_callback(data):
    global recovery_position_2
    recovery_position_2 = data

def uav3_setpoint_pose_callback(data):
    global recovery_position_3
    recovery_position_3 = data

def uav2_deviation_callback(data):
    global uav2_deviation
    uav2_deviation = data.data

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
    global uav0_alive, uav2_alive, uav3_alive, mission_land, uav2_deviation
    global current_position, current_yaw, setpoint_position, recovery_position_2, recovery_position_3
    rospy.init_node('uav1_command', anonymous=True)

    rospy.Subscriber('/uav0/mavros/setpoint_position/local', PoseStamped, uav0_setpoint_pose_callback)
    rospy.Subscriber('/uav2/mavros/setpoint_position/local', PoseStamped, uav2_setpoint_pose_callback)
    rospy.Subscriber('/uav3/mavros/setpoint_position/local', PoseStamped, uav3_setpoint_pose_callback)
    rospy.Subscriber('/uav1/mavros/local_position/pose', PoseStamped, current_pose_callback)
    rospy.Subscriber('/uav2_deviation', Bool, uav2_deviation_callback)
    rospy.Subscriber('/signal_check0-1', Bool, uav0_alive_callback)
    rospy.Subscriber('/signal_check1-2', Bool, uav2_alive_callback)
    rospy.Subscriber('/signal_check1-3', Bool, uav3_alive_callback)
    rospy.Subscriber('/mission_land', Bool, mission_land_callback)

    pub = rospy.Publisher('/uav1/mavros/setpoint_position/local', PoseStamped, queue_size=10)
    pub_land = rospy.Publisher('/mission_land', Bool, queue_size=10)
    pub_arrive = rospy.Publisher('/checkpoint_arrive_1', Bool, queue_size=10)

    rate = rospy.Rate(100)
    
    while not rospy.is_shutdown():
        if (uav2_deviation == True):
            relative_position = current_position
            pub.publish(relative_position)
            print("deviation sent complete")
            rate.sleep()
            if(mission_land == True):
                pub_land.publish(mission_land)
                break
            continue
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
            #print(f"yaw of the uav1: {yaw}")
        
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
        
        pos_err_x = abs(relative_position.pose.position.x - current_position.pose.position.x)
        pos_err_y = abs(relative_position.pose.position.y - current_position.pose.position.y)
        pos_err_z = abs(relative_position.pose.position.z - current_position.pose.position.z)
        pos_err_yaw = abs(yaw - current_yaw)

        if (pos_err_x < 0.1 and pos_err_y < 0.1 and pos_err_z < 0.1 and pos_err_yaw < 0.1):
            pub_arrive.publish(True)
        else:
            pub_arrive.publish(False)

        if mission_land == True:
            break

        pub.publish(relative_position)
        mission_start_pub.publish(True)
        #print("Publishing relative position for uav1: ({}, {}, {})".format(relative_position.pose.position.x, relative_position.pose.position.y, relative_position.pose.position.z))
        rate.sleep()

if __name__ == '__main__':
    try:
        move_uav1()
    except rospy.ROSInterruptException:
        mission_start_pub.publish(False)
        pass
    mission_start_pub.publish(False)
