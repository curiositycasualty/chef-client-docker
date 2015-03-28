# Creating a Docker container containing Chef Client 11.x
#
# https://www.chef.io/download-chef-client/
#
# Start from Ubuntu 14.04.2 Docker images
FROM ubuntu:14.04.2

MAINTAINER Ringo De Smet <ringo@releasequeue.com>

RUN apt-get -yqq update
RUN apt-get -yqq install curl lsb-release
RUN curl -L https://www.chef.io/chef/install.sh | sudo bash -s -- -v 11.18.6-1
RUN apt-get -yqq clean

# Make Chef available as a volume
VOLUME /opt/chef
