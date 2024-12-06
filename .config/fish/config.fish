if status is-interactive
    # Commands to run in interactive sessions can go here
    set fish_greeting
    set -a PATH "$HOME/bin"

    abbr tms termux-media-scan
    abbr tcg termux-clipboard-get
    abbr tcs termux-clipboard-set
    abbr twl termux-wake-lock
    abbr twu termux-wake-unlock

    zoxide init fish | source
end
