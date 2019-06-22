#!/usr/bin/env bash
set -ex

ddd_hexagon_tickets -port 3000 --database redis &
ddd_hexagon_tickets -port 3001 --database psql