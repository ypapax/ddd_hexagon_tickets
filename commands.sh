#!/usr/bin/env bash
set -ex

build(){
	go install
}

runp(){
	build
	ddd_hexagon_tickets --database psql
}

runp(){
	build
	ddd_hexagon_tickets --database redis
}

runc(){
	docker-compose build
	docker-compose up
}

$@