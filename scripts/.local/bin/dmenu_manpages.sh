man -k . | dmenu -l 10 -p "Search Manpages" | awk '{print $1}' | xargs -r alacritty -e man
