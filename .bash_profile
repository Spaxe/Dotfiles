alias ls="ls -fGH"
alias ll="ls -aFhl"
alias cd..="cd .."
alias ..="cd .."
alias grep="grep --color"
alias copy="rsync -ahirv --progress"
alias wgetall="wget --no-verbose --no-parent --recursive --level=1 --no-directories"
alias date="gdate"
alias lock="open -a ScreenSaverEngine"

# gpg-agent prompt
# github massar/pinentry-mac
export GPG_TTY=$(tty)
if [ -f "${HOME}/.gpg-agent-info" ]; then
  . "${HOME}/.gpg-agent-info"
  export GPG_AGENT_INFO
fi

# Autojump
# brew install autojump
[[ -s $(brew --prefix)/etc/profile.d/autojump.sh ]] && . $(brew --prefix)/etc/profile.d/autojump.sh

# Bash completion (& for git)
# brew install bash-completion
[ -f /usr/local/etc/bash_completion ] && . /usr/local/etc/bash_completion

# Executables paths
export PATH=$HOME/dev/Dotfiles:/usr/local/bin:$PATH

# 2019-01-02 installed github powerline/powerline
# NOTE: If updating powerline, also update .vimrc
source /usr/local/lib/python3.7/site-packages/powerline/bindings/bash/powerline.sh

# 2019-01-07 Google Cloud SDK, installed via Homebrew
# Data61
source '/usr/local/Caskroom/google-cloud-sdk/latest/google-cloud-sdk/path.bash.inc'
source '/usr/local/Caskroom/google-cloud-sdk/latest/google-cloud-sdk/completion.bash.inc'

# 2019-02-21 Java SDK, installed via homebrew 
# brew tap AdoptOpenJDK/openjdk
# brew cask install adoptopenjdk8
export JAVA_HOME=$(/usr/libexec/java_home -v 1.8)
