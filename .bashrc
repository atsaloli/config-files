. /etc/bash_completion.d/git

vig() {
# Simple form: in any git repo, in any directory, run "vig".
# It will open in vim all the files in that directory (or its
# subdirectories) that were edited in the last commit to affect
# that directory.  (If in the top level directory of the project
# it will open all files edited in the last commit.)
#
# Using with "-a" (for "all") is for opening all files that
# were edited from the time the current branch diverged from
# master.  Useful in reviewing merge requests (branches) on
# the command line.
#
# Using with "-m" shows changes relative to "master"
  if [ "$1" = -a ]; then
    vim $(git diff --name-only --relative master@{u}...)
  elif [ "$1" = -m ]; then
    vim $(git ls-files -m)
  else
    vim $(git log -1 --name-only --relative --pretty= .)
  fi
}
