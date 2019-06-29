# Path to oh-my-zsh installation.
export ZSH="/Users/chris-paterson/.oh-my-zsh"
ZSH_THEME="agnoster"

plugins=(
    git
)

source $ZSH/oh-my-zsh.sh
prompt_context() {} # Don't show user@hostname in prompt.

alias dotfiles='/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'
alias spotlight-reindex="sudo mdutil -E /"
alias sleepnow="pmset sleepnow"
alias vimrc="vim ~/.vim/vimrc"
alias supson="echo '¯\\_(ツ)_/¯'"

# Use Neovim as "preferred editor"
export VISUAL=nvim
# Use Neovim instead of Vim or Vi
alias vim=nvim
alias vi=nvim
