# Setting PATH for Python 3.6
# The original version is saved in .bash_profile.pysave
PATH="/Library/Frameworks/Python.framework/Versions/3.6/bin:${PATH}"
PATH="/usr/local/etc/grc.bashrc:${PATH}"
export LC_CTYPE=C 
export LANG=C
export CLICOLOR=1
export LSCOLORS=ExFxCxDxBxegedabagacad
export PATH
export KALDI_ROOT=~/MyFiles/packages/kaldi
#source $KALDI_ROOT/egs/aishell/s5/path.sh
export PATH="$(brew --prefix coreutils)/libexec/gnubin:/usr/local/bin:$PATH"

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/nithin_rao/Downloads/google-cloud-sdk/path.bash.inc' ]; then . '/Users/nithin_rao/Downloads/google-cloud-sdk/path.bash.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/Users/nithin_rao/Downloads/google-cloud-sdk/completion.bash.inc' ]; then . '/Users/nithin_rao/Downloads/google-cloud-sdk/completion.bash.inc'; fi
# modify the prompt to contain git branch name if applicable
