# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/Users/nithinrao/miniconda3/bin/conda' 'shell.bash' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/Users/nithinrao/miniconda3/etc/profile.d/conda.sh" ]; then
        . "/Users/nithinrao/miniconda3/etc/profile.d/conda.sh"
    else
        export PATH="/Users/nithinrao/miniconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<

export PATH="/usr/local/opt/gettext/bin:$PATH"
# export PS1="\[\033[36m\]\u\[\033[m\]@\[\033[32m\]\h:\[\033[33;1m\]\w\[\033[m\]\$ "
# export PS1="\[\033[33;1m\]\w\[\033[m\]\$ "
# export PS1="\[\033[m\]\$ "
export CLICOLOR=1
export LSCOLORS=ExFxBxDxCxegedabagacad
alias ls='ls -GFh'

##
# Your previous /Users/nithinrao/.bash_profile file was backed up as /Users/nithinrao/.bash_profile.macports-saved_2019-11-19_at_14:38:43
##

# Bash Prompt
PS1="\[\e]0;\u@\h: \W\a\]\[\033[01;31m\]\u@\h\[\033[00m\]:\[\033[00;36m\]\W\[\033[00m\]\$ "
PS1="\[\033[36m\][\[\033[m\]\[\033[34m\]\u@\h\[\033[m\] \[\033[32m\]\W\[\033[m\]\[\033[36m\]]\[\033[m\] $ "

# MacPorts Installer addition on 2019-11-19_at_14:38:43: adding an appropriate PATH variable for use with MacPorts.
export PATH="/opt/local/bin:/opt/local/sbin:$PATH"
# Finished adapting your PATH environment variable for use with MacPorts.
bind -r '\C-s'
stty -ixon
