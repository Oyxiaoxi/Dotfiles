# --------------------------------------------------------- #
# ZSH_THEME 
# https://github.com/denysdovhan/spaceship-prompt.git
# "$ZSH_CUSTOM/themes/spaceship-prompt" --depth=1
# ln -s "$ZSH_CUSTOM/themes/spaceship-prompt/spaceship.zsh-theme" "$ZSH_CUSTOM/themes/spaceship.zsh-theme"
# --------------------------------------------------------- #
ZSH_THEME="spaceship"

# --------------------------------------------------------- #
# Plugins
# git clone https://github.com/zsh-users/zsh-completions ${ZSH_CUSTOM:-${ZSH:-~/.oh-my-zsh}/custom}/plugins/zsh-completions
# git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
# git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
# git clone https://github.com/zsh-users/zsh-history-substring-search ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-history-substring-search
# git clone https://github.com/agkozak/zsh-z $ZSH_CUSTOM/plugins/zsh-z
# --------------------------------------------------------- #
plugins=(
    git
    zsh-completions
    zsh-syntax-highlighting
    zsh-autosuggestions
    zsh-history-substring-search
    zsh-z
)

# https://ohmyz.sh/
source $HOME/.oh-my-zsh/oh-my-zsh.sh

# Homebrew Disable updates before each app installation
export HOMEBREW_NO_AUTO_UPDATE=true

# --------------------------------------------------------- #
# Proxy Aliases
# --------------------------------------------------------- #
alias proxy_shadowsocks=''
alias unproxy_shadowsocks='unset all_proxy http_proxy https_proxy HTTP_PROXY HTTPS_PROXY'

# --------------------------------------------------------- #
# Custom
# --------------------------------------------------------- #
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"

# --------------------------------------------------------- #
# Git Aliases
# --------------------------------------------------------- #

# Go To Project Root
alias grt='cd "$(git rev-parse --show-toplevel)"'

# Git Commit
alias gs='git status'
alias gp='git push -u origin master'
alias gpf='git push --force'
alias gpft='git push --follow-tags'
alias gpl='git pull --rebase'
alias gcl='git clone'
alias gst='git stash'
alias grm='git rm'
alias gmv='git mv'

# Git Branch
alias master='git checkout master'
alias main='git checkout main'
alias develop='git checkout develop'
alias gbc='git branch'
alias gco='git checkout'
alias gcob='git checkout -b'

alias grb='git rebase'
alias grbomerge='git rebase origin/master'
alias grbc='git rebase --continue'

alias gl='git log'
alias glo='git log --oneline --graph --decorate --all'

alias grh='git reset HEAD'

alias ga='git add'
alias gA='git add -A'

alias gc='git commit'
alias gcm='git commit -m'
alias gca='git commit -a'
alias gcam='git add -A && git commit -m'
alias gfrb='git fetch origin && git rebase origin/master'
alias grao='git remote add origin'

alias gxn='git clean -dn'
alias gx='git clean -df'

alias gsha='git rev-parse HEAD | pbcopy'

alias ghci='gh run list -L 1'

alias gfa='git fetch --all'
alias grhom='git reset --hard origin/master'

# --------------------------------------------------------- #
# Directories
# I put
# `~/Desktop/Projects/` for my projects
# `~/Desktop/Projects/Documents/` for my documents
# --------------------------------------------------------- #
function Project() {
    cd ~/Desktop/Projects/$1
}

function Document() {
    cd ~/Desktop/Document/$1
}

# --------------------------------------------------------- #
# Node Package Manager
# https://github.com/antfu/ni
# --------------------------------------------------------- #
alias nio='ni --prefer-offline'
alias s='nr start'
alias d='nr dev'
alias b='nr build'
alias bw='nr build --watch'
alias t='nr test'
alias tu='nr test -u'
alias tw='nr test --watch'
alias w='nr watch'
alias p='nr play'
alias c='nr typecheck'
alias lint='nr lint'
alias lintf='nr lint --fix'
alias release='proxy; nr release'

