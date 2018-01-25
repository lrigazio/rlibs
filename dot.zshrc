# Path to your oh-my-zsh installation.
export ZSH=/home/luca/.oh-my-zsh

# Set name of the theme to load. Optionally, if you set this to "random"
# it'll load a random theme each time that oh-my-zsh is loaded.
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME="robbyrussell"
# ZSH_THEME="agnoster"

# Set list of themes to load
# Setting this variable when ZSH_THEME=random
# cause zsh load theme from this variable instead of
# looking in ~/.oh-my-zsh/themes/
# An empty array have no effect
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion. Case
# sensitive completion must be off. _ and - will be interchangeable.
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
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(
  git
  zsh-autosuggestions
)

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

####### HISTORY
HISTFILE="$HOME/.zsh_history"
HISTSIZE=10000000
SAVEHIST=10000000

setopt AUTO_CD                   # cd with dir only

setopt INC_APPEND_HISTORY        # Write to the history file immediately, not when the shell exits.
setopt SHARE_HISTORY             # Share history between all sessions.

setopt BANG_HIST                 # Treat the '!' character specially during expansion.
setopt EXTENDED_HISTORY          # Write the history file in the ":start:elapsed;command" format.
setopt HIST_IGNORE_SPACE         # Don't record an entry starting with a space.
setopt HIST_IGNORE_DUPS          # Don't record an entry that was just recorded again.
setopt HIST_IGNORE_ALL_DUPS      # Delete old recorded entry if new entry is a duplicate.
setopt HIST_EXPIRE_DUPS_FIRST    # Expire duplicate entries first when trimming history.
setopt HIST_FIND_NO_DUPS         # Do not display a line previously found.
setopt HIST_SAVE_NO_DUPS         # Don't write duplicate entries in the history file.
setopt HIST_REDUCE_BLANKS        # Remove superfluous blanks before recording entry.
setopt HIST_VERIFY               # Don't execute immediately upon history expansion.
setopt HIST_BEEP                 # Beep when accessing nonexistent history.
setopt HIST_NO_STORE             # Don't store `history` or `fc` command lines

# control-x
stty intr ^X
stty -ixon

###### PATH
# If you come from bash you might have to change your $PATH.
export PATH=.:$HOME/bin:/usr/local/bin:$PATH
export LD_LIBRARY_PATH=/usr/local/lib64:/usr/local/lib:/usr/lib/x86_64-linux-gnu:$LD_LIBRARY_PATH
# Cuda
export PATH=/usr/local/cuda/bin:$PATH
export CUDA_LIB=/usr/local/cuda/lib64
export LD_LIBRARY_PATH=/usr/local/cuda/lib64:$LD_LIBRARY_PATH
export LD_LIBRARY_PATH=/usr/local/cuda-8.0/lib64:$LD_LIBRARY_PATH
# MY STUFF
export PATH=$PATH:~/bin

###### ALIASES
alias m=more
alias so=source
alias cls='clear'
alias rd='\rm -rf'
alias fi='find . -name'
alias cp='cp -i'
alias mv='mv -i'
alias rm='rm -i'
alias dir='ls | grep /'
alias ll='ls -l'
alias la='ls -a'
alias ll='ls -l'
alias lk='ls -rt'
alias lkl='ls -rtl'

alias ll='ls -alF'
alias lh='ls -rtalFh'
alias la='ls -A'
alias l='ls -CF'

alias du='du --max-depth 1 -h'
alias h='history'
alias hh='history | grep $1'
alias ha='ls -rt ~/logs/*log | xargs cat | grep $1'
alias hs='(echo "###" `date` "###" `pwd` ; history) >> ~/lifebook.txt'
alias hf='cat ~/lifebook.txt | grep'

alias ff='find . -type f | grep $1'
alias src='find . -type f | xargs grep $1'
alias ft='find . -type f | xargs ls -lrt'

alias af='apt-file find $1'
alias al='apt-file list $1'
alias ag='sudo apt-get -y install $1'
alias as='apt-cache search $1'
alias arm='sudo apt-get remove $1'
alias ai='dpkg --get-selections'
alias av='dpkg -s'

alias clnr='sed "s:.*\r\([^\r]*\)$:\1:g" $1'
alias reso='source ~/.bashrc'

alias c='pwd > ~/.cdir'
alias d='cd `cat ~/.cdir`'

alias cc='echo > ~/.ccmd'
alias dd='bash ~/.ccmd'

alias nv='nvidia-smi'

gitsync_f(){
  [[ $1 ]] && msg=$@ || msg="sync"
  git commit -a -m "$msg"
  git push
}
alias gitsync=gitsync_f

alias gitcommit='git commit -a -m'
