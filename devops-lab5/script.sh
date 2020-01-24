#!/usr/bin/env bash
	apt-get update -y
	apt-get remove docker docker-engine docker.io -y
	apt-get -y install docker.io -y
	apt -y install docker-compose -y
	systemctl start docker
	systemctl enable docker
	cd /vagrant/
	docker-compose up -d
