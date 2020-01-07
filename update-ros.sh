#!/bin/bash

# get number of arguments, if nothing is provided, default directory name is 'ros_catkin_ws'.
NUM=$#
if [ "$NUM" -ne 1 ]; then
    echo 'No directory provided, will trying to cd into ros_catkin_ws'
    DIR_NAME=ros_catkin_ws
else

    DIR_NAME=$1
fi
cd DIR_NAME 

mv -i melodic-desktop-full.rosinstall melodic-desktop-full.rosinstall.old

rosinstall_generator desktop_full --rosdistro melodic --deps --tar > melodic-desktop-full.rosinstall

wstool merge -t src melodic-desktop-full.rosinstall

wstool update -t src

./src/catkin/bin/catkin_make_isolated --install

source ~/$DIR_NAME/install_isolated/setup.bash

# no need to make adjustment in bashrc file
