function rem
  pacman -Qq | fzf -q "$argv[1]" -m --preview "pacman -Qi {1}" --preview-window up | xargs -ro pacman -Rs
end
