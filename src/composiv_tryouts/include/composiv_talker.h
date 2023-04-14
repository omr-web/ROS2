#ifndef TALKER
#define TALKER 

#include <chrono>
#include <functional>
#include <memory>
#include <string>

#include "rclcpp/rclcpp.hpp"
#include "std_msgs/msg/string.hpp"

using namespace std::chrono_literals;

class composivTalker : public rclcpp::Node
{
    public:
    composivTalker() : Node("composivTalker") {

      publisher_ = this->create_publisher<std_msgs::msg::String>("topic", 10);
      timer_ = this->create_wall_timer(
      500ms, std::bind(&composivTalker::timerCallback, this));
    }
    
    private:
        void timerCallback();
        
        rclcpp::TimerBase::SharedPtr timer_;
        rclcpp::Publisher<std_msgs::msg::String>::SharedPtr publisher_;
        size_t count_;
};



#endif 