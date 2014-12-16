#!/bin/bash
for HTTPPORT in $(seq 8080 8442); do echo -ne "\035" | telnet 127.0.0.1 $HTTPPORT > /dev/null 2>&1; [ $? -eq 1 ] && break; done
for SSLPORT in $(seq 8443 10000); do echo -ne "\035" | telnet 127.0.0.1 $SSLPORT > /dev/null 2>&1; [ $? -eq 1 ] && break; done
DIR=$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )
CONTAINERID=$(docker run -p $HTTPPORT:80 -p $SSLPORT:443 -v $DIR:/var/www/ -d eboraas/apache)
echo "running at http://localhost:$HTTPPORT and https://localhost:$SSLPORT"
NAME=$(docker inspect --format='{{.Name}}' $CONTAINERID)
NAME=${NAME:1}
echo "to stop this instance run 'sudo docker stop $NAME'"
