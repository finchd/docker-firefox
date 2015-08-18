FROM ubuntu:15.04
MAINTAINER Michal Belica <devel@beli.sk>
RUN apt-get update && apt-get install -y firefox xpra && apt-get clean
RUN sed -ie 's/^start-child/#start-child/' /etc/xpra/xpra.conf
RUN useradd -d /home/user -m user
EXPOSE 10000
USER user
WORKDIR /home/user
ENV HOME /home/user
CMD ["/usr/bin/xpra", "start", ":100", "--start-child=/usr/bin/firefox --no-remote", "--bind-tcp=0.0.0.0:10000", "--no-daemon", "--no-notifications", "--no-mdns", "--no-pulseaudio", "--exit-with-children"]
