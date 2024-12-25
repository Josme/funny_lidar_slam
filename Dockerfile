FROM osrf/ros:noetic-desktop-full

ARG DEBIAN_FRONTEND=noninteractive

ENV CATKIN_WS=/root/funny_lidar_slam_ws

RUN apt-get update -y

RUN apt-get install -y libgoogle-glog-dev \
    libgflags-dev \
    libgtest-dev \
    ros-noetic-libg2o



RUN mkdir -p ${CATKIN_WS}/src/funny_lidar_slam
COPY . ${CATKIN_WS}/src/funny_lidar_slam

WORKDIR $CATKIN_WS

RUN rm -rf /var/lib/apt/lists/*
