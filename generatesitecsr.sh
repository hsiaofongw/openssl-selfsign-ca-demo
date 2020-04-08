#!/bin/sh

openssl req \
-new \
-config site.cnf \
-key site.key.pem \
-out site.csr 