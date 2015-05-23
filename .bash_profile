[[ -s "$HOME/.profile" ]] && source "$HOME/.profile" # Load the default .profile

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*


export GITAWAREPROMPT=~/.bash/git-aware-prompt
source $GITAWAREPROMPT/main.sh

export PATH="./node_modules/.bin:$PATH"

export PS1="\u: \w \[$txtcyn\]\$git_branch\[$txtred\]\$git_dirty\[$txtrst\]\$ "

## virtual environment wrapper
export WORKON_HOME=$HOME/.virtualenvs
export PROJECT_HOME=$HOME/Devel
source /usr/local/bin/virtualenvwrapper.sh

## Aliases ##
alias bx='bundle exec'
alias pyenv='source /usr/local/bin/virtualenvwrapper.sh; workon default'

## makes virtualenv with python3
alias mkvirtualenv3='mkvirtualenv --python=$(which python3)'

### Python server
function www() {
    port=${1}
    python -m SimpleHTTPServer $port
  }
