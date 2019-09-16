alias servedir="sudo python -m SimpleHTTPServer 80"

alias prune='git gc --prune=now; git remote prune origin'

alias monitor_redis="redis-cli monitor | grep -E ' \"(G|S)ET\" ' | cut -c 1-150"

alias git-restore="git reset HEAD; git checkout -- ."
