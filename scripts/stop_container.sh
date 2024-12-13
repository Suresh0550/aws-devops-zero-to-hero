#!/bin/bash
#!/bin/bash

# Get all container IDs (including stopped ones)
containerID=$(docker ps -qa)

if [ -n "$containerID" ]; then
    # Remove all containers and associated volumes
    docker rm -v -f $containerID
    echo "All containers and their associated volumes have been removed."
else
    echo "No containers to remove."
fi


