set PATH ~/.nvm/versions/node/v12.18.3/bin ~/.cargo/bin /snap/bin /usr/local/sbin /usr/sbin /sbin $PATH
set fish_greeting
set TERM tmux-256color
set EDITOR nvim

# Start X at login
if status is-interactive
    if test -z "$DISPLAY" -a "$XDG_VTNR" = 1
        exec startx -- -keeptty
    end
end
