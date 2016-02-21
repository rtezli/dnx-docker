#!/bin/bash

# set +x

LIBUV_VERSION=1.4.2

echo -e "\e[92mDownloading and compiling libuv\e[39m" &&\
curl -#sL https://github.com/libuv/libuv/archive/v${LIBUV_VERSION}.tar.gz | tar zxf - &&\
cd libuv-${LIBUV_VERSION} &&\
sh autogen.sh &&\
./configure && make && make install && \
rm -rf /libuv-${LIBUV_VERSION} &&\
rm -rf /tmp/setup-libuv.sh
