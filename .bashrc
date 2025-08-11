#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias grep='grep --color=auto'
alias night='redshift -O 1500'
alias day='redshift -x'

PS1='\[\e[96m\]\w\n\[\e[0m\]'
# PROMPT_COMMAND='PS1_CMD1=$(__git_ps1 " (%s)")'; PS1='\[\e[2m\]\t\[\e[0m\] [\h \W]\[\e[38;5;160m\]${PS1_CMD1}\[\e[0m\] λ '
# PROMPT_COMMAND='PS1_CMD1=$(__git_ps1 " (%s)")'
# PS1='\[\e[2m\]\t\[\e[0m\] [\h \W]\[\e[38;5;160m\]${PS1_CMD1}\[\e[0m\] λ '
# PS1='\[\e[2m\]\t\[\e[0m\] [\h \W] \[\e[96m\]λ\[\e[0m\] '
alias ll="ls -lah"
export EDITOR=vim
export VISUAL=vim
export SUDO_EDITOR=vim



# Load Angular CLI autocompletion.
source <(ng completion script)

# Enable fzf key bindings
if [ -f /usr/share/fzf/key-bindings.bash ]; then
    source /usr/share/fzf/key-bindings.bash
fi

# Optional: fuzzy auto-completion
if [ -f /usr/share/fzf/completion.bash ]; then
    source /usr/share/fzf/completion.bash
fi

