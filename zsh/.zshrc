#ALIAS--------------------------------------------------------------------
alias nvim='nvim --startuptime /tmp/nvim-startuptime'
alias vconf='cd ~/.dotfiles/nvim/.config/nvim/'
alias fzf='find * -type f | fzf > selected'
alias icat="kitty +kitten icat"
alias ls="exa --long --header --all --icons"
alias mc="cd /Volumes/Cup/mcserver/"
alias dot="cd ~/.dotfiles/"
alias gl="lazygit"
alias proj="cd /Volumes/Cup/Dev/Projects/"
alias work="cd /Volumes/Cup/Dev/Work/"

#EVAL---------------------------------------------------------------------
eval $(/opt/homebrew/bin/brew shellenv)

#SOURCE-------------------------------------------------------------------
source ~/.zsh/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source ~/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh

#STARTING TMUX------------------------------------------------------------
case $- in *i*)
    [ -z "$TMUX" ] && exec tmux
esac

#STARSHIP-----------------------------------------------------------------
eval "$(starship init zsh)"
