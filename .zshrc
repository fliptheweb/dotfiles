# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="fliptheweb"

# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# Set to this to use case-sensitive completion
# CASE_SENSITIVE="true"

# Comment this out to disable bi-weekly auto-update checks
# DISABLE_AUTO_UPDATE="true"

# Uncomment to change how often before auto-updates occur? (in days)
# export UPDATE_ZSH_DAYS=13

# Uncomment following line if you want to disable colors in ls
# DISABLE_LS_COLORS="true"

# Uncomment following line if you want to disable autosetting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment following line if you want to disable command autocorrection
# DISABLE_CORRECTION="true"

# Uncomment following line if you want red dots to be displayed while waiting for completion
# COMPLETION_WAITING_DOTS="true"

# Uncomment following line if you want to disable marking untracked files under
# VCS as dirty. This makes repository status check for large repositories much,
# much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(git gem rvm npm node coffee)

source $ZSH/oh-my-zsh.sh

# Customize to your needs...
export PATH=/usr/bin:/bin:/usr/sbin:/sbin:/usr/X11/bin:$PATH
export PATH=/usr/local/bin:$PATH
export PATH=/usr/local/sbin:$PATH
export PATH=/usr/local/share/npm/bin:$PATH
export PATH=/Applications/Postgres.app/Contents/MacOS/bin:$PATH
export PATH=$HOME/.rvm/bin:$PATH # Add RVM to PATH for scripting
# export PATH=/usr/local/etc/play:$PATH
# export PATH=/usr/local/Cellar:$PATH

export APPLICATION_MODE=dev_fliptheweb

# Aliases
if [[ "$OSTYPE" == darwin* ]]; then
	alias cppwd='pwd | pbcopy'
	alias rm='trash'
	alias ia="open $1 -a /Applications/iA\ Writer.app"
	alias load-php='launchctl load ~/Library/LaunchAgents/homebrew-php.josegonzalez.php54.plist'
	alias unload-php='launchctl unload ~/Library/LaunchAgents/homebrew-php.josegonzalez.php54.plist'
	alias restart-php='unload-php; load-php'
	alias load-nginx='sudo launchctl load -w ~/Library/LaunchAgents/homebrew.mxcl.nginx.plist'
	alias unload-nginx='sudo launchctl unload ~/Library/LaunchAgents/homebrew.mxcl.nginx.plist'
	alias restart-nginx='unload-nginx; load-nginx'
fi

