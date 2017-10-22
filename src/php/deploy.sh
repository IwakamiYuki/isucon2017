#!/bin/bash


cd /home/isucon/isubata/repository/isucon2017

git pull origin master


cp /home/isucon/isubata/repository/isucon2017/src/php/index.php  /home/isucon/isubata/webapp/php/
cp /home/isucon/isubata/repository/isucon2017/src/php/deploy.sh  /home/isucon/isubata/webapp/php/
cp /home/isucon/isubata/repository/isucon2017/src/php/initialize.sh  /home/isucon/isubata/webapp/php/