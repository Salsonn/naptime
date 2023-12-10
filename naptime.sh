#!/bin/sh

case $1/$2 in
    pre/*)
        echo "[naptime] Putting variety to sleep"
        variety --pause
        ;;
    post/*)
        echo "[naptime] Waking variety back up"
        variety --resume
        ;;
esac

# Source from https://askubuntu.com/questions/226278/run-script-on-wakeup