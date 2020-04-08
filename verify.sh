#!/bin/sh

./makecerts.sh

openssl verify -CAfile root.crt.pem intermediate.crt.pem
openssl verify -trusted root.crt.pem -trusted intermediate.crt.pem site.crt.pem
