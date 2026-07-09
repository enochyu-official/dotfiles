export XDG_CONFIG_HOME="$HOME/.config"
export XDG_CACHE_HOME="$HOME/.cache"
export XDG_DATA_HOME="$HOME/.local/share"
export XDG_STATE_HOME="$HOME/.local/state"
export XDG_RUNTIME_DIR="/run/user/$UID"

export NPM_CONFIG_INIT_MODULE="$XDG_CONFIG_HOME/npm/config/npm-init.js"
export NPM_CONFIG_CACHE="$XDG_CACHE_HOME/npm"
export NPM_CONFIG_TMP="$XDG_RUNTIME_DIR/npm"
export PYENV_ROOT="$XDG_DATA_HOME/pyenv"
export DOCKER_CONFIG="$XDG_CONFIG_HOME/docker"
export TERMINFO="$XDG_DATA_HOME/terminfo"
export TERMINFO_DIRS="$XDG_DATA_HOME/terminfo:/usr/share/terminfo"
export PYTHON_HISTORY="$XDG_STATE_HOME/python_history"

export HISTFILE="$XDG_CACHE_HOME/zsh/history"
export ZDOTDIR="$XDG_CONFIG_HOME/zsh"
export EDITOR="nvim" 

