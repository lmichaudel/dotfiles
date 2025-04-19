PATH=/opt/homebrew/bin/:$PATH

###########
# Plugins #
###########
eval "$(starship init zsh)"
eval "$(zoxide init zsh)"
eval "$(opam env)"

source $(brew --prefix)/share/zsh-autosuggestions/zsh-autosuggestions.zsh
source $(brew --prefix)/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

###########
# Exports #
###########
export EDITOR='nvim'
export CMAKE_GENERATOR="Ninja"
export NINJA_STATUS="[%p]"
export GPG_TTY=$(tty)
export STARSHIP_CONFIG=~/.config/starship/starship.toml
export HOMEBREW_NO_ENV_HINTS

###########
# Aliases #
###########
alias os-update="$HOME/dotfiles/os-update.sh"
alias pinentry='pinentry-mac'
alias python="python3"
alias pip="pip3"
alias ls="eza -1 --icons"
alias lst="eza -1 --icons --tree --level=2"
alias cd="z"
alias vim="nvim"
alias cdu="cd ../"
alias gu="git submodule update --init --recursive"
alias gp="git config --global http.proxy 'http://10.0.0.1:3128' && git config --global https.proxy 'https://10.0.0.1:3128'"
alias gpno="git config --global --unset http.proxy && git config --global --unset https.proxy"
alias enable-proxy="export http_proxy="10.0.0.1:3128" && export https_proxy="10.0.0.1:3128" && export ALL_PROXY="10.0.0.1:3128" && gp"

gpno 

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
