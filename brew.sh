#!/usr/bin/env bash

# Install command-line tools using Homebrew.

# Make sure we’re using the latest Homebrew.
brew update

# Upgrade any already-installed formulae.
brew upgrade

# Save Homebrew’s installed location.
BREW_PREFIX=$(brew --prefix)

# Switch to using brew-installed bash as default shell
if ! fgrep -q "${BREW_PREFIX}/bin/zsh" /etc/shells; then
  echo "${BREW_PREFIX}/bin/zsh" | sudo tee -a /etc/shells;
  chsh -s "${BREW_PREFIX}/bin/zsh";
fi;

# Install GnuPG to enable PGP-signing commits.
brew install gnupg

# Install more recent versions of some macOS tools.
brew install neovim
brew install openssh

# Install other useful binaries.
brew install carthage
brew install fd
brew install fzf
brew install git
brew install git-lfs
brew install rbenv
brew install rename
brew install reattach-to-user-namespace
brew install ripgrep
brew install swiftlint
brew install tree
brew install zsh

# Remove outdated versions from the cellar.
brew cleanup
