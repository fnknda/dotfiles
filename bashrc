set -o vi

# A bell character: \a
# The date, in “Weekday Month Date” format (e.g., “Tue May 26”): \d
# The format is passed to strftime(3) and the result is inserted into the prompt string; an empty format results in a locale-specific time representation. The braces are required: \D{format}
# An escape character: \e
# The number of jobs currently managed by the shell: \j
# The basename of the shell’s terminal device name: \l
# The name of the shell, the basename of $0 (the portion following the final slash): \s
# The time, in 24-hour HH:MM:SS format: \t
# The time, in 12-hour HH:MM:SS format: \T
# The time, in 12-hour am/pm format: \@
# The time, in 24-hour HH:MM format: \A
# The version of Bash (e.g., 2.00): \v
# The release of Bash, version + patchlevel (e.g., 2.00.0): \V
# The history number of this command: \!
# The command number of this command: \#

PS1='┌─[\[\e[34m\]\u\[\e[m\]@\[\e[35m\]\h\[\e[m\]]─[\[\e[32m\]\w\[\e[m\]]\n└──┤\$ '

unalias -a

alias ls='ls --color=auto'
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

