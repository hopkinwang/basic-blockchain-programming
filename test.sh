#!/bin/sh
OPENSSL_INCLUDE=/usr/local/opt/openssl/include/
touch $1.c
gcc -o $1.out $1.c -ansi -Wall -Wno-deprecated-declarations -I $OPENSSL_INCLUDE -pedantic -lssl -lcrypto
./$1.out
