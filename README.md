# Linux (ubuntu) Command Line Setup

## Packages
1. `sudo apt-get update`
2. `sudo apt-get install git build-essential stow zsh curl tmux fonts-powerline neofetch`
3. (aptitude doesn't have the most reason version of neovim, so it has to be installed manually)
```
curl -LO https://github.com/neovim/neovim/releases/latest/download/nvim-linux64.tar.gz
sudo rm -rf /opt/nvim
sudo tar -C /opt -xzf nvim-linux64.tar.gz
rm nvim-linux64.tar.gz
```

## Install oh my zsh

2. `chsh -s $(which zsh)`
3. `sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"`

**The change of the shell won't take effect until you logout and log back in**

4. Install zsh-autosuggestions by doing the following: https://github.com/zsh-users/zsh-autosuggestions/blob/master/INSTALL.md#oh-my-zsh

## git setup
1. `git config --global user.email "drkspace@gmail.com"`
2. `git config --global user.name "Daniel Kramer"`

(Obvioulsly, if you're not Daniel Kramer, use your own credentials)

 You might also want to do `ssh-keygen` to setup your ssh key

## Dotfiles setup
1. Clone this repository `git@github.com:drkspace/Linux-command-line-setup.git ~/.dotfiles` (you can change `.dotfiles` to whatever you want, it just needs to be in the home directory)
2. `cd ~/.dotfiles`
3. `stow .`


## neovim setup
1. `git clone --depth 1 https://github.com/wbthomason/packer.nvim ~/.local/share/nvim/site/pack/packer/start/packer.nvim`
