# Jetson Mate KSZ9896 ethernet switch driver

- This repository aims to solve issues caused by the ethernet switch built in Jetson Mate (v1.0)
- Jetson Mate connects all 4 jetson boards with a KSZ9896 chip so that each jetson board can communicate with others or externally
- KSZ9896's I2C port is connected to the master board
- KSZ9896 is not configured at all
- This driver should be configured on the master jetson board

## install
- run `install.sh` script
  - the code assuems that KSZ9896 is connected i2c-0
  - the code assumes the address of the i2c-0 is 0x5f

## license: GPL v2
- driver code is obtained here
  - https://forums.developer.nvidia.com/t/replace-phy-on-microchip-switch-ksz9896/129587/5
