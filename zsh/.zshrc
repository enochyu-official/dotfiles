export ZSH=$HOME/.config/zsh
export HISTFILE=$ZSH/.zsh_history
export ZSH_COMPDUMP="$ZSH/cache/.zcompdump"

autoload -U colors && colors
setopt PROMPT_SUBST

eval "$(/opt/homebrew/bin/brew shellenv)"

alias ls="ls --color"
alias ta="tmux a -t"
alias tad="tmux a -t default"
alias da="deactivate"

source /opt/homebrew/share/zsh-autosuggestions/zsh-autosuggestions.zsh
source /opt/homebrew/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

source $ZSH/enoch.zsh-theme

if command -v tmux &> /dev/null && [ -z "$TMUX" ]; then
    tmux a -t default || tmux new-session -s default
fi

notebook() {
    source ~/venv/bin/activate && jupyter notebook
}

lab() {
    source ~/venv/bin/activate && jupyter lab
}

