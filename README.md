# ROS Install Ubuntu 19.10

A quick script to install ROS Melodic on Ubuntu 19.10. ROS doesn't actually support Ubuntu 19.10,
so it's a bit of a hack to install ROS on this distribution. If you can, install Ubuntu 18.04 or 20.04.

Unfortunately, it takes some time
to be installed (has to be installed from source), so be aware of that.

## Installation

```sh
chmod <permissions you want> install-ros.sh
./install-ros.sh <installation-directory>
```
- The above command will install ROS Melodic (desktop full) into `installation-directory`, which can be reached at 
`cd ~/installation-directory`.


## Updates

- If there are updates to ROS Melodic:
```sh
chmod <permissions you want> update-ros.sh
./update-ros.sh <installation-directory>
```
- The above command will update ROS from `installation-directory`,
where Melodic was originally installed.

## Warning

At this moment, if you are using Ubuntu 19.10, you will
not be able to run commands such as `sudo apt install ros-melodic-mavros`,
you will have to build all ROS packages from source. In fact, there are a lot
of packages that you'll have to build from source.
