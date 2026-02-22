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
eval "$(oh-my-posh init bash --config '~/.mytheme.omp.json')"

# git credentials environmental variables 
export GIT_ASKPASS="";
export SSH_ASKPASS="";

# terminal environmental variable
export TERMINAL=alacritty

# Load Angular CLI autocompletion
if command -v ng &> /dev/null; then
    source <(ng completion script)
fi

# environment variables for gtk / qt
export GTK_THEME=Adwaita:dark
export GTK_2_CONFIG_HOME="$HOME/.gtkrc-2.0"
export QT_QPA_PLATFORMTHEME=qt6ct