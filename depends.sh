#!/bin/bash

apt install build-essential cmake openjdk-11-jdk uuid-dev git

git clone https://github.com/marufabbasi/antlr4
cd antlr4/runtime/Cpp
git checkout e4c1a74c66bd5290364ea2b36c97cd724b247357
mkdir build -p
cd build
cmake -DANTLR4_INSTALL=1 ..
make
make install

cd ../../../../

git clone https://github.com/marufabbasi/Catch2.git
cd Catch2
mkdir build -p
cd build
cmake ..
make
make install
