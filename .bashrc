function prompt {  
  local BLACK="\[\033[0;30m\]"
  local BLACKBOLD="\[\033[1;30m\]"
  local RED="\[\033[0;31m\]"
  local REDBOLD="\[\033[1;31m\]"
  local GREEN="\[\033[0;32m\]"
  local GREENBOLD="\[\033[1;32m\]"
  local YELLOW="\[\033[0;33m\]"
  local YELLOWBOLD="\[\033[1;33m\]"
  local BLUE="\[\033[0;34m\]"
  local BLUEBOLD="\[\033[1;34m\]"
  local PURPLE="\[\033[0;35m\]"
  local PURPLEBOLD="\[\033[1;35m\]"
  local CYAN="\[\033[0;36m\]"
  local CYANBOLD="\[\033[1;36m\]"
  local WHITE="\[\033[0;37m\]"
  local WHITEBOLD="\[\033[1;37m\]"
  local RESET="\033[m"
export PS1="\n$REDBOLD\u$RESET in $GREENBOLD\w $ $RESET"  
}
prompt

alias ls='ls --color'
alias ll='ls -lah'
alias la='ls -lah'
alias rm='rm -i'

alias grep='grep --color'
alias look='grep -ir'
alias lookh='grep -ir --include="*.h"'
alias lookc='grep -ir --include="*.c"'
alias fi='find ./ -iname'
alias alex='cd C:/Users/Alex/Dropbox/alexle.github.com'
alias downloads='cd C:/Users/Alex/Downloads'
alias drop='cd C:/Users/Alex/Dropbox'
alias serv='cd C:/Users/Alex/Dropbox/alexle.github.com;./chisel.py -s'
alias doc='cd /cygdrive/c/Documents\ and\ Settings/404368/My\ Documents'

alias vi='start gvim'
alias c='cd c:'

alias gcl='git clone'
alias ga='git add -A && git commit -am'
alias gc='git commit -m'
alias gca='git commit -am'
alias gs='git status'
alias gdc='git diff --cached'
alias gd='git diff'
alias gp='git push'
alias gpu='git pull --rebase'
alias gpum='git pull origin master'
alias gl='git log'
alias gb='git branch'
alias gbd='git branch -d'
alias gkb='git checkout -b'
alias gk='git checkout'
alias gra='git remote add origin'
alias grm='git rm'
alias gre='git reset --hard HEAD'
alias grem='git reset --hard origin/master'
alias gahead='git push origin master:master'
alias glog='git log --author="Alex" --after={1.week.ago} --pretty=oneline --abbrev-commit'

# ---- GIT INIT ---
# gcl git@github.com:alexle/project.git

# OR

# git init
# gra git@github.com:alexle/Project.git
# git push -u origin master

# gca "added feature x"          // git commit -m "added feature x"

# git checkout my_branch         // Just to make sure I'm on the right branch
# git pull origin master         // Read: pull the changes from origin/master into my current local branch my_branch

# git commit -am 'My changes'    // While i'm working on my machine
#                                // <-- My colleague did a "git push" here
# git pull --rebase              // So before I can push, i need to rebase
#                                // Another syntax: git pull --rebase origin my_branch
# git push                       // Now my changes are on top

# ---- GIT CONFIG ---
# git config --global color.ui true
# git config --global push.default current
# git config --global core.editor vim
# git config --global user.name "John Doe"
# git config --global user.email foo@citrix.com
# git config --global diff.tool meld

# ---- GIT BRANCH ---
# See the list of all local branches
# git branch

# Switch to existing local branch
# git checkout branchname

# Checkout current branch into a new branch, named new-branch-name
# git checkout -b new-branch-name

# Merge branch-name into the current branch
# git merge branchname

# ---- GIT ADVANCED ---
# Unstage pending changes, the changes will still remain on file system
# git reset

# Unstage pending changes, and reset files to pre-commit state. If 
# git reset --hard HEAD

# Go back to some time in history, on the current branch
# git reset tag
# git reset <commit-hash>

# Save current changes, without having to commit them to repo
# git stash

# And later return those changes
# git stash pop

# Return file to it's previous version, if it hasn’t been staged yet.
# Otherwise use git reset filename or git reset --hard filename
# git checkout filename 

# ---- GIT REMOTE ---

# See list of remote repos available. If you did git clone, 
# you'll have at least one named "origin"
# git remote

# Detailed view of remote repos, with their git urls
# git remote -v

# Add a new remote. I.e. origin if it is not set
# git remote add origin <https://some-git-remote-url>

# Push current branch to remote branch (usually with the same name) 
# called upstream branch
# git push

# If a remote branch is not set up as an upstream, you can make it so
# The -u tells Git to remember the parameters
# git push -u origin master 

# Otherwise you can manually specify remote and branch to use every time
# git push origin branchname

# Just like pushing, you can get the latest updates from remote. 
# By defaul Git will try to pull from "origin" and upstream branch
# git pull

# Or you can tell git to pull a specific branch
# git pull origin branchname

# Git pull, is actually a short hand for two command.
# Telling git to first fetch changes from a remote branch
# And then to merge them into current branch
# git fetch && git merge origin/remote-branch-name

# If you want to update history of remote branches, you can fetch and purge
# git fetch -p

# To see the list of remote branches
# -a stands for all
# git branch -a 
