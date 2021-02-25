#!/bin/sh 

pkg up
mkdir -p $PREFIX/etc/apt/sources.list.d/
echo "deb https://its-pointless.github.io/files/24 termux extras" > "$PREFIX/etc/apt/sources.list.d/"
echo "deb https://its-pointless.github.io/files/24 termux extras" > "$PREFIX/etc/apt/sources.list.d/pointless.list"

curl "https://its-pointless.github.io/pointless.gpg" | apt-key add
pkg up
pkg install r-base  make clang gcc-9 libgfortran openssl libcurl libicu libxml2 zlib-dev ndk-sysroot pkg-config cmake git libcairo libtiff pango 
             
apt-add-repository

# copy gfortran
cd /data/data/com.termux/files/usr/bin
cp gfortran-9 gfortran

# install LightGBM
# git clone --recursive https://github.com/microsoft/LightGBM
# cd LightGBM/
# mkdir build
# cd build
# cmake ..
# make -j4
# cd ..
# Rscript build_r.R 
