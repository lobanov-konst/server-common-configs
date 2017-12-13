#!/bin/bash
ROOT_DIR=$(cd $(dirname $0) && pwd);
cp -r $ROOT_DIR/user-configs/* $HOME
