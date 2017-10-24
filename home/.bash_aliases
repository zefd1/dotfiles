############################################################
#  aliases
############################################################
alias ls="ls -G"
alias ll='ls -l'
alias clr='clear'
alias df='df -kTh'
alias mv='mv -i'
alias cp='cp -i'
alias grep='grep --color=auto --exclude-dir="\.git" --exclude-dir="\.svn"'
alias egrep='egrep --color=auto --exclude-dir="\.git" --exclude-dir="\.svn"'
alias fgrep='fgrep --color=auto --exclude-dir="\.git" --exclude-dir="\.svn"'
alias t1='tail -n1'
alias h1='head -n1'
alias vi='vim'
alias g='hub_or_git'
alias sbp="source_if_exists $HOME/.bash_profile"
alias hr="cd $HSR"
alias rakeit="rake db:drop && rake db:create && rake db:migrate && rake db:seed"
alias beeline="beeline --color=true"
alias tree="tree -I sandcube"
alias brew_cleaner="brew update && brew upgrade brew-cask && brew cleanup && brew cask cleanup"
alias ws='cd ~/workspace'
alias d='docker'

alias hideme='history -d $((HISTCMD-1)) &&'
alias git=hub

alias vi='vim'
alias column_names='head -n1 |tr "\t" "\n" | nl'
export GRC=`which grc 2>/dev/null`
if [ "$TERM" != dumb ] && [ -n GRC ]
then
  alias colourify="$GRC -es --colour=auto"
  alias mvnk="colourify -c $HOME/.grc/mvn.config mvn"
  alias kat="colourify -c $HOME/.grc/mvn.config"
fi
