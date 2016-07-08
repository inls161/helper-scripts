#!/bin/bash
# update packages
apt-get update -y
# upgrade packages
apt-get -y -o Dpkg::Options::="--force-confdef" -o Dpkg::Options::="--force-confold" dist-upgrade
# install pandoc
apt-get install -y pandoc pandoc-citeproc
# install unoconv
apt-get install -y unoconv
# install texlive
apt-get install -y texlive