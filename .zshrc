# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=40
SAVEHIST=40
unsetopt beep
bindkey -v
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/erikgr/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall

eval "$(starship init zsh)"
