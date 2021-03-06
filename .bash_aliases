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

# Downloading
d() {
    wget $1 --content-disposition
}

# SSH Keys
if [ -z "$SSH_AUTH_SOCK" ] ; then
  eval `ssh-agent -s`
  ssh-add
fi