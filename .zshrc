source /usr/share/zsh-theme-powerlevel10k/powerlevel10k.zsh-theme

POWERLEVEL9K_MODE='awesome-fontconfig'
ZSH_THEME="powerlevel10k/powerlevel10k"

POWERLEVEL9K_PROMPT_ON_NEWLINE=false
POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(context dir vcs)
POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(status root_indicator background_jobs time)

HIST_STAMPS="mm/dd/yyyy"

alias vim="nvim"
alias meteo="curl wttr.in"
alias dd="dd status=progress"
alias grep="grep --color=auto" 
alias diff="diff --color=auto" 
alias pacman="pacman --color=auto"
alias yay="yay --color=auto"
alias termbin="nc termbin.com 9999"
alias getclip="xclip -selection c -o"
alias setclip="xclip -selection c"

alias sudo='sudo '
