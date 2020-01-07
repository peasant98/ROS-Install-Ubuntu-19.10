#!/bin/bash

# get number of arguments, if nothing is provided, default directory name is 'ros_catkin_ws'.
NUM=$#
if [ "$NUM" -ne 1 ]; then
    echo 'Incorrect number of arguments provided.'
    DIR_NAME=ros_catkin_ws
else

    DIR_NAME=$1
fi

# installs pre-req deps
sudo apt-get install python-rosdep python-rosinstall-generator python-wstool python-rosinstall build-essential

# rosdep initialization
sudo rosdep init
rosdep update

# create the workspace folder
mkdir ~/$DIR_NAME
cd ~/$DIR_NAME

# will setup work for desktop_full insallation of ros melodic
rosinstall_generator desktop_full --rosdistro melodic --deps --tar > melodic-desktop-full.rosinstall
wstool init -j8 src melodic-desktop-full.rosinstall

# resolving dependencies (this step will take a while)
rosdep install --from-paths src --ignore-src --os=ubuntu:bionic --rosdistro melodic -y

# build the catkin workspace
./src/catkin/bin/catkin_make_isolated --install -DCMAKE_BUILD_TYPE=Release

# run setup.bash in the current terminal, and also add it to the .bashrc file to make ros readily available
source ~/$DIR_NAME/install_isolated/setup.bash
sudo echo source ~/$DIR_NAME/install_isolated/setup.bash >> ~./bashrc 