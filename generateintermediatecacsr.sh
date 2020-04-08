#!/bin/sh

openssl req \
-new \
-config intermediateca.cnf \
-key intermediate.key.pem \
-out intermediate.csr