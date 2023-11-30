# Dotfiles
blahblahblah whatever man you know what dotfiles are

shamefullesly stolen from [fr3fou/dotfiles](https://github.com/fr3fou/dotfiles)
# Usage:

### Create a bare repo
```shell
$ git init --bare $HOME/.dotfiles
```

### Create an alias

```shell
$ alias dots='git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'
```
### Add to upstream

```shell
$ dots remote add origin git@github.com:treuks/.dotfiles.git
```

### Alias some stuff
```shell
dots config status.showUntrackedFiles no

dots config alias.untracked "status -u ."
dots config alias.untracked-at "status -u"
```

### Usage-er
```
# Use the dots alias like you would use the git command
dots status
dots add --update ...
dots commit -m "..."
dots push

# Listing files (not tracked by git)
dots untracked
dots status -u .config/

# Listing files (tracked by git)
dots ls-files
dots ls-files .config/fontconfig/
```

### Installing on current setup

TODO: Replace this with a script

```
git clone --recursive --separate-git-dir=$HOME/.dotfiles git@github.com:treuks/.dotfiles.git /tmp/dotfiles
rsync -rvl --exclude ".git" /tmp/dotfiles/ $HOME/
rm -r /tmp/dotfiles
dots submodule update --init --recursive $HOME/
```
