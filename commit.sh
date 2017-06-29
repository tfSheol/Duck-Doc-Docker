#!/bin/bash
docker ps -l --format "Commit... \tId: {{.ID}}:\t Image: {{.Image}}"
docker commit $(docker ps -l -q) $(docker ps -l --format "{{.Image}}")
echo "saved !"
docker rm $(docker ps -l -q)
echo "old container deleted !"