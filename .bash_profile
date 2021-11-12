#[ -f /usr/local/etc/bash_completion ] && . /usr/local/etc/bash_completion || {
#    # if not found in /usr/local/etc, try the brew --prefix location
#    [ -f "$(brew --prefix)/etc/bash_completion.d/git-completion.bash" ] && \
#        . $(brew --prefix)/etc/bash_completion.d/git-completion.bash
#}
#
#export PS1="\u:\W λ "
#
#alias dotfiles='/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'
#alias spotlight-reindex="sudo mdutil -E /"
#alias sleepnow="pmset sleepnow"
#alias bash_profile="vim ~/.bash_profile"
#alias vimrc="vim ~/.vim/vimrc"
#alias supson="echo '¯\\_(ツ)_/¯'"
#
## Use Neovim as "preferred editor"
#export VISUAL=nvim
## Use Neovim instead of Vim or Vi
#alias vim=nvim
#alias vi=nvim
#
#export TERM=xterm-256color
#
## Machine specific
#source ~/.bash_profile_env_variables
#source ~/.bash_profile_specific
#
#export RECALL_DIR="/Users/chris-paterson/Documents/recall"
#export RECALL_EDITOR=nvim

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*
. "$HOME/.cargo/env"
