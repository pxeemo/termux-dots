function tpd
    set -l dest ~/storage/documents/dir-listing.css
    test -f $dest
    or cp ~/.config/lighttpd/dir-listing.css $dest
    
    wakelocker add
    lighttpd -f ~/.config/lighttpd/lighttpd.conf
    
    set -l ip (ifconfig 2>/dev/null | awk '/inet/ {ip = $2} END {print ip ":9000"}')
    qrencode -t UTF8 $ip
    echo $ip
end
