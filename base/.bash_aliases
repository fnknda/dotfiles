set -o vi
shopt -s autocd
bind "set completion-ignore-case on"

unalias -a

export DF=`cat ~/.dotfiles.path`

export TERM=xterm-256color

export PATH=\
$HOME/.bin:\
$DF/scripts:\
/run/media/$USER:\
$PATH

export CDPATH=\
./:\
$HOME/:\
$HOME/repos/gitlab.com/_joao.fukuda/:\
$HOME/repos/gitlab.com/joao.fukuda/:\
$HOME/repos/github.com/joaofukuda/:\
$HOME/Documents:

export HISTCONTROL=ignoreboth:erasedups
export EDITOR=nvim

alias ?=duck
alias alacritty='alacritty -e simple_tmux'
alias apod='elinks https://apod.nasa.gov/apod/'
alias dotfiles='cd $DF'
alias gitl='git log --oneline --all --graph --decorate'
alias gits='git status -s'
alias grep='grep --color'
alias ll='ls -lA'
alias ls='ls --color=auto'
alias ms=monsetup
alias pwdc='keepassxc-cli clip -k $HOME/.passdb.key /run/media/coccafukuda/passwords/database'
alias todos='grep --color -Ern "TODO:|FIXME:"'
alias torw='echo http://zqktlwiuavvvqqt4ybvgvi7tyo4hjl5xgfuvpdf6otjiycgwqbym2qad.onion/wiki/index.php/Main_Page'
alias vim=nvim
alias vi=nvim

mkcmk() {
	echo -e "cmake_minimum_required(VERSION 3.5)\nproject($(pwd | grep -o -E '[^/]*$'))\n\n" > CMakeLists.txt
	nvim -c 'normal G<Esc>' -c 'startinsert' CMakeLists.txt
}

