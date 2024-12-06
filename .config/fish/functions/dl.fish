function dl --wraps=aria2c --description 'alias of aria2c'
  termux-wake-lock
  aria2c \
    --max-concurrent-downloads=2 \
    --split=8 \
    --max-tries=0 \
    --continue=true \
    $argv
    # --dir=(xdg-user-dir DOWNLOAD) \
    # --max-connection-per-server=16 \

  termux-notification --title aria2c --content "Downloads complete" --icon download_done
  if test (pgrep -c aria2c) -eq 0
    termux-wake-unlock
  end
end
