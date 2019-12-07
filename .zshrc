source <(antibody init)

antibody bundle < ~/.config/zsh/plugins.txt
antibody bundle denysdovhan/spaceship-prompt

alias ls='ls -1'

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
source /usr/share/nvm/init-nvm.sh
