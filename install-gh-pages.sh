#!/bin/bash

#RUN WITH SUDO

# update packages
apt-get update

apt-get -o Dpkg::Options::="--force-confdef" -o Dpkg::Options::="--force-confold" dist-upgrade

# install ruby

apt-get install ruby2.0 ruby2.0-dev

# set gem to link to gem2.0

ln -sfn /usr/bin/ruby2.0 /usr/bin/ruby
ln -sfn /usr/bin/gem2.0 /usr/bin/gem 
ln -sfn /usr/bin/rake2.0 /usr/bin/rake 

# update gems

gem2.0 update --no-ri --no-rdoc 

# install github-pages

gem2.0 install github-pages --no-ri --no-rdoc
