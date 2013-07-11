# omarshammas.zsh-theme
# 
# Author: Omar Shammas
# URL: http://omarshammas.com
#
# Created on:       July 10, 2013
# Last modified on: July 20, 2013

eval reset='%{$reset_color%}'
eval green='%{$fg[green]%}'  
eval blue='%{$fg[blue]%}'    
eval red='%{$fg[red]%}'
eval yellow='%{$fg[yellow]%}'
eval gray='%{$FG[237]%}'     

# prompt
# stupid shit is going on with the quotes, figure out why, cannot use "
PROMPT=$blue'%~ $(git_prompt_info) '$reset

# right prompt, username@hostname
RPROMPT=$gray"%n@%m"$reset

# setting git prompt, (branch*) * is the dirty flag
ZSH_THEME_GIT_PROMPT_PREFIX=$yellow"("
ZSH_THEME_GIT_PROMPT_CLEAN=""
ZSH_THEME_GIT_PROMPT_DIRTY=$red"*"$reset
ZSH_THEME_GIT_PROMPT_SUFFIX=$yellow")"$reset
