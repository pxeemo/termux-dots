# wakelocker completions for Fish shell
complete -c wakelocker -f

# Fixed subcommands
complete -c wakelocker -n "__fish_use_subcommand" \
    -a "add remove reset" \
    -d "Manage wakelocks"

# Arbitrary command execution
complete -c wakelocker -n "__fish_use_subcommand" \
    -a "(__fish_complete_subcommand)" \
    -d "Run command with wakelock"

# Prevent completions after fixed subcommands
complete -c wakelocker -n "__fish_seen_subcommand_from add remove reset" \
    -f

# Handle completions for arbitrary commands
complete -c wakelocker \
    -n "not __fish_seen_subcommand_from add remove reset; and not __fish_use_subcommand" \
    -xa '(
        set -l cmd (commandline -opc)[2..-1]
        complete -C "$cmd"
    )'
