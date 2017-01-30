#!/usr/bin/env bash
sudo apt-get -y install git
sudo apt-get -y install build-essential
git clone https://github.com/torch/distro.git ~/torch --recursive
cd ~/torch;
sudo bash install-deps;
sudo ./install.sh <<< "yes";
source ~/.bashrc
sudo /home/vagrant/torch/install/bin/luarocks install nngraph
sudo /home/vagrant/torch/install/bin/luarocks install https://raw.githubusercontent.com/szym/display/master/display-scm-0.rockspec
