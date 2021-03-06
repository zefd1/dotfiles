export PATH="$HOME/.bin:$PATH"

# Setup rbenv
export PATH="$HOME/.rbenv/bin:$PATH"
eval "$(rbenv init -)"

# PS1
export PS1="\u:\[\033[0;0m\]\[\033[1;32m\]\w\[\033[0;0m\] \\$ "

# Source aliases and functions
source ~/.bashrc
source ~/.bash_func
source ~/.bash_aliases
source ~/.bash_styles
if [ -d ~/workspace/google-cloud-sdk ]; then
  source ~/workspace/google-cloud-sdk/completion.bash.inc
  source ~/workspace/google-cloud-sdk/path.bash.inc
fi

export PATH="/usr/local/opt/python/libexec/bin:$PATH"

# For now, just use personal AWS
set-aws personal
