#!/bin/bash
DIR=$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )
CONTAINERID=$(docker run -P -v $DIR:/var/www/html -d nimmis/apache)
echo "running at http://localhost:$HTTPPORT and https://localhost:$SSLPORT"
NAME=$(docker inspect --format='{{.Name}}' $CONTAINERID)
NAME=${NAME:1}
echo "to stop this instance run 'sudo docker stop $NAME'"
