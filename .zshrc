# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="/Users/Genkou/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME="candy"

# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in ~/.oh-my-zsh/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load?
# Standard plugins can be found in ~/.oh-my-zsh/plugins/*
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(
  git zsh-syntax-highlighting zsh-syntax-highlighting zsh-completions rbenv vagrant gem cdd)

# zsh-completions$B$N@_Dj(B
autoload -U compinit && compinit -u

source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/rsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

#PATH setting
export PATH=~/.pyenv/versions/anaconda3-4.2.0/bin/:$PATH
#move to a directory without cd
setopt auto_cd
cdpath=(.. ~ ~/src)
# $B?'$r;HMQ=PMh$k$h$&$K$9$k(B
autoload -Uz colors
colors
# $BJ8;z%3!<%I$N;XDj(B
export LANG=ja_JP.UTF-8
# cd -<tab>$B$G0JA00\F0$7$?%G%#%l%/%H%j$rI=<((B
setopt auto_pushd
# $B%R%9%H%j(B($BMzNr(B)$B$rJ]B8!"?t$rA}$d$9(B
HISTFILE=~/.zsh_history
HISTSIZE=100000
SAVEHIST=100000

# $BF1;~$K5/F0$7$?(Bzsh$B$N4V$G%R%9%H%j$r6&M-$9$k(B
setopt share_history

# $BD>A0$HF1$8%3%^%s%I$N>l9g$OMzNr$KDI2C$7$J$$(B
setopt hist_ignore_dups

#Enter$B%-!<$G(Bls$B$,<B9T$5$l$k%3!<%I(B 
alls() {
  zle accept-line
  if [[ -z "$BUFFER" ]]; then
    echo ''
    ls
  fi
}
zle -N alls
bindkey "\C-m" alls

#alias
alias v='vim'
alias z='vim ~/.zshrc'
alias s='source ~/.zshrc'
