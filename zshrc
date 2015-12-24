export ZSH=$HOME/.oh-my-zsh

export EDITOR='vim'
export SHELL='/bin/zsh'
export TERM="xterm-256color"

DISABLE_AUTO_TITLE="true"

source ~/.bin/tmuxinator.zsh

# Env config
[[ -f ~/.zshrc.env ]] && source ~/.zshrc.env

# Local env config
[[ -f ~/.zshrc.env.local ]] && source ~/.zshrc.env.local

# Aliases config
[[ -f ~/.zshrc.aliases ]] && source ~/.zshrc.aliases

# Local aliases
[[ -f ~/.zshrc.aliases.local ]] && source ~/.zshrc.aliases.local

#export RBENV_ROOT=/usr/local/var/rbenv

#PATH for rbenv
#export PATH="$HOME/.rbenv/shims:$PATH"
#if which rbenv > /dev/null; then eval "$(rbenv init - zsh)"; fi
#eval "$(rbenv init - zsh)"

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
# ZSH_THEME="robbyrussell"
# ZSH_THEME="sorin"
ZSH_THEME="cobalt2"
# ZSH_THEME="bullet-train"

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

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
COMPLETION_WAITING_DOTS="true"

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
plugins=(git brew common-aliases gem battery)
# plugins=(cake git sublime osx git-flow git-extras npm node theme web-search battery)

# User configuration

export PATH="/opt/local/bin:/opt/local/sbin:/usr/local/heroku/bin:/usr/local/mysql/bin:/Users/Max/.composer/vendor/bin:/opt/local/bin:/opt/local/sbin:/usr/local/pear/bin:/usr/local/pear/share/pear:/usr/local/git/bin:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/opt/X11/bin:/usr/local/git/bin"

export RBENV_ROOT=/usr/local/var/rbenv

#PATH for rbenv
#export PATH="$HOME/.rbenv/shims:$PATH"
#PATH for jshint
export PATH="$PATH:/usr/local/bin/jshint"
#PATH for eslint
export PATH="$PATH:/usr/local/bin/eslint"
#PATH for rbenv
export PATH="$PATH:/usr/local/var/rbenv"
#PATH for rbenvi shims
export PATH="$PATH:/usr/local/var/rbenv/shims"
#PATH for rubocop
export PATH="$PATH:/usr/local/var/rbenv/shims/rubocop"
#PATH for ruby
export PATH="$PATH:/usr/local/var/rbenv/shims/ruby"
#if which rbenv > /dev/null; then eval "$(rbenv init - zsh)"; fi
eval "$(rbenv init - zsh)"

source $ZSH/oh-my-zsh.sh

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# ssh
function tab-title {
	echo -ne "\033]0;"$*"\007"
}

# added by travis gem
[ -f /Users/Max/.travis/travis.sh ] && source /Users/Max/.travis/travis.sh

export NVM_DIR="/Users/Max/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm