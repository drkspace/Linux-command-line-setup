# Linux Command Line Setup

## Install oh my zsh

1. `sudo apt install zsh`
2. `chsh -s $(which zsh)`
3. `sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"`

## `.zshrc` setup

1. `vim ~/.zshrc`
2. Set the `ZSH_THEME` to `"agnoster"`
3. Add the plugins: `plugins=(git zsh-autosuggestions copypath common-aliases command-not-found colored-man-pages tmux)`
4. Load the bash profile: `source ~/.bash_profile`
5. If conda is in use (remeber to change "USERNAME"): 
```
# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/home/USERNAME/anaconda3/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/home/USERNAME/anaconda3/etc/profile.d/conda.sh" ]; then
        . "/home/USERNAME/anaconda3/etc/profile.d/conda.sh"
    else
        export PATH="/home/USERNAME/anaconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<
```
6. Save and exit (`:wq`)
6. Install zsh-autosuggestions by doing the following: https://github.com/zsh-users/zsh-autosuggestions/blob/master/INSTALL.md#oh-my-zsh
7. Install the custom charater set `sudo apt-get install fonts-powerline`

## `.bash_profile` setup
1. Copy the following into your `~/.bash_profile`
```
neofetch
curl -s -m .25 "wttr.in/Flagstaff?0qu"

if [ -f ~/.bash_aliases ]; then
   . ~/.bash_aliases
fi
```

## `.bash_aliases` setup
1. Copy the following into your `~/.bash_aliases`
```
alias ..="cd .."
alias open="xdg-open"
alias please="sudo fc -s"
alias editalias="vim ~/.bash_aliases && . ~/.zshrc"
alias update="sudo apt-get update"
alias upgrade="sudo apt-get upgrade && sudo snap refresh"
alias clean="sudo apt-get clean && sudo apt-get autoremove"
alias fileexplorer="nautilus --browser ."
alias c="clear"
alias reload=". ~/.zshrc"
alias remotes='alias | grep "ssh "'
```

## vim setup
1. `vim ~/.vimrc`
2. Add `:set number`
