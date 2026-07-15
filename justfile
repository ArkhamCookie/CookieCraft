#!/usr/bin/env -S just --justfile

# list all just recipes
default:
	just --list

# reinit modpack to given pack version & given game_version
reinit pack_version game_version:
	packwiz init --reinit --author ArkhamCookie --fabric-latest --modloader fabric --name CookieCraft --version {{ pack_version }} --mc-version {{ game_version }}

# build current modpack
build:
	packwiz mr export

# clean up files created in project
clean:
	rm ./CookieCraft-*.mrpack || echo "No mrpacks to remove"
	rm -r ./site || echo "No site to clean"

# lint staged files
lint:
	prek run markdownlint-cli2 # lint staged markdown files

# serve the docs locally
serve-docs:
	mkdocs serve

# update all mods in pack
update:
	packwiz update --all

# print pack version & minecraft version
version:
	sed -n '3p' pack.toml
	sed -n '13p' pack.toml

