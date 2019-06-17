#! /bin/bash

echo ">>>> 开始配置文件夹"

if [! -d "/home/docker" ]; then
    mkdir /home/docker
fi

if [! -d "/home/docker/mysql/data" ]; then
    mkdir /home/docker/mysql/data
fi

if [! -d "/home/docker/web" ]; then
    mkdir /home/docker/web
fi

if [! -d "/home/docker/php" ]; then
    mkdir /home/docker/php
fi

if [! -d "/home/docker/nginx" ]; then
    mkdir /home/docker/nginx
fi

if [! -d "/home/docker/nginx/conf.d" ]; then
    mkdir /home/docker/nginx/conf.d
fi

echo ">>>> 开始配置文件是否存在"

if [! -f "/home/docker/php/php.ini" ]; then
    cp ./php/php.in /home/docker/php/
fi

if [! -f "/home/docker/php/www.conf"]; then
    cp ./php/www.conf /home/docker/php/
fi

if [! -f "/home/docker/nginx/nginx.conf"]; then
    cp ./nginx/nginx.conf /home/docker/nginx/
fi

if [! -f "/home/docker/nginx/conf.d/server.conf"]; then
    cp ./ngin/server.conf /home/docker/nginx/conf.d/
fi

echo ">>>>> 开始配置挂载权限 (关闭 selinux）"

setenforce 0

echo ">>>>> 配置完成，请运 docker-compose up 启动"




