#!/usr/bin/env python3
import rospy
from geometry_msgs.msg import PoseStamped
from std_msgs.msg import Bool
import threading

check_heartbeat_0 = True
check_heartbeat_1 = True
check_heartbeat_3 = True
last_msg_time_0 = None
last_msg_time_1 = None
last_msg_time_3 = None
MAX_MISSED_DURATION = 0.8

def uav0_time_check(data):
    global last_msg_time_0
    last_msg_time_0 = rospy.get_time()

def uav1_time_check(data):
    global last_msg_time_1
    last_msg_time_1 = rospy.get_time()

def uav3_time_check(data):
    global last_msg_time_3
    last_msg_time_3 = rospy.get_time()

"""
def check_uav0_alive():
    global check_heartbeat_0, last_msg_time_0
    rate = rospy.Rate(100)

    while not rospy.is_shutdown():
        current_time = rospy.get_time()
        if last_msg_time_0 and (current_time - last_msg_time_0 > MAX_MISSED_DURATION):
            check_heartbeat_0 = False
            print("Communication signal with uav0 lost")
        else:
            #print("uav0 is alive")
            check_heartbeat_0 = True

        #pub_0 = rospy.Publisher('/signal_check0', Bool, queue_size=10)
    pub_0.publish(check_heartbeat_0)
    rate.sleep()

def check_uav1_alive():
    global check_heartbeat_1, last_msg_time_1
    rate = rospy.Rate(100)

    while not rospy.is_shutdown():
        current_time = rospy.get_time()
        if last_msg_time_1 and (current_time - last_msg_time_1 > MAX_MISSED_DURATION):
            check_heartbeat_1 = False
            print("Communication signal with uav1 lost")
        else:
            #print("uav1 is alive")
            check_heartbeat_1 = True

        #pub_1 = rospy.Publisher('/signal_check1', Bool, queue_size=10)
    pub_1.publish(check_heartbeat_1)
    rate.sleep()

def check_uav3_alive():
    global check_heartbeat_3, last_msg_time_3
    rate = rospy.Rate(100)

    while not rospy.is_shutdown():
        current_time = rospy.get_time()
        if last_msg_time_3 and (current_time - last_msg_time_3 > MAX_MISSED_DURATION):
            check_heartbeat_3 = False
            print("Communication signal with uav3 lost")
        else:
            #print("uav3 is alive")
            check_heartbeat_3 = True

        #pub_3 = rospy.Publisher('/signal_check3', Bool, queue_size=10)
    pub_3.publish(check_heartbeat_3)
    rate.sleep()
"""

def check_uav_alive():
    global check_heartbeat_0, check_heartbeat_1, check_heartbeat_3
    global last_msg_time_0, last_msg_time_1, last_msg_time_3
    rate = rospy.Rate(100)  # 100Hz
    while not rospy.is_shutdown():
        current_time = rospy.get_time()

        # Check UAV0
        if last_msg_time_0 and (current_time - last_msg_time_0 > MAX_MISSED_DURATION):
            check_heartbeat_0 = False
            rospy.loginfo("Communication signal with uav0 lost")
        else:
            check_heartbeat_0 = True
        pub_0.publish(check_heartbeat_0)

        # Check UAV1
        if last_msg_time_1 and (current_time - last_msg_time_1 > MAX_MISSED_DURATION):
            check_heartbeat_1 = False
            rospy.loginfo("Communication signal with uav1 lost")
        else:
            check_heartbeat_1 = True
        pub_1.publish(check_heartbeat_1)

        # Check UAV3
        if last_msg_time_3 and (current_time - last_msg_time_3 > MAX_MISSED_DURATION):
            check_heartbeat_3 = False
            rospy.loginfo("Communication signal with uav3 lost")
        else:
            check_heartbeat_3 = True
        pub_3.publish(check_heartbeat_3)

        rate.sleep()


if __name__ == '__main__':
    rospy.init_node('signal_check', anonymous=True)
    
    #status_check_uav0 = threading.Thread(target=check_uav0_alive)
    #status_check_uav1 = threading.Thread(target=check_uav1_alive)
    #status_check_uav3 = threading.Thread(target=check_uav3_alive)
    #status_check_uav0.start()
    #status_check_uav1.start()
    #status_check_uav3.start()

    pub_0 = rospy.Publisher('/signal_check0-2', Bool, queue_size=10)
    pub_1 = rospy.Publisher('/signal_check1-2', Bool, queue_size=10)
    pub_3 = rospy.Publisher('/signal_check2-3', Bool, queue_size=10)

    rospy.Subscriber('/uav0/relay/setpoint_position/local', PoseStamped, uav0_time_check)
    rospy.Subscriber('/uav1/mavros/setpoint_position/local', PoseStamped, uav1_time_check)
    rospy.Subscriber('/uav3/mavros/setpoint_position/local', PoseStamped, uav3_time_check)

    check_uav_alive()
    #rate = rospy.Rate(100)

    #rospy.Timer(rospy.Duration(0.01), check_uav0_alive)  # 100Hz
    #rospy.Timer(rospy.Duration(0.01), check_uav1_alive)  # 100Hz
    #rospy.Timer(rospy.Duration(0.01), check_uav3_alive)  # 100Hz

    rospy.spin()