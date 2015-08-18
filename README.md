Firefox docker image
====================

Firefox docker image using Xpra for displaying GUI from container on the host.


Locations
---------

Source of the image is hosted on Bitbucket at
https://bitbucket.org/beli-sk/docker-firefox

The built image is located on Docker Hub at
https://hub.docker.com/r/beli/firefox/


Pull or build
-------------

The image is built automatically on Docker hub in repository **beli/firefox**
and can be pulled using command

    docker pull beli/firefox

or if you'd prefer to build it yourself from this repository

    docker build -t beli/firefox .


Usage example
-------------

Run the container in the background

    docker run -d beli/firefox

find out on which local port was the port 10000 from the container exposed

    docker ps -l

and use Xpra on the host to attach to container's GUI

    xpra attach tcp:localhost:PORT

(replace ``PORT`` with the port number exposed from the container)

