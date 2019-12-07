export KEYTIMEOUT=1

GIT_TERMINAL_PROMPT=1
ZSH="$(antibody home)/https-COLON--SLASH--SLASH-github.com-SLASH-ohmyzsh-SLASH-ohmyzsh"

source <(antibody init)

antibody bundle denysdovhan/spaceship-prompt
antibody bundle ohmyzsh/ohmyzsh
antibody bundle ohmyzsh/ohmyzsh path:plugins/vi-mode

alias ls='ls -1'

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
source /usr/share/nvm/init-nvm.sh
