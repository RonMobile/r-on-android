#!/bin/sh 

# pkg up
# mkdir -p $PREFIX/etc/apt/sources.list.d/
# echo "deb https://its-pointless.github.io/files/24 termux extras" > "$PREFIX/etc/apt/sources.list.d/"
# echo "deb https://its-pointless.github.io/files/24 termux extras" > "$PREFIX/etc/apt/sources.list.d/pointless.list"

# curl "https://its-pointless.github.io/pointless.gpg" | apt-key add
# pkg up

curl -LO https://its-pointless.github.io/setup-pointless-repo.sh
bash setup-pointless-repo.sh
pkg install r-base make clang gcc-9  openssl libcurl libicu libxml2 ndk-sysroot pkg-config cmake git libcairo libtiff pango zlib #libgfortran
apt-add-repository

# copy gfortran
cd /data/data/com.termux/files/usr/bin
cp gfortran-9 gfortran

setupclang-gfort-9

# install LightGBM
# git clone --recursive https://github.com/microsoft/LightGBM
# cd LightGBM/
# mkdir build
# cd build
# cmake ..
# make -j4
# cd ..
# Rscript build_r.R 
