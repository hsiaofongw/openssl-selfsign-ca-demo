#!/bin/sh

openssl x509 \
-req \
-in site.csr \
-CA intermediate.crt.pem \
-CAkey intermediate.key.pem \
-CAcreateserial \
-out site.crt.pem 