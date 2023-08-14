# Path to oh-my-zsh installation.
export ZSH="/Users/chris-paterson/.oh-my-zsh"
#export ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE='fg=0xFF00FF'
export ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE="fg=#ff00ff,bold,underline"

export PATH=/opt/homebrew/bin:$PATH

ZSH_THEME="simple"

plugins=(
    git
    zsh-autosuggestions
    vi-mode
)

source $ZSH/oh-my-zsh.sh
prompt_context() {} # Don't show user@hostname in prompt.
PROMPT=$PROMPT"λ "

#set -o vi

alias config='/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME'
alias vimrc="cd ~/.config/nvim && nvim ."
alias zs='vim ~/.zshrc'
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


# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
#export PATH="$PATH:$HOME/.rvm/bin"
#[[ -s "$HOME/.rvm/scripts/rvm" ]] && . "$HOME/.rvm/scripts/rvm"
if [ -d "/opt/homebrew/opt/ruby/bin" ]; then
  export PATH=/opt/homebrew/opt/ruby/bin:$PATH
  export PATH=`gem environment gemdir`/bin:$PATH
fi

#export PATH=/Users/chris-paterson/Work/ios/gen-ir-bin/gen-ir/.build/release:$PATH
