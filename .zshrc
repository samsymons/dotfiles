# ================
# *** Dotfiles ***
# ================

if [[ -s "${ZDOTDIR:-$HOME}/.zprezto/init.zsh" ]]; then
  source "${ZDOTDIR:-$HOME}/.zprezto/init.zsh"
fi

# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block, everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

export KEYTIMEOUT=1

# ============
# *** Path ***
# ============

export PATH="$HOME/.dotfiles/bin:/usr/local/bin:/usr/local/Cellar:$HOME/.cargo/bin:/bin:/usr/local/sbin:/usr/bin:/bin:/usr/sbin:/sbin"
export PATH="/usr/local/anaconda3/bin:$PATH"

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

# ========================
# *** Version Managers ***
# ========================

# Node
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"

# Ruby
eval "$(rbenv init -)"

# Haskell
[ -f "${GHCUP_INSTALL_BASE_PREFIX:=$HOME}/.ghcup/env" ] && source "${GHCUP_INSTALL_BASE_PREFIX:=$HOME}/.ghcup/env"

# ========================
# *** Golang ***
# ========================

export GOPATH="${HOME}/.go"

# ==============
# *** Prompt ***
# ==============

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
