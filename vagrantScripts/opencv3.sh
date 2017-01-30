#!/usr/bin/env bash
sudo apt-get -y install build-essential
sudo apt-get -y install cmake git libgtk2.0-dev pkg-config libavcodec-dev libavformat-dev libswscale-dev
sudo apt-get -y install python-dev python-numpy libtbb2 libtbb-dev libjpeg-dev libpng-dev libtiff-dev libjasper-dev libdc1394-22-dev
wget https://github.com/opencv/opencv/archive/3.2.0.zip -P ~/
cd ~/;
unzip 3.2.0.zip
rm 3.2.0.zip
cd ~/opencv-3.2.0;
mkdir build
cd build
cmake -D CMAKE_BUILD_TYPE=Release -D CMAKE_INSTALL_PREFIX=/usr/local ..
make -j7
sudo make install
sudo /home/vagrant/torch/install/bin/luarocks install cv
sudo apt-get -y install libprotobuf-dev protobuf-compiler
sudo /home/vagrant/torch/install/bin/luarocks install loadcaffe
