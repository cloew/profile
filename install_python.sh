#! /bin/bash

version=$1

pythonDir="Python-$version"
pythonTar="Python-$version.tgz"
installDir="tmp-py-install"

mkdir $installDir
cd $installDir

sudo apt-get install libreadline-dev
wget https://www.python.org/ftp/python/$version/$pythonTar
tar -xvf $pythonTar

cd $pythonDir
./configure
make
sudo make install
cd ../

cd ../
sudo rm -rf $installDir
