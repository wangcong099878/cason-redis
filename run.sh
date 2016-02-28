#!/bin/sh

DIR=$(cd "$(dirname "$0")"; pwd) 
source $DIR/config.sh
## start $BASE_NAME container
docker run --name=$BASE_NAME -d \
	-p 6379:6379 \
        $IMAGE_ID
