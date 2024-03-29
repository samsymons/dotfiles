#!/usr/bin/env bash

# Install command-line tools using Homebrew.

# Make sure we’re using the latest Homebrew.
brew update

# Upgrade any already-installed formulae.
brew upgrade

# Save Homebrew’s installed location.
BREW_PREFIX=$(brew --prefix)

# Install more recent versions of some macOS tools.
brew install neovim
brew install openssh

# Install other useful binaries.
brew install carthage
brew install exa
brew install fd
brew install fzf
brew install gh
brew install git
brew install rbenv
brew install rename
brew install reattach-to-user-namespace
brew install ripgrep
brew install swiftlint
brew install tree
brew install zsh

# Remove outdated versions from the cellar.
brew cleanup

# Switch to using brew-installed zsh as default shell
if ! fgrep -q "${BREW_PREFIX}/bin/zsh" /etc/shells; then
  echo "${BREW_PREFIX}/bin/zsh" | sudo tee -a /etc/shells;
  chsh -s "${BREW_PREFIX}/bin/zsh";
fi;
