alias l='ls -lhoAF'
alias reload='. ~/.zshrc'
alias reload!='~/.dotfiles/script/install && reload'

# Show/hide hidden files in Finder
alias show="defaults write com.apple.Finder AppleShowAllFiles -bool true && killall Finder"
alias hide="defaults write com.apple.Finder AppleShowAllFiles -bool false && killall Finder"

alias tmux="TERM=screen-256color-bce tmux"
