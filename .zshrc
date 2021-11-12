# Path to oh-my-zsh installation.
export ZSH="/Users/chris-paterson/.oh-my-zsh"
export ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE='fg=5'

export PATH=/opt/homebrew/bin:$PATH

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
alias gitclean='git fetch --prune --all && git branch -vv | grep "origin/.*: gone]" | awk "{print \$1}" | paste -sd " " -'

# Use Neovim as "preferred editor"
export VISUAL=nvim
# Use Neovim instead of Vim or Vi
alias vim=nvim
alias vi=nvim

source "/Users/chris-paterson/.bash_profile_specific"
source "/Users/chris-paterson/.bash_profile_env_variables"

export FZF_DEFAULT_COMMAND='rg --files --no-ignore-vcs --hidden'
export PATH="/usr/local/sbin:$PATH"

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
export PATH="$PATH:$HOME/.rvm/bin"
