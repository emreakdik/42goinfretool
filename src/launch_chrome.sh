#!/bin/bash

home=$HOME
mkdir -p $HOME/goinfre/apps/chrome/tmp/temporary-chrome-profile-dir
nohup $HOME/goinfre/apps/chrome/chrome-42.app/Contents/MacOS/Google\ Chrome --user-data-dir="$home"/goinfre/apps/chrome/tmp/temporary-chrome-profile-dir </dev/null >/dev/null 2>&1 &
disown
