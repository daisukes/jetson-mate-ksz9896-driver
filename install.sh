#!/bin/bash

pushd driver
make
sudo make install
popd

for bus in 0 1; do
  echo "checking i2c bus $bus"
  detect=$(i2cdetect -y -a $bus 0x5f 0x5f)
  if [ $(echo $detect | grep 5f | wc -l) -eq 1 ] || [ $(echo $detect | grep UU | wc -l) -eq 1 ]; then
    echo "found a chip on 0x5f"
    sed s/i2c-./i2c-$bus/ ksz9897 | sudo tee /etc/init.d/ksz9897
    sudo chmod +x /etc/init.d/ksz9897
  fi
done
sudo update-rc.d ksz9897 defaults
