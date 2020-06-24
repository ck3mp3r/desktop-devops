alias dotfiles='/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME'
export PATH=/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:~/.dotfiles/bin:$PATH
if which ruby >/dev/null && which gem >/dev/null; then
    PATH="$(ruby -r rubygems -e 'puts Gem.user_dir')/bin:$PATH"
fi
source ~/.zshrc.d/*.zsh
