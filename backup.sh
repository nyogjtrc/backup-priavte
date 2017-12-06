#!/bin/bash

BAK_DIRNAME="bak-$(date +%Y%m%dT%H%M%S)"
STORAGE_PATH="$HOME/Dropbox/backup-private/$BAK_DIRNAME"

echo "backup private to $STORAGE_PATH"

mkdir -p $STORAGE_PATH

uname -a > $STORAGE_PATH/log

mkdir $STORAGE_PATH/.ssh
cp $HOME/.ssh/config $STORAGE_PATH/.ssh/config
cp /etc/hosts $STORAGE_PATH/hosts
