export DEFAULT_USER=blub

# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh



################################################################################
#
# terminal colors
#
################################################################################

# TODO look whether this is really necessary
export CLICOLOR=1




################################################################################
#
# load the zsh theme (all themes are located in $ZSH/themes)
# load zsh plugins (located in $ZSH/custom/plugins,
#                   careful: too many plugins slow down startup)
# source the zsh script
#
################################################################################

ZSH_THEME="avit-custom"
#plugins=(git)
source $ZSH/oh-my-zsh.sh




################################################################################
#
# set path variables
#
################################################################################

# 1st path for macports
# 2nd path for homebrew
export PATH=/opt/local/bin:/usr/local/sbin:$HOME/bin:$PATH




################################################################################
#
# set language environment
#
################################################################################

export LANG=en_US.UTF-8




################################################################################
#
# enable syntax highlighting in zsh
# (need to be downloaded first)
#
################################################################################

source /usr/local/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh




################################################################################
#
# user defined aliases
# (For a full list of active aliases, run `alias`)
#
################################################################################

# =============================== general commands =============================
alias cp="cp -iv"           # confirm before overwriting something
alias grep='grep  --color=auto --exclude-dir={.bzr,CVS,.git,.hg,.svn}'
alias l='ls -lah'
alias la='ls -lAh'
alias ll='ls -lh'
alias ls='ls -G'
alias lsa='ls -lah'
alias mv="mv -iv"

# =================================== git ======================================
alias g="git"
alias ga='git add'
alias gb='git branch'
alias gc='git commit -v'
alias gcl='git clone'
alias gco='git checkout'
alias gd='git diff'
alias gk='\gitk --all --branches'
alias gke='\gitk --all $(git log -g --pretty=format:%h)'
alias gl='git pull'
alias glg='git log --stat'
alias glgg='git log --graph'
alias glgga='git log --graph --decorate --all'
alias glgm='git log --graph --max-count=10'
alias glgp='git log --stat -p'
alias glo='git log --oneline --decorate'
alias glog='git log --oneline --decorate --graph'
alias glol='git log --graph --pretty=format:'\''%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset'\'' --abbrev-commit'
alias glola='git log --graph --pretty=format:'\''%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset'\'' --abbrev-commit --all'
alias gm='git merge'
alias gp='git push'
alias gpd='git push --dry-run'
alias gst="git status -s"
alias gstall="git status --ignored --untracked-files=all"

# =================================== uni ======================================
# documents/manuels
alias cstandard="open /Users/wiamrachid/Desktop/Uni/n1570.pdf"
alias islman='open /Users/wiamrachid/Documents/bachelor/bachelor-git/llvm/tools/polly/lib/External/isl/doc/manual.pdf'
# cd
alias uni="cd /Users/wiamrachid/Desktop/Uni"
alias bachelor="cd /Users/wiamrachid/Documents/bachelor/bachelor-git/"




################################################################################
#
# a function that should extract archieves
#
################################################################################

extract () {
  if [ -f $1 ] ; then
    case $1 in
      *.tar.bz2)        tar xjf $1        ;;
      *.tar.gz)         tar xzf $1        ;;
      *.bz2)            bunzip2 $1        ;;
      *.rar)            unrar x $1        ;;
      *.gz)             gunzip $1         ;;
      *.tar)            tar xf $1         ;;
      *.tbz2)           tar xjf $1        ;;
      *.tgz)            tar xzf $1        ;;
      *.zip)            unzip $1          ;;
      *.Z)              uncompress $1     ;;
      *)                echo "'$1' cannot be extracted via extract()" ;
    esac
  else
    echo "'$1' is not a valid file"
  fi
}
