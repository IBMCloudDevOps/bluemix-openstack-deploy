#!/bin/bash
CURR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
DIR="$(dirname "$CURR")"

mkdir $DIR/src
mkdir $DIR/.localpython

cd $DIR/src

# Get/Unpack python
wget https://www.python.org/ftp/python/2.7.9/Python-2.7.9.tgz
tar xfz Python-2.7.9.tgz

# Configure/install python
cd Python-2.7.9/
./configure --prefix=${DIR}/.localpython  --enable-ipv6
make
make install
