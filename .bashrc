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
alias ga='git add'
alias gc='git commit -m'
alias gca='git commit -am'
alias gs='git status'
alias gdc='git diff --cached'
alias gd='git diff'
alias gp='git push'
alias gpu='git pull'
alias gl='git log'
alias gb='git branch'
alias gbd='git branch -d'
alias gbk='git checkout -b'
alias gk='git checkout'
alias gra='git remote add origin'
alias grm='git rm'
alias gre='git reset --hard HEAD'
alias gpum='git pull origin master'
alias gahead='git push origin master:master'

#$ gcl git@github.com:alexle/project.git
# OR
#$ git init               # git init
#$ gra git@github.com:alexle/Project.git
#$ git push -u origin master

#$ gca "added feature x"  # git commit -m "added feature x"

#git checkout my_branch // Just to make sure I'm on the right branch
#git pull origin master // Read: pull the changes from origin/master into my current local branch my_branch

#git commit -am 'My changes'  // While i'm working on my machine
#                             // <-- My colleague did a "git push" here
#git pull --rebase            // So before I can push, i need to rebase
#                             // Another syntax: git pull --rebase origin my_branch
#git push                     // Now my changes are on top
