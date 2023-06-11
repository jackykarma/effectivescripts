
export ANDROID_HOME=~/softarclee/android-sdk
export ANDROID_NDK_HOME=~/softarclee/android-sdk/ndk-bundle
export NDK_HOME=~/softarclee/android-sdk/ndk-bundle
export ANDROID_TOOLS=$ANDROID_HOME/tools/bin:$ANDROID_HOME/platform-tools:$ANDROID_HOME/build-tools/29.0.0
export SYSTRACE=$ANDROID_HOME/platform-tools/systrace

export JAVA_7_HOME="$(/usr/libexec/java_home -v 1.7)"
export JAVA_8_HOME="$(/usr/libexec/java_home -v 1.8)"

alias jdk7='export JAVA_HOME=$JAVA_7_HOME'
alias jdk8='export JAVA_HOME=$JAVA_8_HOME'

# 默认使用JDK8 a52
export JAVA_HOME=$JAVA_8_HOME

TERM=xterm-256color

export PS1="\[\033[36m\]\u\[\033[m\]@\[\033[32m\]\h:\[\033[33;1m\]\w\[\033[m\]\$ "
export CLICOLOR=1
export LSCOLORS=ExFxBxDxCxegedabagacad

alias ls='ls -GFh'
alias ll='ls -alG'
alias rm='rm -i'

export PROXYCHAINS_CONF_FILE=/etc/proxychains4.conf
export EFECTIVE_SCRIPTS_HOME=~/softarclee/effectivescripts/

export PATH=$PATH:/opt/local/bin:/usr/local/bin/:/usr/bin/:/bin/:/usr/sbin/:/sbin/
export PATH=$PATH:$ANDROID_TOOLS:$ANDROID_NDK_HOME:$EFECTIVE_SCRIPTS_HOME:$SYSTRACE

if [ -f $(brew --prefix)/etc/bash_completion ]; then
  . $(brew --prefix)/etc/bash_completion
fi

#alias minicom='minicom -c on'

#alias which='alias | /usr/bin/which --tty-only --read-alias --show-dot --show-tilde'

export PATH="/usr/local/opt/subversion@1.8/bin:$PATH"

# set the number of open files to be 1024
ulimit -S -n 1024

hdiutil attach ~/softarclee/android.dmg.sparseimage -mountpoint ~/softarclee/aospCode/

export PATH=/usr/local/opt/curl-openssl/bin:/usr/local/opt/subversion@1.8/bin:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/opt/local/bin:/usr/local/bin/:/usr/bin/:/bin/:/usr/sbin/:/sbin/:/Users/michael/softarclee/android-sdk/tools/bin:/Users/michael/softarclee/android-sdk/platform-tools:/Users/michael/softarclee/android-sdk/build-tools/29.0.0:/Users/michael/softarclee/android-sdk/ndk-bundle:/Users/michael/softarclee/effectivescripts/:/Users/michael/softarclee/android-sdk/platform-tools/systrace

# 所有的颜色输出必须用\[\e[1;34m]或\[\e0m关闭这样的格式；而不是\e[1;34m]和\e[0m]，因为会导致命令输入换行时会覆盖当前行的问题
# export PS1="🦋 \[\e[1;34m\u\[\e[0m ☯︎ :\[\e[0;35m\w\[\e[0m \[\e[1;31m\\$ \[\e[0m"
# export PS1="🦋 \[\e[1;34m\u@\[\e[5;33m\h ☯︎ \[\e[0;34m\w \[\e[1;31m\\$ \[\e[0m"
export PS1="🦋 \[\033[1m\]\u\[\033[m\] ☯︎ : \[\033[35;1m\]\w\[\033[m\]$ "
# 系统默认,没有bug
# export PS1="\[\033[36m\]\u\[\033[m\]@\[\033[32m\]\h:\[\033[33;1m\]\w\[\033[m\]$ "

FLUTTER_HOME=$HOME/softarclee/flutter/bin
export PATH=$PATH:$FLUTTER_HOME
