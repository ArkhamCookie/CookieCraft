#!/usr/bin/env -S just --justfile

default:
	just --list

reinit pack_version game_version:
	packwiz init --reinit --author ArkhamCookie --fabric-latest --modloader fabric --name CookieCraft --version {{ pack_version }} --mc-version {{ game_version }}

build:
	packwiz mr export || false

