source ~/.bash-git-prompt/gitprompt.sh GIT_PROMPT_ONLY_IN_REPO=1
export PATH="$HOME/.rbenv/bin:$PATH"
export PATH="/usr/local/bin:$PATH"
eval "$(rbenv init -)"

# Terminal aliases
alias ll='ls -alF'
alias la='ls -A'
alias l="ls -a"

# Git Aliases
alias gs="git status --short"
alias go="git checkout "
alias ga="git add "
alias gp="git push -u origin "
alias gl="git pull origin "
alias gc="git commit "
alias gh="git lg"
alias gf="git fetch"

alias f="xdg-open"


# Phoenix Aliases
alias ms="mix phoenix.server"
alias mps="mix phx.server"
