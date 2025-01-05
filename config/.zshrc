
export LSCOLORS=cxfxcxdxbxegedabagacad
alias ll='ls -lahGF'
alias ls='ls -GF'

# https://qiita.com/sayama0402/items/453595d0d8f54b645753
function code {
    if [[ $# = 0 ]]
    then
        open -a "Visual Studio Code"
    else
        local argPath="$1"
        [[ $1 = /* ]] && argPath="$1" || argPath="$PWD/${1#./}"
        open -a "Visual Studio Code" "$argPath"
    fi
}

# --- pyenv settings ---
export PYENV_ROOT="$HOME/.pyenv"
[[ -d $PYENV_ROOT/bin ]] && export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"

### MANAGED BY RANCHER DESKTOP START (DO NOT EDIT)
export PATH="/Users/user/.rd/bin:$PATH"
### MANAGED BY RANCHER DESKTOP END (DO NOT EDIT)

# --- directory for my custom command ---
export PATH="/Users/user/bin:$PATH"

# --- opnejdk ---
# https://qiita.com/gishi_yama/items/ee3526e7e7a922148333
export PATH="/opt/homebrew/opt/openjdk/bin:$PATH"
export CPPFLAGS="-I/opt/homebrew/opt/openjdk/include"

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/Users/user/.pyenv/versions/miniforge3-23.3.1-1/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/Users/user/.pyenv/versions/miniforge3-23.3.1-1/etc/profile.d/conda.sh" ]; then
        . "/Users/user/.pyenv/versions/miniforge3-23.3.1-1/etc/profile.d/conda.sh"
    else
        export PATH="/Users/user/.pyenv/versions/miniforge3-23.3.1-1/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<


# Created by `pipx` on 2024-07-10 12:22:40
export PATH="$PATH:/Users/user/.local/bin"

# --- nodebrew ---
export PATH="$HOME/.nodebrew/current/bin:$PATH"

# postgres
export PATH="/opt/homebrew/opt/postgresql@17/bin:$PATH"
