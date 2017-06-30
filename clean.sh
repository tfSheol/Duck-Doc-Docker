#!/bin/sh
#############################
# By Teddy Fontaine - Sheol #
#       ----------          #
#          V1.0             #
#############################

docker rm $(docker ps -a -q)
docker rmi $(docker images | grep "^<none>" | awk "{print $3}")