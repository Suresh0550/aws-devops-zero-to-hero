#!/bin/bash
set -e

# Stop the running container (if any)
containerID=$(docker ps | awk '{print $1}')
echo "container id is : $containerID"
docker rm -f $containerID


