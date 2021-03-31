#!/bin/sh 

curl -LO https://its-pointless.github.io/setup-pointless-repo.sh
bash setup-pointless-repo.sh
pkg install r-base make clang gcc-9  openssl libcurl libicu libxml2 ndk-sysroot pkg-config cmake git libcairo libtiff pango zlib #libgfortran

# copy gfortran
cd /data/data/com.termux/files/usr/bin
cp gfortran-9 gfortran

setupclang-gfort-9

Rscript -e "install.packages('remotes'); remotes::install_github(c('RonMobile/fs', 'RonMobile/later', 'RonMobile/httpuv'))"

# install LightGBM
# git clone --recursive https://github.com/microsoft/LightGBM
# cd LightGBM/
# mkdir build
# cd build
# cmake ..
# make -j4
# cd ..
# Rscript build_r.R 
