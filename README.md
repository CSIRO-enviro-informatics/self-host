# HTML template and self hosting 

This is a simple template for building websites and hosting them in Docker containers. 

## Prerequistes 

- Bash 
- [Docker](https://www.docker.com/)
- sudo privileges or ability to run docker without them 

## Instructions

run `sudo ./host.sh`

## Details

Running the bash script as described starts a docker container that runs apache and shares the current directory into /var/www in the container. Apache http and https ports are exposed from the docker container and mapped to the host as reported by host.sh. The ports used are the next available ports equal to or greater than 8080 for http and 8443 https. 

You can modify the contents of the self-host index.html (or other files). Changes should be reflected in a browser pointing at the hosted apache site when it is refreshed.  

## Thanks 

The docker image used is [eboraas/apache](https://registry.hub.docker.com/u/eboraas/apache/) 

The html template uses [skeleton](http://getskeleton.com/)
 
