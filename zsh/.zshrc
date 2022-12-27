#ALIAS--------------------------------------------------------------------
alias nvim='nvim --startuptime /tmp/nvim-startuptime'
alias vconf='cd .config/nvim/'
alias fzf='find * -type f | fzf > selected'
alias icat="kitty +kitten icat"
alias ls="exa --long --header --all --icons"
alias cb="cd .."
alias webdev="cd /Volumes/Cup/DEV/web-dev/"
alias mc="cd /Volumes/Cup/mcserver/"
alias cup="cd /Volumes/Cup/"

#EVAL---------------------------------------------------------------------
eval $(/opt/homebrew/bin/brew shellenv)

#SOURCE-------------------------------------------------------------------
source /Users/cupskrrtt/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

#STARTSHIP----------------------------------------------------------------
eval "$(starship init zsh)"
