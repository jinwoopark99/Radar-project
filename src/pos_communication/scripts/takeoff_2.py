#!/usr/bin/env python3
import rospy
from mavros_msgs.srv import CommandTOL, CommandBool, SetMode
from mavros_msgs.msg import State
from geometry_msgs.msg import PoseStamped
from std_msgs.msg import Bool

current_state = State()
local_pos_pub = None
mission_start = False
mission_land = False

def state_callback(state_data):
    global current_state
    current_state = state_data

def mission_start_callback(data):
    global mission_start
    mission_start = data.data

def mission_land_callback(data):
    global mission_land
    mission_land = data.data

def set_arm(arm):
    rospy.wait_for_service('/uav1/mavros/cmd/arming')
    try:
        arming_service = rospy.ServiceProxy('/uav1/mavros/cmd/arming', CommandBool)
        response = arming_service(arm)
        if response.success:
            rospy.loginfo("Arming successful")
        else:
            rospy.logerr("Arming failed")
    except rospy.ServiceException as e:
        rospy.logerr("Arming service call failed: %s" % e)

def set_offboard_mode():
    rospy.wait_for_service('/uav1/mavros/set_mode')
    try:
        set_mode_service = rospy.ServiceProxy('/uav1/mavros/set_mode', SetMode)
        response = set_mode_service(custom_mode='OFFBOARD')
        if response.mode_sent:
            rospy.loginfo("OFFBOARD mode set")
        else:
            rospy.logerr("Failed to set OFFBOARD mode")
    except rospy.ServiceException as e:
        rospy.logerr("Set mode service call failed: %s" % e)

def set_land_mode():
    rospy.wait_for_service('/uav1/mavros/set_mode')
    try:
        set_mode_service = rospy.ServiceProxy('/uav1/mavros/set_mode', SetMode)
        response = set_mode_service(custom_mode='AUTO.LAND')
        if response.mode_sent:
            rospy.loginfo("LAND mode set")
        else:
            rospy.logerr("Failed to set LAND mode")
    except rospy.ServiceException as e:
        rospy.logerr("Set mode service call failed: %s" %e)

def set_position(x, y, z):
    pose = PoseStamped()
    pose.pose.position.x = x
    pose.pose.position.y = y
    pose.pose.position.z = z
    local_pos_pub.publish(pose)

if __name__ == '__main__':
    rospy.init_node('takeoff_node', anonymous=True)

    mission_start = False
    mission_land = False

    # Publisher to local position
    local_pos_pub = rospy.Publisher('/uav1/mavros/setpoint_position/local', PoseStamped, queue_size=100)

    # Subscriber to state topic
    rospy.Subscriber('/uav1/mavros/state', State, state_callback)
    rospy.Subscriber('/mission_start_1', Bool, mission_start_callback)
    rospy.Subscriber('/mission_land', Bool, mission_land_callback)


    # Ensure connection
    while not rospy.is_shutdown() and not current_state.connected:
        rospy.loginfo("Waiting for FCU connection...")
        rospy.sleep(1)

    #Set initial position
    for _ in range(100):
        set_position(0, 0, 2)
        rospy.sleep(0.1)

    # Set mode to OFFBOARD
    set_offboard_mode()

    # Arm the vehicle
    set_arm(True)
    rospy.sleep(2)  # wait for arming

    rate = rospy.Rate(100)  # 20Hz

    while not rospy.is_shutdown() and not mission_start:
        # Continuously send position to maintain OFFBOARD mode
        set_position(0, 0, 3)  # Maintain position at 10 meters altitude
        rate.sleep()

    rospy.loginfo("Mission start received. Stopping setpoint publishing.")

    while not rospy.is_shutdown() and not mission_land:
        rate.sleep()

    rospy.loginfo("Mission land received. Initiating landing sequence.")

    set_land_mode()
    rospy.sleep(20)
    
    set_arm(False)
    rospy.loginfo("Landing complete and vehicle disarmed")

    rospy.spin()
