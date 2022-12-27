eval $(/opt/homebrew/bin/brew shellenv)
source .custom-command.sh
alias nvim='nvim --startuptime /tmp/nvim-startuptime'
alias vconf='cd .config/nvim/'
alias fzf='find * -type f | fzf > selected'
alias icat="kitty +kitten icat"
alias ls="exa --long --header --all --icons"
eval "$(starship init zsh)"
source /Users/cupskrrtt/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
