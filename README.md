## Ansible Lab

This is a dockerized lab to perform ansible related tasks
___

### Prerequisite

Install these tools in the system before using this lab.
* [Docker](https://docs.docker.com/install/)
* [Docker-compose](https://docs.docker.com/compose/install/)
* [Make](https://www.garron.me/en/go2linux/gnu-gcc-development-tools-linux-fedora-arch-debian.html)
___

### Components

| **Containers** | **Role** |
| :---: | --- |
| Ansible Server | Pre-configured ansible server with linking and ssh enabled to nodes | 
| Node x | SSH and Python pre-configured, ready to accept connection from ansible server |
___

### Usage

* Install required packages
* Clone the repository
* Create keys directory and add pub & pvt keys
* Choose any of the method below to run the lab (I prefer compose)
___
#### 1. via Makefile

##### Build docker images
$ make build-all

##### Run the lab
$ make run-all
___
#### 2. via docker-compose

##### Build docker images
$ docker-compose build

##### Run the lab
$ docker-compose up -d
___

### Lab Management

* This lab contains *one ansible server* and *two nodes* to configure
* Nodes count can be extended as per requirement by updating **Makefile** or **docker-compose.yml** accordingly.
* Once lab is up and running, login to ansible server container and modify **ansible.cfg** as required.
* Manage hosts file for nodes by adding alias or group of nodes, eg.
```
$ cat /etc/ansible/hosts
[node]
node1
node2
```

**NOTE** : Don't worry about the changes you made in ansible configuration, hosts file, playbooks, roles. They will persist with the mounted docker volume.
___
