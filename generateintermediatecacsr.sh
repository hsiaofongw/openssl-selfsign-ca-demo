#!/bin/sh

openssl req \
-new \
-key intermediate.key.pem \
-out intermediate.csr