alias l='ls -lhoAF'
alias reload='. ~/.zshrc'
alias reload!='rcup -d .dotfiles -v; . ~/.zshrc'
alias path="echo $PATH | tr -s ':' '\n'"

alias tmux="TERM=screen-256color-bce tmux"
alias mkdir='mkdir -p'

alias vf='vim $(fzf)'

# Git
alias gs="git status"
alias gd="git diff --cached"
alias gl="git log --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(blue)<%an>%Creset' --abbrev-commit"
alias gpr="git pull-request -b develop"

# iOS
alias pi="pod install"
alias po="pod outdated"

# Rails
alias be="bundle exec"
alias bo="bundle outdated"
alias migrate="rake db:migrate db:rollback && rake db:migrate"
alias s="bundle exec rspec"
