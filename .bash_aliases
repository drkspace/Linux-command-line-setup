alias ..="cd .."
alias open="xdg-open"
alias please="sudo fc -s"
alias editalias="vim ~/.dotfiles/.bash_aliases && . ~/.zshrc"
alias update="sudo apt-get update"
alias upgrade="sudo apt-get upgrade && sudo snap refresh"
alias clean="sudo apt-get clean && sudo apt-get autoremove"
alias fileexplorer="nautilus --browser ."
alias c="clear"
alias reload=". ~/.zshrc"
alias remotes='alias | grep "ssh "'
alias vim="nvim"
alias fix-dd="sudo sysctl -w kernel.apparmor_restrict_unprivileged_userns=0"
alias dd-fix="sudo sysctl -w kernel.apparmor_restrict_unprivileged_userns=0"
tmpd (){
    cd $(mktemp -d)
}
tempd (){
    tmpd
}
