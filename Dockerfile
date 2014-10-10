# Creating a Docker container containing chef-container/chef-init
#
# Start from Phusion's optimized Docker baseimage
# For more info:
# http://phusion.github.io/baseimage-docker/
#
FROM phusion/baseimage:0.9.15

MAINTAINER Ringo De Smet <ringo@automate-dev.com>

# Replicating the setup from:
# https://github.com/opscode/chef-container/blob/master/Dockerfiles/ubuntu-14.04/Dockerfile.erb
RUN apt-get -yqq update
RUN apt-get -yqq install curl lsb-release
RUN curl -L https://getchef.com/chef/install.sh | bash -s -- -v 11.16.2 -P container
