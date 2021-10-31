# Aliases
alias e='code ~/.bashrc'
alias r='source ~/.bashrc'
alias ea='code ~/.bash_aliases'

# Windows Apps
alias subl='subl.exe'
alias kdiff='kdiff3.exe'
alias kdiff3='kdiff3.exe'

# Navigation
alias ..='cd ..'
alias ...='cd ../..'
alias .3='cd ../../..'
alias .4='cd ../../../..'
alias .5='cd ../../../../..'
alias .6='cd ../../../../../..'
alias e.='explorer.exe .'

# Other
alias u='sudo apt-get update && sudo apt-get upgrade'

# Downloading
d() {
    wget $1 --content-disposition
}

# SSH Keys
alias sshcpk='cat ~/.ssh/id_rsa.pub | clip.exe'
if [ -z "$SSH_AUTH_SOCK" ] ; then
  eval `ssh-agent -s`
  ssh-add
fi