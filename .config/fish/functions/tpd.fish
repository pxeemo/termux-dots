function tpd
    set -l dest ~/storage/documents/dir-listing.css
    test -f $dest
    or cp ~/.config/lighttpd/dir-listing.css $dest
    
    termux-wake-lock
    lighttpd -f ~/.config/lighttpd/lighttpd.conf
    
    ifconfig
end
