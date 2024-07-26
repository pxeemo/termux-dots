function ins
  pacman -Slq | fzf -q "$argv[1]" -m --preview "pacman -Si {1}" --preview-window up | xargs -ro pacman -Sy
end
