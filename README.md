# HTML template and self hosting 

This is a simple template for building websites and hosting them in Docker containers. It extends the template on the master branch of [self-host](https://github.com/CSIRO-enviro-informatics/self-host) providing sass and bourbon templates.

## Prerequistes 

- Bash 
- [Docker](https://www.docker.com/)
- sudo privileges or ability to run docker without them

## Instructions

run `sudo ./host.sh`

## Details

Running the bash script as described starts a docker container that runs apache and shares the current directory into /var/www in the container. Apache http and https ports are exposed from the docker container and mapped to the host as reported by host.sh. The ports used are the next available ports equal to or greater than 8080 for http and 8443 https. 

You can modify the contents of the self-host index.html (or other files). Changes should be reflected in a browser pointing at the hosted apache site when it is refreshed. 

Sass is watching the /var/www/stylesheets directory and therefore the current directory changes to the sass files should result in automatic regeneration of css

## Thanks 

The docker image used is built upon [eboraas/apache](https://registry.hub.docker.com/u/eboraas/apache/) 

The html template uses [bourbon](https://github.com/thoughtbot/bourbon)

## Licenses

### Bourbon

The MIT License

Copyright © 2011–2014 thoughtbot, inc.

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the “Software”), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED “AS IS”, WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.


