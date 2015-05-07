#!/bin/bash -e

git clone https://code.google.com/p/firmware-mod-kit/
cd firmware-mod-kit/src
./configure
make
cd ../..

mkdir bin
for i in firmware-mod-kit/*.sh
do
	echo "$(dirname $0)/$i \"\$@\"" > bin/$(basename $i)
	chmod 755 bin/$(basename $i)
done
