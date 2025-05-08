function wakelocker
    if test $argv[1] = add
        touch $WL
        if test (cat $WL) -eq 0
            termux-wake-lock
        end
        math (cat $WL) +1 > $WL
    else if test $argv[1] = remove
        set lockers (cat $WL)
        test $lockers -eq 0 && return 1
        if test $lockers -eq 1
            termux-wake-unlock
        end
        math $lockers -1 > $WL
    else
        wakelocker add
        eval $argv
        wakelocker remove
    end
end
