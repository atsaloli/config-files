alias brownnoise1='play -q -c 2 -n synth brownnoise band -n 1600 1500 tremolo .1 30'
alias brownnoise2='play -q -c 2 -n synth brownnoise band -n 1600 1500 tremolo .1 75'
alias psql='PAGER=less LESS=-FXSe psql'

# git aliases
alias gs='git status'
alias gm='git rebase -i master'
alias gp='git push'
alias st='git status'
alias gc='git commit'
alias gd='git diff'
alias g='gc -amx; gp'
alias nb='git checkout master; git pull; git checkout -b $1' # new git branch
alias gt='cd "$(git rev-parse --show-toplevel)"' # go to the top of your git repo
