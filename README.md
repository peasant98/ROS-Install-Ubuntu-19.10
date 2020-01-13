# ROS-Install-Ubuntu-19.10

A quick script to install ROS Melodic on Ubuntu 19.10. Unfortunately, it takes some time
to be installed (has to be installed from source), so be aware of that.

## Installation

- `chmod <permissions you want> install-ros.sh`
- `./install-ros.sh <installation-directory>`
- The above command will install ROS Melodic (desktop full) into `installation-directory`, which can be reached at 
`cd ~/installation-directory`.


## Updates

- If there are updates to ROS Melodic:
- `chmod <permissions you want> update-ros.sh`
- `./update-ros.sh <installation-directory>`
- The above command will update ROs from `installation-directory`,
where Melodic was originally installed.

## Warning

At this moment, if you are using Ubuntu 19.10, you will
not be able to run commands such as `sudo apt-get install ros-melodic-mavros`,
you will have to build all ros packages from source (at the 
time that this is being written).
