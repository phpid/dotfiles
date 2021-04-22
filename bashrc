#PS1='\[\033[01;32m\]\u@\h\[\033[01;34m\] \W \$\[\033[00m\] '

export PATH="/usr/local/sbin:$PATH"

# Starship prompt configuration
export PATH="$PATH:$HOME/.cargo/bin"

# Vim configuration
export GIT_EDITOR=vim
export VISUAL=vim
export EDITOR="$VISUAL"
export HISTCONTROL=ignorespace

# Git settings
# same as running git pull in each submodule
# alias git-submodule-update='git submodule update --remote --merge'
alias git-submodule-update='git pull --recurse-submodules'

# PHP environment
#export COMPOSER_HOME="$HOME/.composer"
#export PATH="$PATH:$COMPOSER_HOME/vendor/bin"

# Java environment
export JAVA_HOME="$(/usr/libexec/java_home -v 11)"
export CLASSPATH=${CLASSPATH}:bin:.
export PATH="$PATH:$JAVA_HOME/bin"
export GLASSFISH_HOME=/usr/local/opt/glassfish/libexec

# Hadoop Installing Hadoop in Pseudo Distributed Mode
#export HADOOP_HOME=/usr/local/Cellar/hadoop/3.1.2/libexec
#export HADOOP_CLASSPATH=$(find $HADOOP_HOME -name '*.jar' | xargs echo | tr ' ' ':')
#export HADOOP_MAPRED_HOME=$HADOOP_HOME
#export HADOOP_COMMON_HOME=$HADOOP_HOME
#export HADOOP_HDFS_HOME=$HADOOP_HOME
#export YARN_HOME=$HADOOP_HOME
#export HADOOP_COMMON_LIB_NATIVE_DIR=$HADOOP_HOME/lib/native
#export PATH=$PATH:$HADOOP_HOME/sbin:$HADOOP_HOME/bin
#export HADOOP_INSTALL=$HADOOP_HOME

# MySQL environment
export PATH="$PATH:/usr/local/opt/mysql@5.7/bin"
export PATH="$PATH:/usr/local/opt/mysql@5.7/support-files"
#export PATH=${PATH}:/usr/local/mysql/bin
#export PATH=${PATH}:/usr/local/mysql/support-files

# Node environment
#export PATH="/usr/local/opt/node@8/bin:$PATH"
export NVM_DIR="$HOME/.nvm"
[ -s "/usr/local/opt/nvm/nvm.sh" ] && . "/usr/local/opt/nvm/nvm.sh"  # This loads nvm
[ -s "/usr/local/opt/nvm/etc/bash_completion.d/nvm" ] && . "/usr/local/opt/nvm/etc/bash_completion.d/nvm"  # This loads nvm bash_completion

# Xcode environment
export SDKROOT=macosx10.14

# Ruby environment
# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
# export PATH="$PATH:$HOME/.rvm/bin"
# [[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*
eval "$(rbenv init -)"

# PostgreSQL environment
export PATH="$PATH:/usr/local/opt/libpq/bin"

eval "$(starship init bash)"
