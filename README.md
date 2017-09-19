## Rough instructions to quickly bootstrap dotfiles on a fresh Mac:
1. Install [homesick](https://github.com/technicalpickles/homesick).
```
gem install homesick
```
2. Clone this repo (homesick calls it a castle).
```
homesick clone zefd1/dotfiles.git
```
3. Link the castle to the home directory.
```
homesick link dotfiles
```

See the [homesick readme](https://github.com/technicalpickles/homesick) for full homesick usage.

## Just pull down Vim configurations for a Linux server:
1. Install `git`.
2. Setup [Vundle](https://github.com/VundleVim/Vundle.vim).
```
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
```
3. Download latest `.vimrc` from this repo.
```
curl -o ~/.vimrc https://raw.githubusercontent.com/zefd1/dotfiles/master/home/.vimrc
```
4. Install all plugins.
```
# from command line
vim +PluginInstall +qall

# from within Vim
:PluginInstall
```
