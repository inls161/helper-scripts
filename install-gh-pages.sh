#!/bin/bash

# RUN WITH SUDO

# update packages
apt-get update -y

apt-get -y -o Dpkg::Options::="--force-confdef" -o Dpkg::Options::="--force-confold" dist-upgrade

# Install build tools

apt-get install -y git-core curl zlib1g-dev build-essential libssl-dev libreadline-dev libyaml-dev libsqlite3-dev sqlite3 libxml2-dev libxslt1-dev libcurl4-openssl-dev python-software-properties libffi-dev

# install ruby

#apt-get install -y ruby2 ruby2.0-dev
# We used to just be able to get away with installing ruby2.0 from the Ubuntu repos, but some of the dependency gems for the GH-Pages gem need a newer version

git clone https://github.com/rbenv/rbenv.git ~/.rbenv
echo 'export PATH="$HOME/.rbenv/bin:$PATH"' >> ~/.bashrc
echo 'eval "$(rbenv init -)"' >> ~/.bashrc
exec $SHELL

git clone https://github.com/rbenv/ruby-build.git ~/.rbenv/plugins/ruby-build
echo 'export PATH="$HOME/.rbenv/plugins/ruby-build/bin:$PATH"' >> ~/.bashrc
exec $SHELL

rbenv install 2.3.1
rbenv global 2.3.1
ruby -v

# set gem to link to gem2.0

#ln -sfn /usr/bin/ruby2.0 /usr/bin/ruby
#ln -sfn /usr/bin/gem2.0 /usr/bin/gem 
#ln -sfn /usr/bin/rake2.0 /usr/bin/rake 

# Fix configuration

echo "gem: --no-document" > ~/.gemrc

# update gems

gem update --no-document

# install github-pages

gem install github-pages --no-document 
