function wakelocker
    if test $argv[1] = add
        set -Ux WL (math $WL + 1)
        if test $WL -eq 1
            termux-wake-lock
        end
    else if test $argv[1] = remove
        test $WL -eq 0 && return 1
        if test $WL -eq 1
            termux-wake-unlock
        end
        set -Ux WL (math $WL - 1)
    else if test $argv[1] = reset
        set -Ux WL 0
        termux-wake-unlock
    else
        wakelocker add
        eval $argv
        wakelocker remove
    end
end
