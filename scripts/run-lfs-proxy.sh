#!/bin/sh

echo "Starting LFS proxy server"

if [ -z "$AWS_ACCESS_KEY_ID" ] || [ -z "$AWS_SECRET_ACCESS_KEY" ]; then
AWS_ACCESS_KEY_ID=$(aws configure get aws_access_key_id)
AWS_SECRET_ACCESS_KEY=$(aws configure get aws_secret_access_key)
fi

echo "calling npx"

npx --yes "github:lycarter/node-git-lfs"

echo "done with lfs proxy"