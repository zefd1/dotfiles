export PATH="$HOME/.bin:$PATH"
export workspace="$HOME/opower"
export PATH="/usr/local/bin:$PATH"
export GITHUB_HOST=github.va.opower.it
export POSE_USER=zef.delgadillo
export GIT_USER=zef-delgadillo
export MYSQL_PASSWORD=NOT_USED
export NO_OPOWER_GIT_PROMPT=true
source $workspace/opower.bash/opower.bash
export JAVA_HOME=`/usr/libexec/java_home -v 1.7`

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*
[[ -s "$HOME/.rvm/scripts/rvm" ]] && . "$HOME/.rvm/scripts/rvm"
export PATH="/usr/local/mysql/bin:$PATH"

source ~/.bashrc
source ~/.bash_func
source ~/.bash_aliases
source ~/.bash_styles

export PS1="\u:\[\033[0;0m\]\[\033[1;32m\]\w\[\033[0;0m\] \\$ "
source $HOME/.bash_kettle_helpers
export workspace_client=/Users/zef.delgadillo/opower/clients

source /Users/zef.delgadillo/opower/techops.bash/techops.bash
export APP_TIER=local
export APP_TIER=local
