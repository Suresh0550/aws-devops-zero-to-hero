#!/bin/bash
set -e

# Stop the running container (if any)
docker rm -v -f $(docker ps -qa)


