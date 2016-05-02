# dotfiles

Misc shell-scripts, config-files etc. 

## install dependencies

### ubuntu
* `sudo apt-get install stow fish emacs tree`


### mac
* install [homebrew][brew]
* `brew tap caskroom/cask`
* `brew install fish stow coreutils moreutils emacs tree`


## usage

```shell
cd $HOME
git clone https://github.com/Omega3k/dotfiles.git
cd dotfiles
    
stow fish git
```

`stow` is used to manage symlinks to the "packages". Make all your edits directly in the git repo and let `stow` worry about keeping the symlinks up to date. See `man stow` for more details. 


## packages

* emacs
* fish
* git


[brew]: http://brew.sh "Homebrew - The missing package manager for OS X"
