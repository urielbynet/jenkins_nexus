#!/bin/bash

curl https://get.docker.com/ > dockerinstall 
chmod 777 dockerinstall 
./dockerinstall
chmod 777 /var/run/docker.sock
usermod -aG docker jenkins
