# PROXY SETTINGS for GIT NPM CURL

# use "gc" insted of full "git checkout"  in git bash for windows or linus/mac terminal

# file located at type "cd ~" in cmd/gitbash

PROXY_USER=$(whoami)
# Change to your PC password
PROXY_PASS=password

# PROXY SETTINGS
ALL_PROXY="http://${PROXY_USER}:${PROXY_PASS}@192.168.1.100:8080";

# NPM PROXY
export NPM_CONFIG_PROXY=$ALL_PROXY
export NPM_CONFIG_HTTPS_PROXY=$ALL_PROXY


# Git Proxy 

git config --global http.proxy $ALL_PROXY

alias gc="git checkout"
alias gb="git branch"
alias gp="git pull"
alias gps="git push"
alias gm="git merge"
alias ges="git log --all --grep="
alias gs="git status"
alias gd="git diff --name-only"
alias sync="browser-sync start --server --files --directory -w  ./"

#curl Proxy
alias curl="curl -x http://${PROXY_USER}:${PROXY_PASS}@192.168.1.100:8080"

export http_proxy=$ALL_PROXY
export https_proxy=$ALL_PROXY
