#!/bin/bash

cp -r ./src/irrKlang-64bit-1.6.0 /usr/local/lib
echo "/usr/local/lib/irrKlang-64bit-1.6.0/bin/linux-gcc-64/" > /etc/ld.so.conf.d/irrKlang-64bit-1.6.0.conf

ldconfig

apt install gcc
apt install g++
apt install libsdl2-dev
apt install libopengl-dev
apt install libglx-dev
apt install libglm-dev
apt install libsfml-dev
apt install libglfw3

cd ./src

make cosmo

mv ./cosmo ./../

make clean

cd ..