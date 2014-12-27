#!/bin/bash
set -e
set -o pipefail

#edit this path to you own settings
#this directory is a place where you extracted toolchain with  make-standalone-toolchain.sh
export NDK_PATH=/home/user/ndk/

export PATH=$PATH:$NDK_PATH./bin
#build obj file
arm-linux-androideabi-g++ -c -fPIC -I. -I/path_to_breakpad_sources/src \
-I/path_to_breakpad_sources/src/common/android/include \
-I/path_to_breakpad_sources/src/common/android/testing/include \
-L/path_to_breakpad_sources/src/client/linux/ \
c_wrapper_api.cpp -lbreakpad_client -llog

#build static lib
arm-linux-androideabi-ar rcs libbpwrapper.a c_wrapper_api.o

#build sample
arm-linux-androideabi-gcc  -g -I. \
-I/path_to_breakpad_sources/src \
-I/path_to_breakpad_sources/src/common/android/include \
-I/path_to_breakpad_sources/src/common/android/testing/include \
-L. \
-L/path_to_breakpad_sources/src/client/linux/ \
-o test test.c -lbpwrapper -lbreakpad_client -lstlport_shared -llog

#note: if you build toolchain with stl=stlport, you need -lstlport_shared; otherwise, if you use libc++, use both -lstdc++ -latomic