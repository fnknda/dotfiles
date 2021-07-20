set -o vi
shopt -s autocd
bind "set completion-ignore-case on"

unalias -a

export DF=`cat ~/.dotfiles.path`

export TERM=xterm-256color

export PS1="\e[m\W\e[1;93m\$\e[m "

export PATH=\
$HOME/.bin:\
$HOME/.local/bin:\
$DF/scripts:\
/run/media/$USER:\
$PATH

export CDPATH=\
./:\
$HOME/:\
$HOME/repos/gitlab.com/_joao.fukuda/:\
$HOME/repos/gitlab.com/joao.fukuda/:\
$HOME/repos/github.com/JoaoFukuda/:\
$HOME/repos/tmp/:\
$HOME/Documents:

export HISTCONTROL=ignoreboth:erasedups
export EDITOR=nvim

alias g=git
alias ga='git add'
alias gb='git branch'
alias gcat='git cat-file -p'
alias gc='git checkout'
alias gcherry='git cherry-pick'
alias gd='git diff'
alias gl='git log --oneline --all --graph --decorate'
alias gr='git remote'
alias gs='git status'
alias gsw='git switch'

alias vim=nvim

alias ?=duck
alias alacritty='alacritty -e simple_tmux'
alias apod='elinks https://apod.nasa.gov/apod/'
alias build="cd build ; make -j ; cd -"
alias dotfiles='cd $DF'
alias grep='grep --color'
alias ll='ls -lA'
alias ls='ls --color=auto'
alias ms=monsetup
alias pwdc='keepassxc-cli clip -k $HOME/.passdb.key /run/media/coccafukuda/passwords/database'
alias tmpd='cd $(mktemp -d)'
alias todos='grep --color -Ern "TODO:|FIXME:"'
alias torw='echo http://zqktlwiuavvvqqt4ybvgvi7tyo4hjl5xgfuvpdf6otjiycgwqbym2qad.onion/wiki/index.php/Main_Page'

mkcmk() {
	echo -e "cmake_minimum_required(VERSION 3.5)\nproject($(pwd | grep -o -E '[^/]*$'))\n\n" > CMakeLists.txt
	nvim -c 'normal G<Esc>' -c 'startinsert' CMakeLists.txt
}

