//
// Created by robin on 19-7-12.
//

#include <iostream>
#include <math.h>
#include <opencv2/opencv.hpp>

#include <ros/ros.h>
#include <ros/package.h>
#include <cv_bridge/cv_bridge.h>
#include <geometry_msgs/Point.h>
#include <sensor_msgs/Image.h>
#include <sensor_msgs/image_encodings.h>

#include <tf/transform_listener.h>
#include <actionlib/client/simple_action_client.h>
#include <tf/transform_datatypes.h>

#include "my_pid.h"
#include "config.h"

#include "universal_msgs/Trash_Location.h"

#define MAP_MOVE 0
#define VISION_MOVE 1
#define EXECUTION_MOVE 2
#define STOPPED 3

using namespace cv;
using namespace std;

std::string pkg_loc = ros::package::getPath("map_core");

double _P;
double _I;
double _D;
double y_min;

class map_core{
public:
    class map{

    };

    //ROS
    ros::NodeHandle nh;
    ros::ServiceServer trash_detect;

    //car
    int car_state;
    bool excution_state;
    double car_rot_Angle;

    //map
    map map;

    //image
    double trash_x,trash_y;

    //function
    map_core();
    ~map_core();
    void map_core_loop();
    bool trash_pos_cb(universal_msgs::Trash_LocationRequest &req, universal_msgs::Trash_LocationResponse &res);
};

map_core::map_core():trash_x(0.0),trash_y(0.0){
    trash_detect = nh.advertiseService("trashpos", &map_core::trash_pos_cb, this);
}

map_core::~map_core() {}

bool map_core::trash_pos_cb(universal_msgs::Trash_LocationRequest &req, universal_msgs::Trash_LocationResponse &res){
    if (trash_x == 0.0 && trash_y == 0.0) car_state = VISION_MOVE;
    this->trash_x = req.x;
    this->trash_y = req.y;
    res.success = 1;
    return 0;
}

void map_core::map_core_loop(){
    if(car_state == STOPPED){  ////阻塞
        ////维护地图////

    }

    if(car_state != STOPPED){  ////通畅
        ////维护地图////

        if(car_state == VISION_MOVE){
            while(trash_x == 0.0){
                ros::Duration(0.1).sleep();
                ROS_INFO("垃圾的位置没有确定");
            }
            my_pid image_pid(_P,_I,_D,0.0,trash_x);
            while(car_state == VISION_MOVE){
                car_rot_Angle = image_pid.pid_control(0.0,trash_x);
                ////发布所需要旋转角度的前进信息

                ros::spinOnce();
                ros::Duration(0.1).sleep(); ////这里可能有点问题，PID计算速度
                if(trash_y < y_min){
                    car_state = EXECUTION_MOVE;
                    break;
                }
            }
            return;
        }

        if(car_state == EXECUTION_MOVE){
            excution_state = 1;
            while (excution_state == 1) {
                ////启动执行机构

                ////发布旋转角度为0的前进信息

                ros::spinOnce();
                ros::Duration(0.1).sleep();
            }
            trash_x = 0.0;
            trash_y = 0.0;
            car_state == MAP_MOVE;
            return;
        }

        if(car_state == MAP_MOVE){
            ////按照地图引导的走

        }
    }
}

int main(int argc, char** argv){

    Config::setParameterFile(pkg_loc+"/parameter.yml");
    _P = Config::get<double>("P");
    _I = Config::get<double>("I");
    _D = Config::get<double>("D");
    y_min = Config::get<int>("y_min");

    ros::init(argc, argv, "map_node");
    map_core map;
    while(ros::ok()){
        map.map_core_loop();
    }
}

