#!/usr/bin/env python3
import rospy
from geometry_msgs.msg import PoseStamped
from std_msgs.msg import Bool
import tf
import math

current_position = PoseStamped()
uav0_position = PoseStamped()
uav1_position = PoseStamped()
uav3_position = PoseStamped()
setpoint_position = PoseStamped()
recovery_position_1 = PoseStamped()
recovery_position_3 = PoseStamped()
mission_start_pub = rospy.Publisher('/mission_start_2', Bool, queue_size=10)
current_yaw = 0.0
uav0_alive = True
uav1_alive = True
uav3_alive = True
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

def uav1_setpoint_pose_callback(data):
    global recovery_position_1
    recovery_position_1 = data

def uav3_setpoint_pose_callback(data):
    global recovery_position_3
    recovery_position_3 = data

def uav0_position_callback(data):
    global uav0_position
    uav0_position = data

def uav1_position_callback(data):
    global uav1_position
    uav1_position = data

def uav3_position_callback(data):
    global uav3_position
    uav3_position = data

def uav0_alive_callback(data):
    global uav0_alive
    uav0_alive = data.data

def uav1_alive_callback(data):
    global uav1_alive
    uav1_alive = data.data

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

def calculate_distance(position1, position2):
    distance = math.sqrt(
        math.pow(position1.pose.position.x - position2.pose.position.x, 2) +
        math.pow(position1.pose.position.y - position2.pose.position.y, 2) +
        math.pow(position1.pose.position.z - position2.pose.position.z, 2)
    )
    return distance

def set_relative_position(setpoint_position, new_x, new_y, new_z):
    relative_position = PoseStamped()
    relative_position.pose.position.x = setpoint_position.pose.position.x + new_x
    relative_position.pose.position.y = setpoint_position.pose.position.y + new_y
    relative_position.pose.position.z = setpoint_position.pose.position.z + new_z
    relative_position.pose.orientation = setpoint_position.pose.orientation
    return relative_position


def move_uav2():
    global uav0_alive, uav1_alive, uav3_alive, mission_land, current_yaw
    global current_position, setpoint_position, recovery_position_1, recovery_position_3, uav0_position, uav1_position, uav3_position

    deviation_start_time = None
    non_deviation_time = None
    deviation_flag = False

    rospy.init_node('uav2_command', anonymous=True)

    rospy.Subscriber('/uav0/relay/setpoint_position/local', PoseStamped, uav0_setpoint_pose_callback) # subscribing uav0 position from relay node
    rospy.Subscriber('/uav1/mavros/setpoint_position/local', PoseStamped, uav1_setpoint_pose_callback)
    rospy.Subscriber('/uav3/mavros/setpoint_position/local', PoseStamped, uav3_setpoint_pose_callback)
    rospy.Subscriber('/uav2/mavros/local_position/pose', PoseStamped, current_pose_callback)
    rospy.Subscriber('/uav0/mavros/local_position/pose', PoseStamped, uav0_position_callback)
    rospy.Subscriber('/uav1/mavros/local_position/pose', PoseStamped, uav1_position_callback)
    rospy.Subscriber('/uav3/mavros/local_position/pose', PoseStamped, uav3_position_callback)
    rospy.Subscriber('/signal_check0-2', Bool, uav0_alive_callback)
    rospy.Subscriber('/signal_check1-2', Bool, uav1_alive_callback)
    rospy.Subscriber('/signal_check2-3', Bool, uav3_alive_callback)
    rospy.Subscriber('/mission_land', Bool, mission_land_callback)
    
    pub = rospy.Publisher('/uav2/mavros/setpoint_position/local', PoseStamped, queue_size=10)
    pub_land = rospy.Publisher('/mission_land', Bool, queue_size=10)
    pub_arrive = rospy.Publisher('/checkpoint_arrive_2', Bool, queue_size=10)
    pub_deviation = rospy.Publisher('/uav2_deviation', Bool, queue_size=10)

    rate = rospy.Rate(100)
    
    # main loop start
    while not rospy.is_shutdown():
        """
        # if there are no consensus algorithm for communication error
        yaw = tf.transformations.euler_from_quaternion([
                setpoint_position.pose.orientation.x,
                setpoint_position.pose.orientation.y,
                setpoint_position.pose.orientation.z,
                setpoint_position.pose.orientation.w
            ])[2]
        x, y, z = 0, 1, 0
        new_x, new_y, new_z = calculate_transformed_position(x, y, z, yaw)
        relative_position = PoseStamped()
        relative_position = set_relative_position(setpoint_position, new_x, new_y, new_z)

        """
        # consensus algorithm for communication error
        # also considered position deviation with other vehicles
        if uav0_alive:
            distance = calculate_distance(current_position, uav0_position)
            if (distance > 1.2) or (distance < 0.8):
                deviation_start_time = rospy.get_time()
                if (deviation_start_time and non_deviation_time) and (deviation_start_time - non_deviation_time > 1):
                    deviation_flag = True
                    pub_deviation.publish(True)
                if (deviation_start_time and non_deviation_time) and (deviation_start_time - non_deviation_time > 5):
                    deviation_flag = True
                    mission_land = True
                    pub_land.publish(mission_land)
                    break
            else:
                non_deviation_time = rospy.get_time()
                deviation_flag = False
                pub_deviation.publish(False)

            yaw = tf.transformations.euler_from_quaternion([
                setpoint_position.pose.orientation.x,
                setpoint_position.pose.orientation.y,
                setpoint_position.pose.orientation.z,
                setpoint_position.pose.orientation.w
            ])[2]

            # UAV0의 회전한 좌표계 기준으로 +1 이동
            x, y, z = 0, 1, 0
            new_x, new_y, new_z = calculate_transformed_position(x, y, z, yaw)
            relative_position = PoseStamped()

            if (deviation_flag == False):
                relative_position = set_relative_position(setpoint_position, new_x, new_y, new_z)   
            else:
                relative_position = set_relative_position(uav0_position, new_x, new_y, new_z)

            #print("setposition from uav0")
        
        elif uav1_alive:
            distance = calculate_distance(current_position, uav1_position)
            if (distance > 1.5) or (distance < 0.8):
                deviation_start_time = rospy.get_time()
                if (deviation_start_time and non_deviation_time) and (deviation_start_time - non_deviation_time > 1):
                    deviation_flag = True
                    print("DO I PASS HERE?")
                    pub_deviation.publish(True)
                if (deviation_start_time and non_deviation_time) and (deviation_start_time - non_deviation_time > 5):
                    deviation_flag = True
                    mission_land = True
                    print("!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!")
                    pub_land.publish(mission_land)
                    break
            else:
                non_deviation_time = rospy.get_time()
                deviation_flag = False
                pub_deviation.publish(False)

            yaw = tf.transformations.euler_from_quaternion([
                recovery_position_1.pose.orientation.x,
                recovery_position_1.pose.orientation.y,
                recovery_position_1.pose.orientation.z,
                recovery_position_1.pose.orientation.w
            ])[2]

            # UAV2의 회전한 좌표계 기준으로 +1 이동
            x, y, z = -1, 1, 0
            new_x, new_y, new_z = calculate_transformed_position(x, y, z, yaw)
            relative_position = PoseStamped()

            if (deviation_flag == False):
                relative_position = set_relative_position(recovery_position_1, new_x, new_y, new_z)
            else:
                relative_position = set_relative_position(uav1_position, new_x, new_y, new_z)
            
            # print("Timeout Recovery has activated: uav2 position is used")

        elif uav3_alive:
            distance = calculate_distance(current_position, uav3_position)
            if (distance > 1.2) or (distance < 0.8):
                deviation_start_time = rospy.get_time()
                if (deviation_start_time and non_deviation_time) and (deviation_start_time - non_deviation_time > 1):
                    deviation_flag = True
                    pub_deviation.publish(True)
                if (deviation_start_time and non_deviation_time) and (deviation_start_time - non_deviation_time > 5):
                    deviation_flag = True
                    mission_land = True
            else:
                non_deviation_time = rospy.get_time()
                deviation_flag = False
                pub_deviation.publish(False)
            
            yaw = tf.transformations.euler_from_quaternion([
                recovery_position_3.pose.orientation.x,
                recovery_position_3.pose.orientation.y,
                recovery_position_3.pose.orientation.z,
                recovery_position_3.pose.orientation.w
            ])[2]

            # UAV3의 회전한 좌표계 기준으로 +1 이동
            x, y, z = -1, 0, 0
            new_x, new_y, new_z = calculate_transformed_position(x, y, z, yaw)
            relative_position = PoseStamped()

            if(deviation_flag == False):
                relative_position = set_relative_position(recovery_position_3, new_x, new_y, new_z)
            else:
                relative_position = set_relative_position(uav3_position, new_x, new_y, new_z)
                
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

        #print("Publishing relative position for uav2: ({}, {}, {})".format(relative_position.pose.position.x, relative_position.pose.position.y, relative_position.pose.position.z))
        rate.sleep()


if __name__ == '__main__':
    try:
        move_uav2()
    except rospy.ROSInterruptException:
        mission_start_pub.publish(False)
        pass
    mission_start_pub.publish(False)
