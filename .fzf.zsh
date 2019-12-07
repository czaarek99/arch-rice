# Setup fzf
# ---------
if [[ ! "$PATH" == */home/czarek/.fzf/bin* ]]; then
  export PATH="${PATH:+${PATH}:}/home/czarek/.fzf/bin"
fi

# Auto-completion
# ---------------
[[ $- == *i* ]] && source "/home/czarek/.fzf/shell/completion.zsh" 2> /dev/null

# Key bindings
# ------------
source "/home/czarek/.fzf/shell/key-bindings.zsh"
