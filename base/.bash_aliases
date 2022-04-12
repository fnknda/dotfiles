set -o vi
shopt -s autocd
shopt -s extglob
shopt -s globstar
shopt -s lithist
bind "set completion-ignore-case on"

unalias -a

ret_value() {
	RETURN_VALUE=$?
	if [ $RETURN_VALUE != 0 ]
	then
		echo -n "[$RETURN_VALUE] "
	fi
}

ssh_info() {
	if [ -n "${SSH_CONNECTION}" ]
	then
		echo -n " (ssh: ${USER}@${HOSTNAME})"
	fi
}

git_branch () {
	GIT_BRANCH="$(git branch --show-current 2> /dev/null)"
	if [ $? -eq 0 ]; then
		echo -n " (${GIT_BRANCH})"
	fi
}

export PS1='\[\e[1;91m\]$(ret_value)\[\e[m\]\[\e[m\]\W\[\e[1;93m\]$(ssh_info)$(git_branch) \$\[\e[m\] '

export DF=$(cat ~/.dotfiles.path)

export PATH=\
${HOME}/.bin:\
${HOME}/.local/bin:\
${DF}/scripts:\
${PATH}

export CDPATH=\
./:\
${HOME}/:\
${HOME}/Repos/gitlab/_joao.fukuda/:\
${HOME}/Repos/gitlab/joao.fukuda/:\
${HOME}/Repos/github/JoaoFukuda/:\
${HOME}/Repos/tmp/:\
${HOME}/Documents:

export HISTCONTROL=ignoreboth:erasedups
export EDITOR=nvim

alias g=git

alias gad='git add'
alias gbr='git branch'
alias gch='git checkout'
alias gcm='git commit'
alias gcp='git cherry-pick'
alias gct='git cat-file -p'
alias gdf='git diff'
alias glg='git log --oneline --all --graph --decorate'
alias grm='git remote'
alias gst='git status'
alias gsw='git switch'

alias vim=nvim

alias ?=duck
alias alacritty='alacritty -e simple_tmux'
alias apod='elinks https://apod.nasa.gov/apod/'
alias build="cd build ; make -j ; cd -"
alias dotfiles='cd ${DF}'
alias grep='grep --color'
alias ll='ls -lA'
alias ls='ls --color=auto'
alias ms=monsetup
alias parrot='curl parrot.live'
alias pwdc='keepassxc-cli clip -k ${HOME}/.passdb.key /run/media/coccafukuda/passwords/database'
alias tmpd='cd $(mktemp -d)'
alias todos='grep --color -Ern "TODO:|FIXME:"'
alias torw='echo http://zqktlwiuavvvqqt4ybvgvi7tyo4hjl5xgfuvpdf6otjiycgwqbym2qad.onion/wiki/index.php/Main_Page'

