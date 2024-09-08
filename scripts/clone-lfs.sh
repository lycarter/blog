#!/bin/sh


# run server in the background and direct output to stdout
bash scripts/run-lfs-proxy.sh &

echo "going to sleep"
sleep 25
echo "awake"
git lfs pull
echo "done"
exit 0