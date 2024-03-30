// connecting to ROS

var ros = new ROSLIB.Ros({
    url : 'ws://localhost:9090'
});

ros.on('connection', function() {
    console.log('Connected to websocket server.');
});

ros.on('error', function(error) {
    console.log('Error connecting to websocket server: ', error);
});

ros.on('close', function() {
    console.log('Connection to websocket server closed.');
});
//motor_0
const motor_0= {

    //publisher for motor_0
    pub : new ROSLIB.Topic({
    ros : ros,
    name : '/virtual_dc_motor_node/set_cs_0',
    messageType : 'std_msgs/Int8'
    }),

    //listener for motor_0
    lis : new ROSLIB.Topic({
    ros : ros,
    name : '/virtual_dc_motor_node/get_position_0',
    messageType : 'std_msgs/UInt16'
    }),

    //variables for motor_0
    speed :0,
    angle :0
};
//motor_1
const motor_1= {

    //publisher for motor_0
    pub : new ROSLIB.Topic({
    ros : ros,
    name : '/virtual_dc_motor_node/set_cs_1',
    messageType : 'std_msgs/Int8'
    }),

    //listener for motor_0
    lis : new ROSLIB.Topic({
    ros : ros,
    name : '/virtual_dc_motor_node/get_position_1',
    messageType : 'std_msgs/UInt16'
    }),

    //variables for motor_0
    speed :0,
    angle :0
};
//motor_2
const motor_2= {

    //publisher for motor_0
    pub : new ROSLIB.Topic({
    ros : ros,
    name : '/virtual_dc_motor_node/set_cs_2',
    messageType : 'std_msgs/Int8'
    }),

    //listener for motor_0
    lis : new ROSLIB.Topic({
    ros : ros,
    name : '/virtual_dc_motor_node/get_position_2',
    messageType : 'std_msgs/UInt16'
    }),

    //variables for motor_0
    speed :0,
    angle :0
};

//accessing html objects
const mAngle_0 = document.getElementById("motorAngle_0");
const mAngle_1 = document.getElementById("motorAngle_1");
const mAngle_2 = document.getElementById("motorAngle_2");
//updates position of motors
function update_pos(){
    motor_0.lis.removeAllListeners();
    motor_0.lis.subscribe(function(message) {
    motor_0.angle = Math.ceil((message.data * 360) / 4095);
    motor_0.lis.unsubscribe();
});
motor_1.lis.removeAllListeners();
motor_1.lis.subscribe(function(message) {
motor_1.angle = Math.ceil((message.data * 360) / 4095);
motor_1.lis.unsubscribe();
});
motor_2.lis.removeAllListeners();
motor_2.lis.subscribe(function(message) {
motor_2.angle = Math.ceil((message.data * 360) / 4095);
motor_2.lis.unsubscribe();
});
//console.log(motor_0.angle +'  motor_0');
mAngle_0.textContent = motor_0.angle;
mAngle_1.textContent = motor_1.angle;
mAngle_2.textContent = motor_2.angle;
};

const timer = setInterval(update_pos, 100);