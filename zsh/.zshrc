#ALIAS--------------------------------------------------------------------
alias nvim='nvim --startuptime /tmp/nvim-startuptime'
alias vconf='cd ~/.dotfiles/nvim/.config/nvim/'
alias fzf='find * -type f | fzf > selected'
alias icat="kitty +kitten icat"
alias ls="exa --long --header --all --icons"
alias cb="cd .."
alias mc="cd /Volumes/Cup/mcserver/"
alias cup="cd /Volumes/Cup/"
alias dot="cd ~/.dotfiles/"
alias gl="lazygit"
alias proj="cd /Volumes/Cup/Dev/Projects/"
alias work="cd /Volumes/Cup/Dev/Work/"

#EVAL---------------------------------------------------------------------
eval $(/opt/homebrew/bin/brew shellenv)

#SOURCE-------------------------------------------------------------------
source /Users/cupskrrtt/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

#STARTSHIP----------------------------------------------------------------
eval "$(starship init zsh)"
