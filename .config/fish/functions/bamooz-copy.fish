function bamooz-copy
python ~/python/bamooz.py $argv | cut -d, -f2- | termux-clipboard-set
end
