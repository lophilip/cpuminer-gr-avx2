#!/bin/bash

echo "set windows local variables"
echo "to use 'source windows_variables'"
set +x


export LOCAL_LIB="$HOME/usr/lib"

export LDFLAGS="-L$LOCAL_LIB/curl/lib/.libs -L$LOCAL_LIB/gmp/.libs -L$LOCAL_LIB/openssl"

export CONFIGURE_ARGS="--with-curl=$LOCAL_LIB/curl --with-crypto=$LOCAL_LIB/openssl --host=x86_64-w64-mingw32"

#Adjust for gcc version:

export GCC_MINGW_LIB="/usr/lib/gcc/x86_64-w64-mingw32/9.3-win32"
