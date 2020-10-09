#!/usr/bin/env bash

cd "$(dirname "${BASH_SOURCE}")";

git pull origin main;

function syncDotFiles() {
    # Don't include extras by default. Edit .extras with your own details
    if [ "$1" != "--include-extras" ]; then
        EXTRAS='--exclude ".extras"'
    fi
	rsync --exclude ".git/" \
		--exclude ".DS_Store" \
		--exclude "install.sh" \
		--exclude "README.md" \
        $EXTRAS \
		-avh --no-perms . ~;
	source ~/.bashrc;
}

if [ "$1" == "--force" -o "$1" == "-f" ]; then
	syncDotFiles;
else
	read -p "This may overwrite existing files in your home directory. Are you sure? (y/n) " -n 1;
	echo "";
	if [[ $REPLY =~ ^[Yy]$ ]]; then
		syncDotFiles;
	fi;
fi;
unset syncDotFiles;