#ifndef LISTENER 
#define LISTENER

#include "rclcpp/rclcpp.hpp"
#include "std_msgs/msg/string.hpp"
using std::placeholders::_1;


class composivListener : public rclcpp::Node {
    public:
        composivListener() : Node("composivListener") {
            subscription_ = this->create_subscription<std_msgs::msg::String>(
            "topic", 10, std::bind(&composivListener::topicCallback, this, _1));
        }
    private:
        void topicCallback(const std_msgs::msg::String & );
         rclcpp::Subscription<std_msgs::msg::String>::SharedPtr subscription_;
};






#endif