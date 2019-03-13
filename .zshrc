# sauce spicy stuff
test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"

# smart cd
[ -f /usr/local/etc/profile.d/autojump.sh ] && . /usr/local/etc/profile.d/autojump.sh

# enable zsh-completion
fpath=(/usr/local/share/zsh-completions $fpath)

# --------------------------------------------------------------
#                       User configuration
# --------------------------------------------------------------

# setopts... boring 
setopt auto_cd                  # if not a command, try to cd to it.
setopt complete_aliases         # do not expand aliases _before_ completion has finished
setopt no_hist_beep             # don not beep on history expansion errors
setopt hist_ignore_all_dups     # when runing a command several times, only store one
setopt hist_reduce_blanks       # reduce whitespace in history
setopt hist_verify              # reload full command when runing from history
setopt interactive_comments     # comments in history
setopt numeric_glob_sort        # when globbing numbered files, use real counting

# PAAAAATH 
export PATH="$HOME/Applications/flutter/bin:$PATH"
export PATH="$HOME/Library/Android/sdk/platform-tools:$PATH"
export PATH="$HOME/.cargo/bin:$PATH"
export PATH="/Users/lorenzobertolino/Library/Python/3.7/bin:$PATH"
export PATH="/Users/lorenzobertolino/Library/Python/2.7/bin:$PATH"
export PATH="/usr/local/sbin:$PATH"
export PATH="$PATH:/Applications/MacVim.app/Contents/bin"
export PATH="$PATH:/opt/metasploit-framework/bin"
# export HOMEBREW_NO_INSECURE_REDIRECT=1
# export HOMEBREW_CASK_OPTS=--require-sha
export LANG=en_US.UTF-8
export LC_ALL=$LANG
export LC_CTYPE=$LANG
export EDITOR=vim
export VISUAL=less
export MANPATH="/usr/local/man:$MANPATH"
export SSH_KEY_PATH="~/.ssh/rsa_id"

# java
if which jenv > /dev/null; then eval "$(jenv init -)"; fi
export JAVA_HOME="`/usr/libexec/java_home -v 1.8`"

# HEEEEELPPP MEEEE

autoload -Uz run-help
alias help=run-help
autoload -Uz run-help-git
autoload -Uz run-help-ip
autoload -Uz run-help-openssl

# ---------------------------------------------------------------
#                               ZSH
# ---------------------------------------------------------------

# !!! source zsh al fondo perché altrimenti si rompe tutto

export ZSH="$HOME/.oh-my-zsh" # Path to oh-my-zsh

ZSH_THEME="bureau"
DEFAULT_USER="lorenzobertolino"

# _ and -  interchangeable.
HYPHEN_INSENSITIVE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
DISABLE_UNTRACKED_FILES_DIRTY="true"

plugins=(
  autojump
  aws
  brew
  colored-man 
  colorize
  compleat
  copyfile
  encode64
  extract
#  git
#  git-flow
  history
  jsontools
#  lol
  osx
  pip
  pod
  python
  sprunge
  ssh-agent
  urltools
# vscode
#  web-search
  zsh-syntax-highlighting
)

# !!! Sempre al fondo!!
source $ZSH/oh-my-zsh.sh

# ruby shit
  export PATH="/usr/local/opt/ruby/bin:$PATH"
  export LDFLAGS="-L/usr/local/opt/ruby/lib"
  export CPPFLAGS="-I/usr/local/opt/ruby/include"
  export PKG_CONFIG_PATH="/usr/local/opt/ruby/lib/pkgconfig"

test -e ~/.dir_colors && \
     eval `gdircolors -b ~/.dir_colors`
neofetch

