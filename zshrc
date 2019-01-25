export ZSH=$HOME/.oh-my-zsh

export EDITOR='vim'
export SHELL='/bin/zsh'
export TERM="xterm-256color"

DISABLE_AUTO_TITLE="true"

# source ~/.bin/tmuxinator.zsh

# Env config
[[ -f ~/.zshrc.env ]] && source ~/.zshrc.env

# Aliases config
[[ -f ~/.zshrc.aliases ]] && source ~/.zshrc.aliases

# Local aliases
[[ -f ~/.zshrc.aliases.local ]] && source ~/.zshrc.aliases.local

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
# ZSH_THEME="robbyrussell"
# ZSH_THEME="sorin"
# ZSH_THEME="cobalt2"
# ZSH_THEME="agnoster"
# ZSH_THEME="dracula"
# ZSH_THEME="bullet-train"
# ZSH_THEME="muse"
# ZSH_THEME="avit"
ZSH_THEME="arrow"
# prev theme
# ZSH_THEME="honukai"
# ZSH_THEME="powerlevel9k/powerlevel9k"
# ZSH_THEME="frisk"

# POWERLEVEL9K_MODE='nerdfont-complete'
# source ~/.oh-my-zsh/custom/themes/powerlevel9k

# POWERLEVEL9K_MODE='nerdfont-complete'
# source ~/powerlevel9k/powerlevel9k.zsh-theme

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
plugins=(git common-aliases gem zsh-autosuggestions)

# Local env config
[[ -f ~/.zshrc.env.local ]] && source ~/.zshrc.env.local

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

# eval "$(direnv hook zsh)"

test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"
