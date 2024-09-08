#!/bin/sh

(echo "going to sleep"; sleep 20; echo "awake"; git lfs pull; echo "done"; kill $$) &

# run server in the background and direct output to stdout
bash scripts/run-lfs-proxy.sh
