# rbenv
export PATH=/usr/local/bin:$PATH
eval "$(rbenv init -)"

# aws eb
source ~/Library/Python/3.7/bin/eb_completion.bash
export PATH=~/Library/Python/3.7/bin:$PATH

# Java
export JAVA_HOME=`/usr/libexec/java_home -v 10`

[ -f /usr/local/etc/bash_completion ] && . /usr/local/etc/bash_completion
if type __git_ps1 > /dev/null 2>&1 ; then
  # PROMPT_COMMAND="__git_ps1 '\h:\W \u' '\$ '; "
  PROMPT_COMMAND="__git_ps1 '\u:\W' '\$ '; "
  GIT_PS1_SHOWDIRTYSTATE=true
  GIT_PS1_SHOWSTASHSTATE=true
  GIT_PS1_SHOWUNTRACKEDFILES=true
  GIT_PS1_SHOWUPSTREAM="auto"
  GIT_PS1_SHOWCOLORHINTS=true
fi

