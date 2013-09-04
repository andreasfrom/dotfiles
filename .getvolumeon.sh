amixer get Master | sed '5!d' | awk '{print $6}'
