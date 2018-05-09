#!/bin/bash

function installPackages() {
  yum -y update
  yum -y install openssh-server vim telnet net-tools python2.7
  mkdir /var/run/sshd
}

installPackages
