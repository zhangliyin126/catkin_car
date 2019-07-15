//
// Created by robin on 19-7-12.
//

#ifndef SRC_MY_PID_H
#define SRC_MY_PID_H


class my_pid {
private:
    double kp;//比例系数
    double ki;//积分系数
    double kd;//微分系数
    double target;//目标值
    double actual;//实际值
    double e;//误差
    double e_pre;//上一次误差
    double integral;//积分项

public:
    my_pid();
    ~my_pid(){};
    my_pid(double p,double i,double d,double target,double actual);
    double pid_control(double tar,double act);//执行PID控制
    void pid_show();//显示PID控制器的内部参数 };
};

inline my_pid::my_pid():kp(0),ki(0),kd(0),target(0),actual(0),integral(0)
{
    e = target - actual;
    e_pre = e;
}

inline my_pid::my_pid(double p,double i,double d,double target,double actual):
kp(p),ki(i),kd(d),target(target),actual(actual),integral(0)
{
    e = target - actual;
    e_pre = e;
}

inline double my_pid::pid_control(double tar,double act)
{
    double u;
    target = tar;
    actual = act;
    e = target - actual;
    integral += e;
    u = kp*e + ki*integral + kd*(e-e_pre);
    e_pre = e;
    return u;
}

inline void my_pid::pid_show(){
    using std::cout;
    using std::endl;
    cout<<"The infomation of this position PID controller is as following:"<<endl;
    cout<<"       Kp="<<kp<<endl;
    cout<<"       Ki="<<ki<<endl;
    cout<<"       Kd="<<kd<<endl;
    cout<<" integral="<<integral<<endl;
    cout<<"   target="<<target<<endl;
    cout<<"   actual="<<actual<<endl;
    cout<<"        e="<<e<<endl;
    cout<<"    e_pre="<<e_pre<<endl;
}

#endif //SRC_MY_PID_H
