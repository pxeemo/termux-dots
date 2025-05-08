function dl --wraps=aria2c --description='alias of aria2c'
  wakelocker add
  set retries 5
  while test $retries -ne 0 && not aria2c \
    --max-concurrent-downloads=2 \
    --split=8 \
    --max-tries=0 \
    --continue=true \
    --log=$HOME/.cache/aria2/log \
    --log-level=notice \
    --seed-ratio=0.2 \
    --seed-time=20 \
    $argv
    # --dir=(xdg-user-dir DOWNLOAD) \
    # --max-connection-per-server=16 \
    
    echo -e (set_color red)Download has failed. retrying in 10 seconds.(set_color normal)
    sleep 10
  end

  and termux-notification \
    --title aria2c \
    --content "Downloads Complete" \
    --icon file_download_done
  or termux-notification \
    --title aria2c \
    --content "Downloads Failed" \
    --icon highlight_off

  wakelocker remove
end
