#!/bin/bash

TEAMSERVER="127.0.0.1"
PORT="50050"
USER="********"
PASSWORD="******"
SCRIPT="../../cobaltparrot.cna"
RESTART_DELAY=10

echo "=== Aggressor Script Auto-Restart Wrapper Started ==="
echo "TeamServer: $TEAMSERVER:$PORT"
echo "User: $USER"
echo "Script: $SCRIPT"
echo "====================================================="

while true; do
    echo "$(date '+%Y%m%d-%H:%M:%S'): [*] Starting agscript (cobaltstrike-client.jar)"
    
    cd /root/cobalt/cobaltstrike4.11.1/client
    
    # Run agscript directly without piping to see immediate output
    ./agscript $TEAMSERVER $PORT $USER $PASSWORD $SCRIPT
    
    EXIT_CODE=$?
    echo "$(date '+%Y%m%d-%H:%M:%S'): [-] agscript exited with code $EXIT_CODE"
    echo "$(date '+%Y%m%d-%H:%M:%S'): [*] Restarting in $RESTART_DELAY seconds..."
    
    # Increase delay slightly with each failure (up to a limit)
    RESTART_DELAY=$((RESTART_DELAY < 60 ? RESTART_DELAY + 5 : 60))
    
    sleep $RESTART_DELAY
    echo "====================================================="
done
