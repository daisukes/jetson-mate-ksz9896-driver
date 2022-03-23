#!/bin/bash

pushd driver
make
sudo make install
popd
sudo cp ksz9897 /etc/init.d/
sudo update-rc.d ksz9897 defaults
