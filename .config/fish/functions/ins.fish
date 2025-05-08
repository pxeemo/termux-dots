function ins
  pacman -Sl --color=always | \
    fzf --ansi --nth=2 --multi --preview 'pacman -Si {1}/{2}' --preview-window up --query "$argv[1]" | \
    sed -E -e 's/([^ ]+) ([^ ]+).*/\1\/\2/g' | \
    xargs -ro pacman -S --overwrite '*'
end
