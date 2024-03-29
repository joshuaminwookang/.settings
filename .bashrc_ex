# ~/.bashrc            

parse_git_branch() {
    git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}

PROMPT_DIRTRIM=3
export PS1="\[\e[38;5;214m\]\u\[\e[m\]@\[\e[38;5;153m\]\h\[\e[m\]\[\e[38;5;202m\]\$(parse_git_branch) \[\e[m\]\[\e[38;5;75m\]\w\[\e[m\] \\$ "

export LS_COLORS="di=0;36:ln=0;37:ex=0;33"
alias ls='ls --color=always'

# continuation interactive prompt (for multi-line commands)
PS2='> '
# Enable the subsequent settings only in interactive sessions
case $- in
  *i*) ;;
    *) return;;
esac

# ssh
export SSH_KEY_PATH="~/.ssh/rsa_id"
source ~/.bash_aliases
