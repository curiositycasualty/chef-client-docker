FROM ubuntu:16.04

RUN apt-get -yqq update && \
    apt-get -yqq install \
      wget \
      lsb-release \
      sudo && \
    wget --no-verbose \
         https://packages.chef.io/files/stable/chef/12.20.3/ubuntu/16.04/chef_12.20.3-1_amd64.deb && \
    sudo dpkg -i ./chef_* && \
    apt-get -yqq clean

VOLUME /opt/chef
