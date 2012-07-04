#!/bin/sh

CDIR=$(dirname $0)&&pwd
. $CDIR/env.sh
cd $STF_HOME
plackup --port 5101 -a $STF_HOME/etc/dispatcher.psgi
