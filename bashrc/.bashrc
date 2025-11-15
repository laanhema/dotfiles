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

# oh-my-posh theme
# eval "$(oh-my-posh init bash --config 'https://raw.githubusercontent.com/JanDeDobbeleer/oh-my-posh/main/themes/bubblesextra.omp.json')"
# eval "$(oh-my-posh init bash --config 'https://raw.githubusercontent.com/JanDeDobbeleer/oh-my-posh/main/themes/bubbles.omp.json')"
eval "$(oh-my-posh init bash --config '~/.mytheme.omp.json')"

# git credentials environmental variables 
export GIT_ASKPASS="";
export SSH_ASKPASS="";

export TERMINAL=alacritty

# Load Angular CLI autocompletion.
source <(ng completion script)
