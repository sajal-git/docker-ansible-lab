build-ansible:
	docker build -t ansible:server -f Dockerfile.ansible .

build-node:
	docker build -t node:client -f Dockerfile.node .
	
build-node-centos:
	docker build -t node:centos -f Dockerfile.node.centos .
	
build-all:
	make build-ansible
	make build-node

run-ansible:
	docker rm -f ansible || true
	docker run -itd -h ansible --name ansible --link node1:node1 -v ansible:/etc/ansible --link node2:node2 ansible:server /bin/bash

run-node1:
	docker rm -f node1 || true
	docker run -d -P -h node1 --name node1 node:client

run-node2:
	docker rm -f node2 || true
	docker run -d -P -h node2 --name node2 -itd node:client

run-all:
	make run-node1
	make run-node2
	make run-ansible
