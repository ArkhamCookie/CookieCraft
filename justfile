#!/usr/bin/env -S just --justfile

default:
	just --list

reinit:
	./scripts/reinit-pack.sh

build:
	packwiz mr export || false

