#!/bin/bash

function installPackages() {
  apt-get -y update
  apt-get -y install software-properties-common python-software-properties
  add-apt-repository ppa:ansible/ansible -y
  apt-get -y update
  apt-get install -y ansible git vim telnet net-tools
}

installPackages
