alias brownnoise1='play -q -c 2 -n synth brownnoise band -n 1600 1500 tremolo .1 30'
alias brownnoise2='play -q -c 2 -n synth brownnoise band -n 1600 1500 tremolo .1 75'
alias psql='PAGER=less LESS=-FXSe psql'

# git aliases
alias gp='git push'
alias st='git status'
alias gc='git commit'
alias gd='git diff'
alias g='gc -amx; gp'
alias vig='vim $(git diff HEAD^ HEAD --name-only)'
alias gtop='cd "$(git rev-parse --show-toplevel)"' # go to the top of your git repo

