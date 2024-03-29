# Path to oh-my-zsh installation.
export ZSH="/Users/chris-paterson/.oh-my-zsh"
export ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE="fg=#ff00ff,bold,underline"

export PATH=/opt/homebrew/bin:$PATH

ZSH_THEME="simple"

plugins=(
    git
    zsh-autosuggestions
)

source $ZSH/oh-my-zsh.sh
#PROMPT='%~ λ '
#PROMPT='%F{#98971A}%~ λ %{$reset_color%}'
autoload -U colors && colors
PS1="%F{#98971A}%~ %{$reset_color%}λ "

set -o vi

alias config='/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME'
alias vimrc="cd ~/.config/nvim && nvim ."
alias supson="echo '¯\\_(ツ)_/¯'"
alias jpp='pbpaste | python3 -m json.tool | pbcopy'
alias hardreset='git add . && git reset --hard HEAD'
alias gitclean='git fetch --prune --all && git branch -vv | grep "origin/.*: gone]" | awk "{print \$1}" | paste -sd " " -'

# Use Neovim as "preferred editor"
export VISUAL=nvim
alias vim=nvim
alias vi=nvim

source "/Users/chris-paterson/.bash_profile_specific"
source "/Users/chris-paterson/.bash_profile_env_variables"

export RIPGREP_CONFIG_PATH="$HOME/.ripgreprc"

export FZF_DEFAULT_COMMAND='rg --files --no-ignore-vcs --hidden'
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
export PATH="/usr/local/sbin:$PATH"


#export PATH="$HOME/go/bin:$PATH"

# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
#export PATH="$PATH:$HOME/.rvm/bin"
#[[ -s "$HOME/.rvm/scripts/rvm" ]] && . "$HOME/.rvm/scripts/rvm"
if [ -d "/opt/homebrew/opt/ruby/bin" ]; then
  export PATH=/opt/homebrew/opt/ruby/bin:$PATH
  export PATH=`gem environment gemdir`/bin:$PATH
fi

#export PATH=/Users/chris-paterson/Work/ios/gen-ir-bin/gen-ir/.build/release:$PATH
#eval "$(pyenv init --path)"

#export PATH="$HOME/.jenv/bin:$PATH"
#eval "$(jenv init -)"
