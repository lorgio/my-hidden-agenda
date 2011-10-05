[[ -s "/Users/ljime3/.rvm/scripts/rvm" ]] && source "/Users/ljime3/.rvm/scripts/rvm"  # This loads RVM into a shell session.
function parse_git_branch {
  git branch --no-color 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/(\1)/'
}

function proml {
  local        BLUE="\[\033[0;34m\]"
  local         RED="\[\033[0;31m\]"
  local   LIGHT_RED="\[\033[1;31m\]"
  local       GREEN="\[\033[0;32m\]"
  local LIGHT_GREEN="\[\033[1;32m\]"
  local       WHITE="\[\033[1;37m\]"
  local  LIGHT_GRAY="\[\033[0;37m\]"
	local   		BLACK="\[\030[0;47m\]"
	local	 BOLD_BLACK='\e[1;30m' # Black - Bold
	local	 TEXT_BLACK='\e[0;30m' # Black - Regular
	local	 TEXT_RESET='\e[0m'    # Text Reset


  case $TERM in
    xterm*)
    TITLEBAR='\[\033]0;\u@\h:\w\007\]'
    ;;
    *)
    TITLEBAR=""
    ;;
  esac

PS1="${TITLEBAR}\
$BLUE[$RED\$(date +%H:%M)$BLUE]\
$BLUE[$RED\u@\h:\w$GREEN\$(parse_git_branch)$BLUE]\
$LIGHT_GRAY\$ "
PS2='> '
PS4='+ '
}
proml

alias mateme="mate Gemfile README app/ lib/ config/ features/ spec/ public/javascripts public/stylesheets"
alias vime="mvim ."
alias tlgo='cd /Users/ljime3/Sites/travelandleisure'
alias etgo='rvm use 1.8.6; rvm gemset use travel; cd /Users/ljime3/Sites/executive-travel'
alias depgo='rvm use 1.8.6; rvm gemset use travel; cd /Users/ljime3/Sites/departures'
alias skygo='rvm use ree; cd /Users/ljime3/Sites/eskyguide'
alias redgo='rvm use 1.8.6; cd /Users/ljime3/Sites/redmine'
alias vengo='cd ~/Sites/venues_sql_service/'
alias geogo='cd ~/Sites/geo_couch/'
alias pg_start='pg_ctl -D /usr/local/var/postgres -l /usr/local/var/postgres/server.log start'
alias pg_stop='pg_ctl -D /usr/local/var/postgres stop -s -m fast'
alias fix_brew='sudo chown ljime3:wheel /usr/local/'
alias be='bundle exec'
alias ms_sql_connect='iodbctest "dsn=oats_dev_lj;uid=rails_dev;pwd=r@1L51120"'
alias mergetool='git mergetool -t opendiff'
alias autotest='AUTOFEATURE=true autotest'
export ODBCINI=/usr/local/etc/odbc.ini
export ODBCSYSINI=/usr/local/etc/odbcinst.ini
export FREETDSCONF=/usr/local/etc/freetds.conf
export BUNDLER_EDITOR=`which mvim`
# export RUBYLIB="/usr/local/lib:$RUBYLIB"

# LDFLAGS: -L/usr/local/Cellar/libxml2/2.7.8/lib
# CPPFLAGS: -I/usr/local/Cellar/libxml2/2.7.8/include

# export LDFLAGS="$LDFLAGS /usr/local/Cellar/libxml2/2.7.8/lib"
# export CPPFLAGS="$CPPFLAGS /usr/local/Cellar/libxml2/2.7.8/include"
AUTOFEATURE=true
# if [ -f `brew --prefix`/etc/bash_completion ]; then
#   . `brew --prefix`/etc/bash_completion
# fi


# PATH=/Users/ljime3/.rvm/rubies/ruby-1.8.6-p420/bin:/Users/ljime3/.rvm/gems/ruby-1.8.6-p420/bin:/usr/local/bin:$PATH ; export PATH
# RUBYLIB=/usr/local/lib ; export RUBYLIB
/bin/zsh
