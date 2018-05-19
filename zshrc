# Path to your oh-my-zsh installation.
export ZSH=~/.oh-my-zsh

ZSH_THEME="materialshell"
plugins=(git vi-mode title-tab catimg git-extras z extract)
source $ZSH/oh-my-zsh.sh

ZEL_RPROMPT_INDENT=0
export LANG=en_US.UTF-8
export EDITOR="vi"
export TERM="xterm-256color"
# alias
alias h=cheat
alias vi=nvim
