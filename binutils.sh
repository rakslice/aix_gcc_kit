#!/bin/bash
set -e -x
mkdir build-binutils
cd build-binutils
#../binutils-2.7/configure --target=$TARGET --prefix="$PREFIX" --with-sysroot --disable-nls --disable-werror --host="i486-box-linux"
#../binutils-2.7/configure --target=$TARGET --prefix="$PREFIX" --with-sysroot --disable-nls --disable-werror 
../binutils-2.9.1/configure --target=$TARGET --prefix="$PREFIX" --with-sysroot --disable-nls --disable-werror --host="$HOST"
make $@
make install 

