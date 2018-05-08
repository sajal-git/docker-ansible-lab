#!/bin/bash

function installPackages() {
  apt-get -y update
  apt-get -y install openssh-server vim telnet net-tools python2.7
  ln -s /usr/bin/python2.7 /usr/bin/python
  mkdir /var/run/sshd
}

installPackages
