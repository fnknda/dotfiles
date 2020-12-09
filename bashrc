set -o vi

unalias -a

alias ls='ls --color=auto'
alias vim='nvim'
alias grep='grep --color'
alias ll='ls -lA'
alias apod='elinks https://apod.nasa.gov/apod/'
alias todos="grep --color -Ern 'TODO:|FIXME:'"
alias pwdc="keepassxc-cli clip -k $HOME/.passdb.key /run/media/coccafukuda/passwords/database"
alias torw="echo http://zqktlwiuavvvqqt4ybvgvi7tyo4hjl5xgfuvpdf6otjiycgwqbym2qad.onion/wiki/index.php/Main_Page | xclip"
alias batt="echo Battery at: \$(cat /sys/class/power_supply/BAT0/capacity)%"
alias ?=duck
alias ..="cd .."

export PATH=\
$HOME/repos/gitlab.com/_joao.fukuda/dotfiles/scripts/:\
/run/media/$USER/:\
$PATH:

export CDPATH=\
./:\
$HOME/:\
$HOME/repos/gitlab.com/_joao.fukuda/:\
$HOME/repos/gitlab.com/joao.fukuda/:\
$HOME/repos/github.com/joaofukuda/:\
$HOME/Documents:

