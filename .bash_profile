CLICOLOR=1

[ -f /usr/local/etc/bash_completion ] && . /usr/local/etc/bash_completion
if [ -f $(brew --prefix)/etc/bash_completion ]; then
  . $(brew --prefix)/etc/bash_completion
fi

GIT_PROMPT_ONLY_IN_REPO=0
if [ -f "$(brew --prefix)/opt/bash-git-prompt/share/gitprompt.sh" ]; then
  __GIT_PROMPT_DIR=$(brew --prefix)/opt/bash-git-prompt/share
  source "$(brew --prefix)/opt/bash-git-prompt/share/gitprompt.sh"
fi

if [ -f ~/.git-completion.bash ]; then
  . ~/.git-completion.bash
fi

export GEM_HOME=$HOME/.gem
export PATH=$GEM_HOME/bin:$PATH


#export PS1="\n[\[\033[32m\]\w]\[\033[0m\]\n${GIT_BRANCH}\[\033[1;33m\[$ \[\033[0m\]"
export PATH=~/Library/Python/3.6/bin:$PATH


# Setting PATH for Python 3.6
# The original version is saved in .bash_profile.pysave
PATH="/Library/Frameworks/Python.framework/Versions/3.6/bin:${PATH}"
export PATH
export GPG_TTY=$(tty)

export NVM_DIR="$HOME/.nvm"
. "/usr/local/opt/nvm/nvm.sh"

function mkcd {
  mkdir $1
  cd $_
}