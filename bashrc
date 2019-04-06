# display current and parent folder in the prompt without username
PS1='\[\033[01;32m\]\h\[\033[01;34m\] ${PWD#"${PWD%/*/*}/"} \$\[\033[00m\] '
# display current and parent folder in the prompt
#PS1='\[\033[01;32m\]\u@\h\[\033[01;34m\] ${PWD#"${PWD%/*/*}/"} \$\[\033[00m\] '
# original
#\[\033[01;32m\]\u@\h\[\033[01;34m\] \w \$\[\033[00m\]
# good, one folder
#PS1='\[\033[01;32m\]\u@\h\[\033[01;34m\] \W \$\[\033[00m\] '

# Configure bash completion
if type brew &>/dev/null; then
  for COMPLETION in $(brew --prefix)/etc/bash_completion.d/*
  do
    [[ -f $COMPLETION ]] && source "$COMPLETION"
  done
  if [[ -f $(brew --prefix)/etc/profile.d/bash_completion.sh ]];
  then
    source "$(brew --prefix)/etc/profile.d/bash_completion.sh"
  fi
fi

export GIT_EDITOR=vim
export VISUAL=vim
export EDITOR="$VISUAL"
# PHP environment
export COMPOSER_HOME="$HOME/.composer"
export PATH="$PATH:$COMPOSER_HOME/vendor/bin"
# Java environment
export JAVA_HOME="$(/usr/libexec/java_home -v 1.8)"
export PATH="$PATH:$JAVA_HOME/bin"
# Hadoop Installing Hadoop in Pseudo Distributed Mode
export HADOOP_HOME=/usr/local/Cellar/hadoop/3.1.1/libexec
export HADOOP_CLASSPATH=$(find $HADOOP_HOME -name '*.jar' | xargs echo | tr ' ' ':')
export HADOOP_MAPRED_HOME=$HADOOP_HOME 
export HADOOP_COMMON_HOME=$HADOOP_HOME 
export HADOOP_HDFS_HOME=$HADOOP_HOME 
export YARN_HOME=$HADOOP_HOME 
export HADOOP_COMMON_LIB_NATIVE_DIR=$HADOOP_HOME/lib/native 
export PATH=$PATH:$HADOOP_HOME/sbin:$HADOOP_HOME/bin 
export HADOOP_INSTALL=$HADOOP_HOME 
# MySQL environment
export PATH=${PATH}:/usr/local/mysql/bin
export PATH=${PATH}:/usr/local/mysql/support-files
export PATH="/usr/local/sbin:$PATH"
# Ruby environment
# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
export PATH="$PATH:$HOME/.rvm/bin"
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*
