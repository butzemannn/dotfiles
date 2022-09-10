#
# Executes commands at the start of an interactive session.
#
# Authors:
#   Sorin Ionescu <sorin.ionescu@gmail.com>
#

# Source Prezto.
#if [[ -s "${ZDOTDIR:-$HOME}/.zprezto/init.zsh" ]]; then
#  source "${ZDOTDIR:-$HOME}/.zprezto/init.zsh"
#fi

# Customize to your needs...

# some more ls aliases
alias ls='exa'
alias ll='exa -alF --git'
alias la='exa -a'
alias cat='bat'
alias cd='z'
alias cdi='zi'
alias htop='btop'
alias r='ranger'

# Custom stuff
bindkey -v
bindkey jk vi-cmd-mode 

source /usr/share/fzf/key-bindings.zsh
source /usr/share/fzf/completion.zsh
export VISUAL=/usr/bin/vim
export EDITOR=/usr/bin/vim
export PATH="/home/sven/.local/bin:$PATH"

# history
HISTFILE=~/.zsh_history
HISTSIZE=10000
SAVEHIST=1000
setopt SHARE_HISTORY

# Custom Aliases
alias t="tmux"
alias ta="tmux attach -t"
alias tls="tmux ls"
alias tn="tmux new -t"

alias go="git checkout"
alias ssh="TERM=xterm-256color ssh"
alias rebootwin="sudo grub-reboot 2 && sudo reboot"

alias vncuni="bash /home/sven/bin/vncuni.sh"

# alias for dotfiles
alias dotfiles='/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'

# custom functions
venv() {
	source "$1/bin/activate"
}
# Auto start tmux
#if command -v tmux &> /dev/null && [ -z "$TMUX" ]; then
#    tmux attach -t default || tmux new -s default
#fi


source "$HOME/.zsh/plugins/zsh-system-clipboard/zsh-system-clipboard.zsh"

eval "$(zoxide init zsh)"
eval "$(thefuck --alias)"
eval "$(starship init zsh)"
