# Linux (ubuntu) Command Line Setup

## tl;dr
If you just want a script to do this for you, copy the script [here](#do-this-for-me).

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

## ComicCodeNF
I like the comic code font for programming. To install it:
1. `mkdir -p ~/.local/share/fonts/`
2. `wget -O ~/.local/share/fonts/ComicMonoNF.ttf https://github.com/xtevenx/ComicMonoNF/raw/master/ComicMonoNF.ttf`
3. `wget -O ~/.local/share/fonts/ComicMonoNF-Bold.ttf https://github.com/xtevenx/ComicMonoNF/raw/master/ComicMonoNF-Bold.ttf`
4. `fc-cache -f -v`

### Set terminal to use it
To change the font for the terminal, open the terminal and go to prefrences. Choose the profile (or create one) and set the font to `ComicCode NF`. 

It might not be there, so, to fix it, follow [these](https://superuser.com/a/1549327) instuctions.

## Do this for me
Copy this script to automatically do most things for you (you will have to enter your password multiple times). **You will need to add your ssh key to github if this repo is still private.**
```
bash -c "sudo apt-get update
sudo apt-get -y install git build-essential stow zsh curl tmux fonts-powerline neofetch
mkdir /tmp/cliInstall-$USER
pushd /tmp/cliInstall-$USER
curl -LO https://github.com/neovim/neovim/releases/latest/download/nvim-linux64.tar.gz
sudo rm -rf /opt/nvim
sudo tar -C /opt -xzf nvim-linux64.tar.gz
rm nvim-linux64.tar.gz
wget https://repo.anaconda.com/archive/Anaconda3-2024.02-1-Linux-x86_64.sh
bash Anaconda3-2024.02-1-Linux-x86_64.sh -b -p $HOME/anaconda3
popd

chsh -s \$(which zsh)
sh -c \"\$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)\"
git clone https://github.com/zsh-users/zsh-autosuggestions \${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions

git config --global user.email \"drkspace@gmail.com\"
git config --global user.name \"Daniel Kramer\"
git clone git@github.com:drkspace/Linux-command-line-setup.git ~/.dotfiles
pushd ~/.dotfiles
rm ~/.bash_aliases ~/.bash_profile ~/.vimrc ~/.zshrc
stow .
popd

git clone --depth 1 https://github.com/wbthomason/packer.nvim ~/.local/share/nvim/site/pack/packer/start/packer.nvim

mkdir -p ~/.local/share/fonts/
wget -O ~/.local/share/fonts/ComicMonoNF.ttf https://github.com/xtevenx/ComicMonoNF/raw/master/ComicMonoNF.ttf
wget -O ~/.local/share/fonts/ComicMonoNF-Bold.ttf https://github.com/xtevenx/ComicMonoNF/raw/master/ComicMonoNF-Bold.ttf
fc-cache -f -v
read -p \"You need to logout to finish setup. Do you want to do that now? [y/N] \" -n 1 -r
echo
if [[ \$REPLY =~ ^[Yy]\$ ]]
then
    gnome-session-quit
fi
"
```

If you get put into ZSH while running this script, press ctrl-d or run `exit` to continue running the script.

This scipt wont change the terminal's font, so follow [these instuctions](#set-terminal-to-use-it) to change it.