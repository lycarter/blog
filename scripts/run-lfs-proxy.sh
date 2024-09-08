#!/bin/sh

echo "Starting LFS proxy server"

# echo first char of $AWS_ACCESS_KEY_ID
echo ${AWS_ACCESS_KEY_ID:0:1}

# AWS_ACCESS_KEY_ID=$(aws configure get aws_access_key_id)
# AWS_SECRET_ACCESS_KEY=$(aws configure get aws_secret_access_key)

echo "calling npx"

npx --yes "github:lycarter/node-git-lfs"

echo "done with lfs proxy"