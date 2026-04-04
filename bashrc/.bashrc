# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
    . /etc/bashrc
fi

# User specific environment
if ! [[ "$PATH" =~ "$HOME/.local/bin:$HOME/bin:" ]]; then
    PATH="$HOME/.local/bin:$HOME/bin:$PATH"
fi
export PATH

# Uncomment the following line if you don't like systemctl's auto-paging feature:
# export SYSTEMD_PAGER=

# User specific aliases and functions
if [ -d ~/.bashrc.d ]; then
    for rc in ~/.bashrc.d/*; do
        if [ -f "$rc" ]; then
            . "$rc"
        fi
    done
fi
unset rc

# setup oh-my-posh theme
#eval "$(oh-my-posh init bash --config 'https://github.com/JanDeDobbeleer/oh-my-posh/blob/main/themes/capr4n.omp.json')"
eval "$(oh-my-posh init bash --config '~/.mytheme2.omp.json')"

# add newline after command
export PS0="\n"

# git credentials environmental variables 
export GIT_ASKPASS="";
export SSH_ASKPASS="";

# terminal environmental variable
export TERMINAL=kitty

# Load Angular CLI autocompletion
if command -v ng &> /dev/null; then
    source <(ng completion script)
fi

# environment variables for gtk / qt
export GTK_THEME=Adwaita-dark
export GTK_2_CONFIG_HOME="$HOME/.gtkrc-2.0"
export QT_QPA_PLATFORMTHEME=qt5ct:qt6ct
export QT_STYLE_OVERRIDE=kvantum

# Deno
if command -v deno &> /dev/null; then
    . "/home/lauri/.deno/env"
    source /home/lauri/.local/share/bash-completion/completions/deno.bash
fi

# kitty beam cursor fix
function yazi() {
    # Create a temporary file to store the final directory
    local tmp="$(mktemp -t "yazi-cwd.XXXXXX")"

    # Run the actual yazi program
    command yazi "$@" --cwd-file="$tmp"

    # ----------------------------------------------------
    # THE CURSOR FIX: Force Kitty/Tmux back to a Blinking Beam (5)
    printf '\e[5 q'
    # ----------------------------------------------------

    # THE DIRECTORY TRICK: cd into the last directory you were in
    if cwd="$(command cat -- "$tmp")" && [ -n "$cwd" ] && [ "$cwd" != "$PWD" ]; then
        builtin cd -- "$cwd"
    fi
    rm -f -- "$tmp"
}

export EDITOR="nvim"
export VISUAL="nvim"

# android envs required for nativescript development
export ANDROID_HOME=$HOME/Android/Sdk
export PATH=$PATH:$ANDROID_HOME/platform-tools