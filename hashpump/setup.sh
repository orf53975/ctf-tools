#!/bin/bash

git clone https://github.com/bwall/HashPump.git
cd HashPump
make -j $(nproc)
cd ..

mkdir bin
cd bin
ln -s ../HashPump/hashpump .
cd ..
