set -o vi
shopt -s extglob
shopt -s globstar
shopt -s lithist
bind "set completion-ignore-case on"

HISTCONTROL=ignoredups

unalias -a

eval "$(zoxide init bash)"

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
		echo -n " (git: ${GIT_BRANCH})"
	fi
}

kubernetes_context () {
	K8S_CTX="$(kubectl config current-context 2> /dev/null)"
	if [ $? -eq 0 ]; then
		echo -n " (k8s: ${K8S_CTX})"
	fi
}

export PS1='\[\e[1;91m\]$(ret_value)\[\e[m\]\[\e[m\]\W\[\e[1;93m\]$(ssh_info)$(git_branch)$(kubernetes_context) \$\[\e[m\] '

export HISTCONTROL=ignoreboth:erasedups
export EDITOR=nvim
export TERMINAL=kitty

export PATH=${PATH}:${HOME}/.bin:${HOME}/.local/share/gem/ruby/3.0.0/bin

source /usr/share/bash-completion/completions/git
alias g=git
__git_complete g git
alias gad='git add'
alias gbr='git branch'
alias gco='git checkout'
alias gcm='git commit'
alias gcp='git cherry-pick'
alias gdf='git diff'
alias glg='git log --oneline --all --graph --decorate'
alias grm='git remote'
alias gst='git status'
alias gsw='git switch'
__git_complete gbr git_branch
__git_complete gco git_checkout
__git_complete gcm git_commit
__git_complete gcp git_cherry_pick
__git_complete gdf git_diff
__git_complete glg git_log
__git_complete grm git_remote
__git_complete gst git_status
__git_complete gsw git_switch

export IDF_TOOLS_PATH="${HOME}/Repos/espressif/esp-idf"
alias get-idf=". ${IDF_TOOLS_PATH}/export.sh"

alias prc="perf record -F max -g"
alias prp="perf report -g graph,0"
alias prpe="perf report -g graph,0,callee"

alias cd=z
alias vi=nvim
alias vim=nvim
alias ls=eza
alias l="ls -la"

alias apod='elinks https://apod.nasa.gov/apod/'
alias grep='grep --color'
alias todos='ag "TODO:|FIXME:"'
