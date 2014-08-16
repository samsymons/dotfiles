# Matches case insensitive for lowercase
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Z}'

# Pasting with tabs doesn't perform completion
zstyle ':completion:*' insert-tab pending

#compdef ag

if (( CURRENT == 2 )); then
  compadd $(cut -f 1 tmp/tags .git/tags 2>/dev/null)
else;
  _files
fi
