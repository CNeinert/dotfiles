# The following lines were added by compinstall

zstyle ':completion:*' completer _expand _complete _ignored _approximate
zstyle :compinstall filename '~/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall
# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
setopt autocd extendedglob
# End of lines configured by zsh-newuser-install

# Load version control information
autoload -Uz vcs_info
autoload -U colors && colors
precmd() { vcs_info }

# Format the vcs_info_msg_0_ variable
zstyle ':vcs_info:git:*' formats 'on branch %b'

# Set up the prompt (with git branch name)
setopt PROMPT_SUBST


#PROMPT='%n in ${PWD/#$HOME/~} ${vcs_info_msg_0_} > '
PROMPT='%{$fg[red]%}[%*] %n%{$reset_color%} in %{$fg[yellow]%}%2d%{$reset_color%} %{$bg[green]%}%{$fg[black]%}${vcs_info_msg_0_}%{$reset_color%} $ '


# Basic aliases

alias ls='ls -la --color=auto'
alias grep='grep --color=auto'
alias egrep='egrep --color=auto'
alias fgrep='fgrep --color=auto'
alias cp="cp -i"                          # confirm before overwriting something
alias df='df -h'                          # human-readable sizes
alias free='free -m'                      # show sizes in MB
alias np='nano -w PKGBUILD'
alias more=less

# include aliases
if [ -f ~/.bash_aliases ]; then
	. ~/.bash_aliases
fi

# export PATH
export PATH=$PATH:~/.bin/idea/bin:~/.bin/PhpStorm/bin
