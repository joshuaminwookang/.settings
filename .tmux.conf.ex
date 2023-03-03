set -g default-terminal "xterm"
set -g default-terminal "xterm-256color"
set -sg escape-time 0

setw -g window-status-format "#[fg=colour250] #I #W "
setw -g window-status-current-format "#[fg=white, bold]*#I #W "

# enables C-left/right
set-window-option -g xterm-keys on

# Start windows and panes at 1, not 0
set -g base-index 1
setw -g pane-base-index 1

#Status bar
set-option -g status on
set-option -g status-interval 1
set-option -g status-justify centre
set-option -g status-keys vi
set-option -g status-position bottom
set-option -g status-style fg=colour82,bg=colour235
set-option -g status-left-length 30
set-option -g status-left-style default
set-option -g status-left "#[default][#S] #H"
set-option -g status-right-length 140
set-option -g status-right-style default
#set-option -g status-right "#[fg=green,bg=default,bright]#(tmux-mem-cpu-load) "
set-option -g status-right " #[fg=white,bg=default]%a%l:%M:%S %p#[default] #[fg=colour105]%Y-%m-%d"

#Key bindings
set-option -g prefix C-a
unbind-key C-b
bind-key C-a send-prefix

bind-key -n M-0 select-window -t 0
bind-key -n M-1 select-window -t 1
bind-key -n M-2 select-window -t 2
bind-key -n M-3 select-window -t 3
bind-key -n M-4 select-window -t 4
bind-key -n M-q select-window -t 5
bind-key -n M-w select-window -t 6
bind-key -n M-e select-window -t 7
bind-key -n M-r select-window -t 8

# Windows and sessions
bind-key -n M-T new-window
bind-key h split-window -h
bind-key b split-window -v

#bind-key -n M-[ split-window -v
#bind-key -n M-] split-window -h
bind-key -n M-Left  select-pane -L
bind-key -n M-Right select-pane -R
bind-key -n M-Up    select-pane -U
bind-key -n M-Down  select-pane -D
#bind-key -n C-q kill-window
#bind-key -n C-q detach
# easy reload config
bind-key r source-file ~/.tmux.conf \; display-message "~/.tmux.conf reloaded."

set -g window-active-style 'bg=colour233'
set -g window-style 'bg=colour236'

# Pane colors
set -g pane-border-style fg=green,bg=black
set -g pane-active-border-style fg=white,bg=black

# active window title colors
set-window-option -g window-status-current-style fg=colour166,bg=default,bright # fg=orange
