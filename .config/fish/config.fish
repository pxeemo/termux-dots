if status is-interactive
    # Commands to run in interactive sessions can go here
    set -a PATH "$HOME/bin"

    abbr tms termux-media-scan
    abbr tcg termux-clipboard-get
    abbr tcs termux-clipboard-set

    zoxide init fish | source
end
