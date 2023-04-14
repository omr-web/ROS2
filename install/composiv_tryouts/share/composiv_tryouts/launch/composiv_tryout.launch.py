import os
from ament_index_python.packages import get_package_share_directory
from launch import LaunchDescription
from launch.actions import DeclareLaunchArgument,ExecuteProcess
from launch.actions import IncludeLaunchDescription
from launch.conditions import IfCondition
from launch.launch_description_sources import PythonLaunchDescriptionSource
from launch.substitutions import LaunchConfiguration
from launch_ros.actions import Node
from ament_index_python.packages import get_package_prefix


def generate_launch_description():
    
    package_directory = get_package_share_directory('composiv_tryouts')


    talker_node = Node(
    package='composiv_tryouts',
    executable='composiv_talker',
    output='screen'
    )

    listener_node = Node(
    package='composiv_tryouts',
    executable='composiv_listener',
    output='screen'
    )

    return LaunchDescription([
        talker_node,
        listener_node
    ])