cmake_minimum_required(VERSION 3.8)
project(composiv_tryouts)

if(CMAKE_COMPILER_IS_GNUCXX OR CMAKE_CXX_COMPILER_ID MATCHES "Clang")
  add_compile_options(-Wall -Wextra -Wpedantic)
endif()

include_directories( 
                      include   
                    )
# find dependencies
find_package(ament_cmake REQUIRED)
find_package(rclcpp REQUIRED)
find_package(std_msgs REQUIRED)

add_executable(composiv_talker src/composiv_talker.cpp)
ament_target_dependencies(composiv_talker rclcpp std_msgs)

add_executable(composiv_listener src/composiv_listener.cpp)
ament_target_dependencies(composiv_listener rclcpp std_msgs)


install(TARGETS
  composiv_talker
  composiv_listener
  DESTINATION lib/${PROJECT_NAME})

install(
    DIRECTORY launch   
    DESTINATION share/${PROJECT_NAME}) 

ament_package()
