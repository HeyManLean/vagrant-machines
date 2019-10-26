#!/usr/bin/env bash

# host
echo 127.0.0.1 localhost | sudo tee -a /etc/hosts
echo 127.0.0.1 dev | sudo tee -a /etc/hosts

# 时区
sudo timedatectl set-timezone Asia/Shanghai
sudo locale-gen zh_CN.UTF-8

# 阿里源
cd /etc/apt/
sudo mv sources.list sources.list.bak
sudo cp /vagrant/sources.list.mirror /etc/apt/sources.list

sudo apt-get update -y
sudo apt-get upgrade -y
