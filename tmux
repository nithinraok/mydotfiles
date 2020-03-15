# improve colors
set -g default-terminal 'screen-256color'

# remap prefix from 'C-b' to 'C-a'
unbind C-b
set-option -g prefix C-a
bind-key C-a send-prefix

# split panes using | and -
bind | split-window -h
bind - split-window -v
unbind '"'
unbind %

# reload config file (change file location to your the tmux.conf you want to use)
bind r source-file ~/.tmux.conf ; display-message "configuration reloaded"

# act like vim
setw -g mode-keys vi
bind h select-pane -L
bind j select-pane -D
bind k select-pane -U
bind l select-pane -R
bind -r C-h select-window -t :-
bind -r C-l select-window -t :+

# enable and disable keyboard input for panes
bind < select-pane -d \; display-message "input disabled"
bind > select-pane -e \; display-message "input enabled"

# size windows based on clients looking at that window
setw -g aggressive-resize on

# enable mouse control
set -g mouse on

# start window numbers at 1 to match keyboard order with tmux order
set -g base-index 1

# start pane numbers at 1 to match keyboard order with tmux order
setw -g pane-base-index 1

# reenable automatic renaming for the current window
bind N setw automatic-rename on \; display-message "automatic rename enabled"

# renumber windows sequentially after closing any of them
set -g renumber-windows on

# monitor windows for activity
setw -g monitor-activity on

# display pane numbers for longer
set -g display-panes-time 2000

set -g status-left-length 20
set -g status-left '#{?pane_input_off,#[fg=colour160],#[fg=colour136]}[#[fg=colour136]#S:#I.#P#{?pane_input_off,#[fg=colour160],#[fg=colour136]}] '
set -g status-right '#[fg=colour166]#([ "$(tmux show-option -g prefix)" != "prefix C-a" ] && echo "($(tmux show-option -g prefix | cut -c 8-)) ")#[fg=colour33]%d %b %Y #{?client_prefix,#[fg=colour160],#[fg=colour61]}- #[fg=colour64]%I:%M %p #{?client_prefix,#[fg=colour160],#[fg=colour61]}- #[fg=colour37]#([ -f $HOME/.name ] && cat $HOME/.name || hostname)'


# increase scrollback lines
set -g history-limit 65536

#### color (Solarized 256)
set -g status-style bg=colour235,fg=colour136
setw -g window-status-style fg=colour244
setw -g window-status-current-style fg=colour166
setw -g window-status-activity-style fg=colour61
setw -g window-status-bell-style fg=colour61
set -g pane-border-style fg=colour235
set -g pane-active-border-style fg=colour240
set -g message-style bg=colour235,fg=colour166

# pane number display
set -g display-panes-active-colour colour166 #blue
set -g display-panes-colour colour33 #orange

# clock
setw -g clock-mode-colour colour64 #green

# panes
set -g pane-border-style 'fg=colour238 bg=colour235'
set -g pane-active-border-style 'fg=colour51 bg=colour236'

# Prefix Highlight colors
set -g @prefix_highlight_fg 'black' # default is 'colour231'
set -g @prefix_highlight_bg 'yellow,bold'  # default is 'colour04'
set -g @prefix_highlight_show_copy_mode 'on'
set -g @prefix_highlight_copy_mode_attr 'fg=black,bg=yellow,bold' # default is 'fg=default,bg=yellow'

# copy to system
# set -g set-clipboard external
# bind -T root MouseUp2Pane paste
