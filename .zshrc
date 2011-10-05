# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="robbyrussell"

# Set to this to use case-sensitive completion
# CASE_SENSITIVE="true"

# Comment this out to disable weekly auto-update checks
# DISABLE_AUTO_UPDATE="true"

# Uncomment following line if you want to disable colors in ls
# DISABLE_LS_COLORS="true"

# Uncomment following line if you want to disable autosetting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment following line if you want red dots to be displayed while waiting for completion
# COMPLETION_WAITING_DOTS="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(git brew bundler git powder rails3 ruby rvm vi-mode)

source $ZSH/oh-my-zsh.sh

# Customize to your needs...
export PATH=/Users/ljime3/.rvm/gems/ruby-1.8.7-p352@destination_guides/bin:/Users/ljime3/.rvm/gems/ruby-1.8.7-p352@global/bin:/Users/ljime3/.rvm/rubies/ruby-1.8.7-p352/bin:/Users/ljime3/.rvm/bin:/Users/ljime3/.rvm/gems/ruby-1.8.7-p352@tl-tools/bin:/Users/ljime3/.rvm/gems/ruby-1.8.7-p352@global/bin:/Users/ljime3/.rvm/rubies/ruby-1.8.7-p352/bin:/Users/ljime3/.rvm/bin:/Users/ljime3/.rvm/gems/ruby-1.8.7-p352/bin:/Users/ljime3/.rvm/gems/ruby-1.8.7-p352@global/bin:/Users/ljime3/.rvm/rubies/ruby-1.8.7-p352/bin:/Users/ljime3/.rvm/bin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/bin:/usr/local/git/bin:/usr/X11/bin

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
