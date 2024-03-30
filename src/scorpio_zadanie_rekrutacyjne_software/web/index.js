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
    valve :0,
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
    valve :0,
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
    valve :0,
    angle :0
};

//html
const mAngle_0 = document.getElementById("motorAngle_0");
const mAngle_1 = document.getElementById("motorAngle_1");
const mAngle_2 = document.getElementById("motorAngle_2");
const disMot = document.getElementById("disableMotor");

//motor disable button functionality
dis_option = "on";
disMot.onclick = function(){
    if(dis_option=="on"){
        dis_option="off";
        console.log('disabled');
    }
    else{
        dis_option="on";
        console.log('enabled');
    }
}
//updates position of motors

function move_motor(motor, dir){
    let x = dir*13;
    motor.valve = x;
    motor.pub.publish(new ROSLIB.Message({
        data : x
    }))
    console.log('speed: '+x);
};

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
mAngle_0.textContent = motor_0.angle +'  stopni';
mAngle_1.textContent = motor_1.angle +'  stopni';
mAngle_2.textContent = motor_2.angle +'  stopni';
};

const timer = setInterval(update_pos, 500);

//key_pressed handler

document.addEventListener("keypress", event => {
    console.log(event);
    if(dis_option=="on"){
        switch(event.key){
            case "q":
                move_motor(motor_0, -1);
                break;
            case "e":
                move_motor(motor_0, 1);
                break;
            case "a":
                move_motor(motor_1, -1);
                break;
            case "d":
                move_motor(motor_1, 1);
                break;
            case "z":
                move_motor(motor_2, -1);
                break;
            case "c":
                move_motor(motor_2, 1);
                break;
        }
    }
    else console.log('motor functions disabled!');
    /*setTimeout(() => {
        move_motor(motor_0,0);
        move_motor(motor_1,0);
        move_motor(motor_2,0);
      }, 1000);*/
      
});



