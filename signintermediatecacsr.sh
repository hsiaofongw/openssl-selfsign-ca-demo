#!/bin/sh

openssl x509 \
-req \
-in intermediate.csr \
-out intermediate.crt.pem \
-CA root.crt.pem \
-CAkey root.key.pem \
-CAcreateserial \
-extfile ./x509v3.cnf \
-extensions x509v3_CA