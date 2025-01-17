#!/usr/bin/bash
export WORKING_DIR=$(pwd)
./art.sh

echo "----------Installing Dependencies for Robot----------"

sudo apt install python3.8-venv
sudo apt-get install ros-noetic-catkin python3-catkin-tools
sudo apt install python3-rosdep
rosdep install --from-paths ~/ws/src --ignore-src -r -y

sudo python3 -m venv /usr/local/lib/robot_env
sudo /usr/local/lib/robot_env/bin/pip3 install wheel firebase pyrebase
sudo /usr/local/lib/robot_env/bin/pip3 install -r ~/ws/src/interface/interface_meta/config/requirements.txt
sudo /usr/local/lib/robot_env/bin/pip3 install rospkg
