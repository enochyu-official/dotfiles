export ZSH=$HOME/.config/zsh
export HISTFILE=$ZSH/.zsh_history
export ZSH_COMPDUMP="$ZSH/cache/.zcompdump"

autoload -U colors && colors
setopt PROMPT_SUBST

eval "$(/opt/homebrew/bin/brew shellenv)"


# Aliases
alias ls="ls --color"
alias la="ls -a"
alias ta="tmux a -t"
alias tad="tmux a -t default"
alias tadd="tmux new-session -s default"
alias da="deactivate"


# Functions
notebook() {
    source ~/venv/bin/activate && jupyter notebook
}

lab() {
    source ~/venv/bin/activate && jupyter lab
}


# Plugins
source /opt/homebrew/share/zsh-autosuggestions/zsh-autosuggestions.zsh
source /opt/homebrew/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source $ZSH/enoch.zsh-theme

