#!/bin/sh

if [ "$API_URL" != "" ] ; then
    sed -ri "s/https:\/\/api.zswitch.net:8443\/v1/$API_URL/g" /usr/share/nginx/html/config/config.js;
    sed -ri "s/https:\/\/api.zswitch.net:8443\/v2/$API_URL/g" /usr/share/nginx/html/config/config.js;
fi


