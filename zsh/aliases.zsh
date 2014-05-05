alias l='ls -lhoAF'
alias reload='. ~/.zshrc'
alias reload!='~/.dotfiles/script/install && reload'

alias tmux="TERM=screen-256color-bce tmux"

# git
alias gs="git status -s -b"
alias gp="git pull --rebase && git push"
alias gl="git log --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(blue)<%an>%Creset' --abbrev-commit"
alias gco="git checkout"

# Bundler
alias b="bundle"
alias be="bundle exec"
