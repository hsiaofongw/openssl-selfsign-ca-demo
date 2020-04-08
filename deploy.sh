#!/bin/sh

WWW_ROOT=/var/www/
DOMAIN=yoursite.com
WEB_ROOT=$WWW_ROOT$DOMAIN

NGINX_CONF_ROOT=/usr/local/etc/nginx/
NGINX_VHOST_DIR=servers/
NGINX_CERTS_REL_DIR=certs.d/$DOMAIN/
NGINX_VHOST_CONF_DIR=$NGINX_CONF_ROOT$NGINX_VHOST_DIR
NGINX_CERTS_DIR=$NGINX_CONF_ROOT$NGINX_CERTS_REL_DIR

./makefullchain.sh

sudo mkdir -p $WEB_ROOT
sudo mkdir -p $NGINX_CERTS_DIR
sudo mkdir -p $NGINX_VHOST_CONF_DIR

sudo cp fullchain.pem $NGINX_CERTS_DIR
sudo cp site.key.pem $NGINX_CERTS_DIR

sudo rsync -aPuvz site-public/* $WEB_ROOT

sudo cp ./yoursite.com.conf $NGINX_VHOST_CONF_DIR
sudo nginx -s reload