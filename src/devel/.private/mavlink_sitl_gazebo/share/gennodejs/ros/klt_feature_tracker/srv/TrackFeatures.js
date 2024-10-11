// Auto-generated. Do not edit!

// (in-package klt_feature_tracker.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let sensor_msgs = _finder('sensor_msgs');

//-----------------------------------------------------------


//-----------------------------------------------------------

class TrackFeaturesRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.left_image = null;
      this.right_image = null;
      this.update_vect = null;
      this.stereo = null;
    }
    else {
      if (initObj.hasOwnProperty('left_image')) {
        this.left_image = initObj.left_image
      }
      else {
        this.left_image = new sensor_msgs.msg.Image();
      }
      if (initObj.hasOwnProperty('right_image')) {
        this.right_image = initObj.right_image
      }
      else {
        this.right_image = new sensor_msgs.msg.Image();
      }
      if (initObj.hasOwnProperty('update_vect')) {
        this.update_vect = initObj.update_vect
      }
      else {
        this.update_vect = [];
      }
      if (initObj.hasOwnProperty('stereo')) {
        this.stereo = initObj.stereo
      }
      else {
        this.stereo = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type TrackFeaturesRequest
    // Serialize message field [left_image]
    bufferOffset = sensor_msgs.msg.Image.serialize(obj.left_image, buffer, bufferOffset);
    // Serialize message field [right_image]
    bufferOffset = sensor_msgs.msg.Image.serialize(obj.right_image, buffer, bufferOffset);
    // Serialize message field [update_vect]
    bufferOffset = _arraySerializer.int32(obj.update_vect, buffer, bufferOffset, null);
    // Serialize message field [stereo]
    bufferOffset = _serializer.int32(obj.stereo, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type TrackFeaturesRequest
    let len;
    let data = new TrackFeaturesRequest(null);
    // Deserialize message field [left_image]
    data.left_image = sensor_msgs.msg.Image.deserialize(buffer, bufferOffset);
    // Deserialize message field [right_image]
    data.right_image = sensor_msgs.msg.Image.deserialize(buffer, bufferOffset);
    // Deserialize message field [update_vect]
    data.update_vect = _arrayDeserializer.int32(buffer, bufferOffset, null)
    // Deserialize message field [stereo]
    data.stereo = _deserializer.int32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += sensor_msgs.msg.Image.getMessageSize(object.left_image);
    length += sensor_msgs.msg.Image.getMessageSize(object.right_image);
    length += 4 * object.update_vect.length;
    return length + 8;
  }

  static datatype() {
    // Returns string type for a service object
    return 'klt_feature_tracker/TrackFeaturesRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'e6ba594a5fc048bf5a4498bc48e6665e';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    sensor_msgs/Image left_image
    sensor_msgs/Image right_image
    int32[] update_vect
    int32 stereo
    
    ================================================================================
    MSG: sensor_msgs/Image
    # This message contains an uncompressed image
    # (0, 0) is at top-left corner of image
    #
    
    Header header        # Header timestamp should be acquisition time of image
                         # Header frame_id should be optical frame of camera
                         # origin of frame should be optical center of camera
                         # +x should point to the right in the image
                         # +y should point down in the image
                         # +z should point into to plane of the image
                         # If the frame_id here and the frame_id of the CameraInfo
                         # message associated with the image conflict
                         # the behavior is undefined
    
    uint32 height         # image height, that is, number of rows
    uint32 width          # image width, that is, number of columns
    
    # The legal values for encoding are in file src/image_encodings.cpp
    # If you want to standardize a new string format, join
    # ros-users@lists.sourceforge.net and send an email proposing a new encoding.
    
    string encoding       # Encoding of pixels -- channel meaning, ordering, size
                          # taken from the list of strings in include/sensor_msgs/image_encodings.h
    
    uint8 is_bigendian    # is this data bigendian?
    uint32 step           # Full row length in bytes
    uint8[] data          # actual matrix data, size is (step * rows)
    
    ================================================================================
    MSG: std_msgs/Header
    # Standard metadata for higher-level stamped data types.
    # This is generally used to communicate timestamped data 
    # in a particular coordinate frame.
    # 
    # sequence ID: consecutively increasing ID 
    uint32 seq
    #Two-integer timestamp that is expressed as:
    # * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
    # * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
    # time-handling sugar is provided by the client library
    time stamp
    #Frame this data is associated with
    string frame_id
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new TrackFeaturesRequest(null);
    if (msg.left_image !== undefined) {
      resolved.left_image = sensor_msgs.msg.Image.Resolve(msg.left_image)
    }
    else {
      resolved.left_image = new sensor_msgs.msg.Image()
    }

    if (msg.right_image !== undefined) {
      resolved.right_image = sensor_msgs.msg.Image.Resolve(msg.right_image)
    }
    else {
      resolved.right_image = new sensor_msgs.msg.Image()
    }

    if (msg.update_vect !== undefined) {
      resolved.update_vect = msg.update_vect;
    }
    else {
      resolved.update_vect = []
    }

    if (msg.stereo !== undefined) {
      resolved.stereo = msg.stereo;
    }
    else {
      resolved.stereo = 0
    }

    return resolved;
    }
};

class TrackFeaturesResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.update_vect = null;
      this.features_l = null;
      this.features_r = null;
    }
    else {
      if (initObj.hasOwnProperty('update_vect')) {
        this.update_vect = initObj.update_vect
      }
      else {
        this.update_vect = [];
      }
      if (initObj.hasOwnProperty('features_l')) {
        this.features_l = initObj.features_l
      }
      else {
        this.features_l = [];
      }
      if (initObj.hasOwnProperty('features_r')) {
        this.features_r = initObj.features_r
      }
      else {
        this.features_r = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type TrackFeaturesResponse
    // Serialize message field [update_vect]
    bufferOffset = _arraySerializer.int32(obj.update_vect, buffer, bufferOffset, null);
    // Serialize message field [features_l]
    bufferOffset = _arraySerializer.float64(obj.features_l, buffer, bufferOffset, null);
    // Serialize message field [features_r]
    bufferOffset = _arraySerializer.float64(obj.features_r, buffer, bufferOffset, null);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type TrackFeaturesResponse
    let len;
    let data = new TrackFeaturesResponse(null);
    // Deserialize message field [update_vect]
    data.update_vect = _arrayDeserializer.int32(buffer, bufferOffset, null)
    // Deserialize message field [features_l]
    data.features_l = _arrayDeserializer.float64(buffer, bufferOffset, null)
    // Deserialize message field [features_r]
    data.features_r = _arrayDeserializer.float64(buffer, bufferOffset, null)
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += 4 * object.update_vect.length;
    length += 8 * object.features_l.length;
    length += 8 * object.features_r.length;
    return length + 12;
  }

  static datatype() {
    // Returns string type for a service object
    return 'klt_feature_tracker/TrackFeaturesResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'b2c0cf55e2ad9e563c111a72cc01130a';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int32[] update_vect
    float64[] features_l
    float64[] features_r
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new TrackFeaturesResponse(null);
    if (msg.update_vect !== undefined) {
      resolved.update_vect = msg.update_vect;
    }
    else {
      resolved.update_vect = []
    }

    if (msg.features_l !== undefined) {
      resolved.features_l = msg.features_l;
    }
    else {
      resolved.features_l = []
    }

    if (msg.features_r !== undefined) {
      resolved.features_r = msg.features_r;
    }
    else {
      resolved.features_r = []
    }

    return resolved;
    }
};

module.exports = {
  Request: TrackFeaturesRequest,
  Response: TrackFeaturesResponse,
  md5sum() { return 'd55c173a9d514c7ff49f3816cbda7316'; },
  datatype() { return 'klt_feature_tracker/TrackFeatures'; }
};
