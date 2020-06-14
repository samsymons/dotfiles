#!/usr/bin/env zsh

cd "$(dirname "${BASH_SOURCE}")";

function synchronize() {
	rsync --exclude ".git/" \
		--exclude ".DS_Store" \
		--exclude "bootstrap.sh" \
		--exclude "README.md" \
		--exclude "LICENSE-MIT.txt" \
		-avh --no-perms . ~;
	source ~/.zshrc;
}

synchronize;

unset synchronize;
