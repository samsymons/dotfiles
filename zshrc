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
export PATH="/Library/TeX/texbin:$PATH"

export RUST_SRC_PATH="$HOME/.multirust/toolchains/stable-x86_64-apple-darwin/lib/rustlib/src/rust/src"

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

# ==============================
# *** Compiler Configuration ***
# ==============================

# export MACOSX_DEPLOYMENT_TARGET=10.9
# export CC=/usr/local/opt/llvm/bin/clang
# export CXX=/usr/local/opt/llvm/bin/clang++

# ================
# *** Anaconda ***
# ================

. /usr/local/anaconda3/etc/profile.d/conda.sh

# ==============
# *** Ruby ***
# ==============

source /usr/local/share/chruby/chruby.sh
source /usr/local/opt/chruby/share/chruby/auto.sh
source /usr/local/share/gem_home/gem_home.sh

chruby 2.5.1

# ============
# *** Node ***
# ============

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"

# ==============
# *** Travis ***
# ==============

[ -f ~/.travis/travis.sh ] && source ~/.travis/travis.sh
