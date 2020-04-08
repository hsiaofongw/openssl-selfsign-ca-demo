#!/bin/sh

./verify.sh

cat site.crt.pem intermediate.crt.pem root.crt.pem > fullchain.pem
