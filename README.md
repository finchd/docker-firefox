Firefox docker image
====================

Firefox docker image using Xpra for displaying GUI from container on the host.


Locations
---------

Source of the image is hosted on Bitbucket at
https://bitbucket.org/beli-sk/docker-firefox

If you find any problems, please post an issue at
https://bitbucket.org/beli-sk/docker-firefox/issues

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

If you would like to have a persistent profile used in the container, you can
mount a host directory into ``/profile`` inside the container by adding
a ``-v`` option to docker run, for example:

    docker run -d -v /home/user/firefox_profile:/profile beli/firefox

Simultaneously running multiple containers from the same profile directory is
not recommended, Firefox will not like it.

Similarly, you can do the same for ``/downloads`` directory inside the
container.

Both volumes should have read/write permissions for user ID 1000, under which
is used for starting firefox in the container.
