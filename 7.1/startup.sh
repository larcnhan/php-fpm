#!/bin/sh
PHP_INI_DIR=/usr/local/etc
if [ ! -f /install/install.lock ]; then
    cp -R /install/* $PHP_INI_DIR/
    rm -rf /install/*
    touch /install/install.lock
fi

php-fpm

