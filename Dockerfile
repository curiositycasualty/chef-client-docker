# Creating a Docker container containing Chef Client 12.x
#
# https://www.chef.io/download-chef-client/
#
# Start from Ubuntu 14.04.2 Docker images
FROM ubuntu:16.04

MAINTAINER Ringo De Smet <ringo@releasequeue.com>

RUN apt-get -yqq update
RUN apt-get -yqq install curl lsb-release sudo
RUN curl -v -L http://www.chef.io/chef/install.sh | sudo bash -s -- -v 12.19.37 -c current
RUN apt-get -yqq clean

# Make Chef available as a volume
VOLUME /opt/chef
