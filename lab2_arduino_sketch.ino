#include <ros.h>
#include <std_msgs/Int16.h>

ros::NodeHandle nh;

std_msgs::Int16 str_msg;
ros::Publisher chatter("chatter",&str_msg);

void setup() {
nh.initNode();
nh.advertise(chatter);
}

void loop() {
str_msg.data = analogRead(0);
chatter.publish(&str_msg);
nh.spinOnce();

  delay(10);
}
