#!/bin/bash
ROOT_DIR=$(cd $(dirname $0) && pwd);
echo "Copy configs to home directory $HOME"
cp -r $ROOT_DIR/user-configs/. $HOME
