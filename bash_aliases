# ALIAS
alias reload="source ~/.bash_profile"
alias sshbwrc="ssh mkang@bwrcrdsl-1.eecs.berkeley.edu"
alias cds="cd $SCRATCH"
alias chcrl="cd $SCRATCH/active_projects/hcrl/scripts"

alias gpuwatch="gpustat -c --no-color -u -p --no-header -i"

# tmux
alias tj="tmux a -t josh"
alias ttl="tmux a -t tl"
alias tncl="tmux a -t ncl"
alias tkw="tmux kill-window"
alias tinit="tmux new -s josh"
alias tkill="tmux kill-session -t josh"

# conda aliases
alias conda_init="$SCRATCH/miniconda3/etc/profile.d/conda.sh"
alias c_synthesis="conda activate synthesis"
alias c_timeloop="conda activate timeloop"
alias c_hcrl="conda activate crl_new"
alias c_dgl_old="conda activate dgl_old"
