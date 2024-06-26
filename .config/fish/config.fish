if status is-interactive
    # Commands to run in interactive sessions can go here
    set -a PATH "$HOME/bin"

    abbr tms termux-media-scan

    zoxide init fish | source
end
