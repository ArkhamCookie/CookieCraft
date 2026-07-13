#!/usr/bin/env -S just --justfile

default:
	just --list

reinit pack_version game_version:
	packwiz init --reinit --author ArkhamCookie --fabric-latest --modloader fabric --name CookieCraft --version {{ pack_version }} --mc-version {{ game_version }}

build:
	packwiz mr export

clean:
	rm ./CookieCraft-*.mrpack || echo "No mrpacks to remove"
	rm -r ./site || echo "No site to clean"

update:
	packwiz update --all

serve-docs:
	mkdocs serve
