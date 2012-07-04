#!/bin/sh

CDIR=$(dirname $0)&&pwd
. $CDIR/env.sh
cd $STF_HOME
plackup -p $STF_STORAGE_PORT -a $STF_HOME/etc/storage.psgi
