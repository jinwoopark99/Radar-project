#!/usr/bin/env python3
import rospy
from geometry_msgs.msg import PoseStamped
from std_msgs.msg import Bool
import threading

setpoint_position = PoseStamped()
recovery_position_1 = PoseStamped()
recovery_position_3 = PoseStamped()
mission_start_pub = rospy.Publisher('/mission_start_2', Bool, queue_size=10)
uav0_alive = True
uav1_alive = True
uav3_alive = True
subscription_active = False
mission_land = False
MAX_MISSED_DURATION = 0.8

def uav0_setpoint_pose_callback(data):
    global setpoint_position
    setpoint_position = data  

def uav1_setpoint_pose_callback(data):
    global recovery_position_1
    recovery_position_1 = data

def uav3_setpoint_pose_callback(data):
    global recovery_position_3
    recovery_position_3 = data

def uav0_alive_callback(data):
    global uav0_alive
    uav0_alive = data.data

def uav1_alive_callback(data):
    global uav1_alive
    uav1_alive = data.data

def uav3_alive_callback(data):
    global uav3_alive
    uav3_alive = data.data

def move_uav2():
    global uav0_alive, uav1_alive, uav3_alive, mission_land
    global setpoint_position, recovery_position_1, recovery_position_3
    rospy.init_node('uav2_command', anonymous=True)

    rospy.Subscriber('/uav0/relay/setpoint_position/local', PoseStamped, uav0_setpoint_pose_callback)
    rospy.Subscriber('/uav1/mavros/setpoint_position/local', PoseStamped, uav1_setpoint_pose_callback)
    rospy.Subscriber('/uav3/mavros/setpoint_position/local', PoseStamped, uav3_setpoint_pose_callback)
    rospy.Subscriber('/signal_check0-2', Bool, uav0_alive_callback)
    rospy.Subscriber('/signal_check1-2', Bool, uav1_alive_callback)
    rospy.Subscriber('/signal_check2-3', Bool, uav3_alive_callback)
    
    pub = rospy.Publisher('/uav2/mavros/setpoint_position/local', PoseStamped, queue_size=10)
    pub_land = rospy.Publisher('/mission_land', Bool, queue_size=10)

    rate = rospy.Rate(100)
    
    while not rospy.is_shutdown():
        
        if uav0_alive:
            relative_position = PoseStamped()
            relative_position.pose.position.x = setpoint_position.pose.position.x
            relative_position.pose.position.y = setpoint_position.pose.position.y + 1 # Relative offset
            relative_position.pose.position.z = setpoint_position.pose.position.z
            #print("setposition from uav0")
        
        elif uav1_alive:
            relative_position = PoseStamped()
            relative_position.pose.position.x = recovery_position_1.pose.position.x - 1
            relative_position.pose.position.y = recovery_position_1.pose.position.y + 1
            relative_position.pose.position.z = recovery_position_1.pose.position.z
            print("Timeout Recovery has activated: uav1 position is used")

        elif uav3_alive:
            relative_position = PoseStamped()
            relative_position.pose.position.x = recovery_position_3.pose.position.x - 1
            relative_position.pose.position.y = recovery_position_3.pose.position.y
            relative_position.pose.position.z = recovery_position_3.pose.position.z
            print("Timeout Recovery has activated: uav3 position is used")

        else:
            mission_land = True
            rospy.loginfo("Connections with other vehicles are lost")
            pub_land.publish(mission_land)
            break
        
            
        pub.publish(relative_position)
        mission_start_pub.publish(True)
        print("Publishing relative position for uav2: ({}, {}, {})".format(relative_position.pose.position.x, relative_position.pose.position.y, relative_position.pose.position.z))
        rate.sleep()


if __name__ == '__main__':
    try:
        move_uav2()
    except rospy.ROSInterruptException:
        mission_start_pub.publish(False)
        pass
    mission_start_pub.publish(False)
