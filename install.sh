#!/bin/sh

cd build-binutils;
make -f make;

cd ../build-gcc;
make -f make;

cd ..;
rm -rf *.tar.gz;
