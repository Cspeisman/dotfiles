eval "$(rbenv init -)"
export PATH=/usr/local/bin:$PATH

export GITAWAREPROMPT=~/.bash/git-aware-prompt
source $GITAWAREPROMPT/main.sh
export PS1="\u: \w \[$txtcyn\]\$git_branch\[$txtred\]\$git_dirty\[$txtrst\]\$ "

### Added by the Heroku Toolbelt
export PATH="/usr/local/heroku/bin:$PATH"

### Aliases
alias bx='bundle exec'
alias pyenv='source /usr/local/bin/virtualenvwrapper.sh; workon default'
alias capwords='source /usr/local/bin/virtualenvwrapper.sh; workon capwords'

### edits random entry in the CWD
alias vimr='vim "`ls | gshuf -n1`"'
alias sublr='subl "`ls | gshuf -n1`"'

### makes virtualenv with python3
alias mkvirtualenv3='mkvirtualenv --python=$(which python3)'

if [ -f `brew --prefix`/etc/bash_completion ]; then
	. `brew --prefix`/etc/bash_completion
fi

### Python server
function www() {
	port=${1}
	python -m SimpleHTTPServer $port
}
