#!/bin/sh

bash scripts/run-lfs-proxy.sh &

sleep 5

git lfs pull