# ================
# *** Dotfiles ***
# ================

if [[ -s "${ZDOTDIR:-$HOME}/.zprezto/init.zsh" ]]; then
  source "${ZDOTDIR:-$HOME}/.zprezto/init.zsh"
fi

export KEYTIMEOUT=1

# ============
# *** Path ***
# ============

export PATH="$HOME/.dotfiles/bin:/usr/local/bin:/usr/local/Cellar:$HOME/.cargo/bin:/bin:/usr/local/sbin:/usr/bin:/bin:/usr/sbin:/sbin"

# ===============
# *** Aliases ***
# ===============

unalias gs
alias gs='git status -sb'

alias update='brew update && rustup update'
alias cat='bat'
alias du="ncdu --color dark -rr -x --exclude .git"
alias top="sudo htop"

# ==============
# *** Neovim ***
# ==============

if type nvim > /dev/null 2>&1; then
  alias vim='nvim'
fi

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# ============
# *** Version Managers ***
# ============

# Node
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"

# Ruby
eval "$(rbenv init -)"

# Haskell
[ -f "${GHCUP_INSTALL_BASE_PREFIX:=$HOME}/.ghcup/env" ] && source "${GHCUP_INSTALL_BASE_PREFIX:=$HOME}/.ghcup/env"
