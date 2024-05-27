# Android SDK
export ANDROID_HOME=~/Library/Android/sdk
export ANDROID_SDK_ROOT=~/Library/Android/sdk
#export JAVA_HOME=/Library/Java/JavaVirtualMachines/zulu-8.jdk/Contents/Home
export JAVA_HOME=`/usr/libexec/java_home`
export PATH=$PATH:$ANDROID_HOME/platform-tools
export PATH=$PATH:$ANDROID_HOME/tools
export PATH=$PATH:$ANDROID_HOME/tools/bin
export PATH=$PATH:$ANDROID_HOME/emulator

export PATH=~/.local/bin:~/.composer/vendor/bin:$PATH

# default editor
export VISUAL=nvim
export EDITOR="$VISUAL"

# private env
[[ ! -f ~/.profile ]] || source ~/.profile

