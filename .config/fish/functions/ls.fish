function ls --wraps='eza' --description 'alias ls eza'
    eza -AlF --git --group-directories-first --no-user --time-style relative --sort time $argv
end
