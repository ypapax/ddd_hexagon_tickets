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

test(){
	curl -X POST   http://localhost:3000/tickets  -H 'Cache-Control: no-cache' -H 'Content-Type: application/json' -d '{
	"creator" : "Joel",
	"title" : "Test ticket",
	"description" : "A test ticket",
	"points": 5
	}'

	curl http://localhost:3000/tickets
	echo
}

$@