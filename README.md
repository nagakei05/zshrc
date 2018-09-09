# Personal zshrc settings

- this is my zshrc/vimrc setings to get going with a new OS X/Linux enviroment in a snap!

# Installation

## Preperation
Finish the follwing 3 steps before cloning this repository

### Install Oh My Zsh

- Go to the offical [Oh My Zsh](https://github.com/robbyrussell/oh-my-zsh) github repository and follow the instructions

### Install Antigen

- Go to the offical [Antigen](https://github.com/zsh-users/antigen) github repository and follow the instructions

### git clone "dircolors-solarized" theme to home dir

- clone [this repository](https://github.com/seebi/dircolors-solarized) to your home directory

## Change default shell to zsh

- check where zsh has been installed

    which zsh

- change the default shell path according to the result above and logout to enable the change

    sudo chsh

## Installation/Setup

- clone this repository to your home directory

- copy ".zshrc" and ".vimrc" to your home directory 

- install [Vundle](https://github.com/VundleVim/Vundle.vim)

- run vim, and in command line mode run "PluginInstall"

- Done!!
