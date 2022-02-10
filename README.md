# Jetson Mate KSZ9896 ethernet switch driver

- This repository aims to solve the issues caused by the ethernet switch built in Jetson Mate (v1.0)

## Issue
- I had network issues when I run ROS nodes on Jetson Mate (Nano and 3 NXs)
  - The network stopped in 1-5 minutes from ROS launch
- Network works well with apt, ssh, web browsing, docker pull, iperf (network test), and etc

## Details
- Jetson Mate connects all 4 jetson boards with a network switch (KSZ9896) chip
- The KSZ9896 chip is not configured by default on Jetson Mate but the chip has some bugs which should be avoided by workaround configurations

## Install
- KSZ9896's I2C port is connected to the master board, so this driver should be configured on the master jetson board
- run `install.sh` script
  - the code assuems that KSZ9896 is connected i2c-0
  - the code assumes the address of the i2c-0 is 0x5f

## license: GPL v2
- driver code is obtained here
  - https://forums.developer.nvidia.com/t/replace-phy-on-microchip-switch-ksz9896/129587/5
