# Path to oh-my-zsh installation.
export PATH="$HOME/.cargo/bin:$PATH"
export ZSH="/Users/chris-paterson/.oh-my-zsh"
export RLS_ROOT="/Users/chris-paterson/.cargo/bin/rls"

ZSH_THEME="simple"

plugins=(
    git
    cargo
    zsh-autosuggestions
)

source $ZSH/oh-my-zsh.sh
prompt_context() {} # Don't show user@hostname in prompt.

alias dotfiles='/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'
alias spotlight-reindex="sudo mdutil -E /"
alias sleepnow="pmset sleepnow"
alias vimrc="vim ~/.vim/vimrc"
alias supson="echo '¯\\_(ツ)_/¯'"
alias zs='vim ~/.zshrc'

# Use Neovim as "preferred editor"
export VISUAL=nvim
# Use Neovim instead of Vim or Vi
alias vim=nvim
alias vi=nvim

export RECALL_DIR='/Users/chris-paterson/Documents/recall'
export RECALL_EDITOR='nvim'
