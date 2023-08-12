# Dotfiles

## Installing on a new system

Run the following command for initial `config` setup in current shell:

```
alias config='/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME'
```

Then run the following to avoid weird recursion problems:

```
echo ".cfg" >> .gitignore
```

Clone repo:

```
git clone --bare git@github.com:chris-paterson/dotfiles.git $HOME/.cfg
```

Configure config:

```
config config status.showUntrackedFiles no
```


## Initial setup

```
git init --bare $HOME/.cfg
alias config='/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME'
config config --local status.showUntrackedFiles no
echo "alias config='/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME'" >> $HOME/.bashrc
```
