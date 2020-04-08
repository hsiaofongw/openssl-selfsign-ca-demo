#!/bin/sh

openssl req \
-new -x509 \
-key root.key.pem \
-out root.crt.pem \
-config rootca.cnf 
