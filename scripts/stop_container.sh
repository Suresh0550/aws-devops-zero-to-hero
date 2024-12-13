#!/bin/bash
#!/bin/bash

# Get all container IDs (including stopped ones)
containerID=$(docker ps -qa)

# Check if there are any containers to remove
if [ -n "$containerID" ]; then
    # Stop and remove all containers along with their volumes
    docker stop $containerID
    docker rm -v -f $containerID
    echo "All containers and their associated volumes have been removed."
else
    echo "No containers to remove."
fi



