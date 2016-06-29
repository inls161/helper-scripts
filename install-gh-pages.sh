#!/bin/bash

#RUN WITH SUDO

# update packages
apt-get update -y

apt-get -y -o Dpkg::Options::="--force-confdef" -o Dpkg::Options::="--force-confold" dist-upgrade

# Install build tools

apt-get install -y build-essentials

# install ruby

apt-get install -y ruby2.0 ruby2.0-dev

# set gem to link to gem2.0

ln -sfn /usr/bin/ruby2.0 /usr/bin/ruby
ln -sfn /usr/bin/gem2.0 /usr/bin/gem 
ln -sfn /usr/bin/rake2.0 /usr/bin/rake 

# Fix configuration

echo 

# update gems

gem2.0 update --no-document

# install github-pages

gem2.0 install github-pages --no-document 
