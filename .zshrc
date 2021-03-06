# Path to oh-my-zsh installation.
export ZSH="/Users/chris-paterson/.oh-my-zsh"
export ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE='fg=5'

ZSH_THEME="simple"

plugins=(
    git
    zsh-autosuggestions
)

source $ZSH/oh-my-zsh.sh
prompt_context() {} # Don't show user@hostname in prompt.
PROMPT=$PROMPT"λ "

alias dotfiles='/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'
alias vimrc="vim ~/.vim/vimrc"
alias supson="echo '¯\\_(ツ)_/¯'"
alias zs='vim ~/.zshrc'
alias jpp='pbpaste | python -m json.tool | pbcopy'
alias hardreset='git add . && git reset --hard HEAD'

# Lazy
alias c="clear"
alias cc="clear"

# alias python="/usr/local/bin/python3"
# alias pip="/usr/local/bin/pip3"
# export PATH="/Users/username/.pyenv:$PATH"
eval "$(pyenv init -)"



# Use Neovim as "preferred editor"
export VISUAL=nvim
# Use Neovim instead of Vim or Vi
alias vim=nvim
alias vi=nvim

source "/Users/chris-paterson/.bash_profile_specific"
source "/Users/chris-paterson/.bash_profile_env_variables"

export FZF_DEFAULT_COMMAND='rg --files --no-ignore-vcs --hidden'
export PATH="/usr/local/sbin:$PATH"

