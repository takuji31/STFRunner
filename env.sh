#!/bin/bash
export STF_HOST_ID=101
export STF_HOME=/usr/local/stf
export STF_USER=takuji

#uncomment this if use The Schwartz
#export STF_QUEUE_TYPE=Schwartz


#Debug envrionment
#export STF_DEBUG=1
#export STF_TIMER=1

## Nginx
export STF_NGINX_STYLE_REPROXY=1
export STF_NGINX_STYLE_REPROXY_ACCEL_REDIRECT_URL=/reproxy
#export USE_PLACK_REPROXY=1

## MySQL
export STF_MYSQL_DSN=dbi:mysql:stf:127.0.0.1:13306
export STF_MYSQL_USERNAME=root
export STF_MYSQL_PASSWORD=''
export STF_QUEUE_DSN=dbi:mysql:dbname=stf_queue:127.0.0.1:13306
export STF_QUEUE_USERNAME=root
export STF_QUEUE_PASSWORD=''

#export STF_ENABLE_STORAGE_META=1
#export STF_ENABLE_OBJECT_META=1
export STF_DISPATCHER_PORT=8887
## Storage
# Storage path (writable and exists)
export STF_STORAGE_ROOT=/var/stf/storage
export STF_STORAGE_PORT=8888

## Admin Interface
export STF_ADMIN_PORT=9000

export PERLBREW_ROOT=/usr/local/perlbrew/perlbrew
export PERLBREW_HOME=/usr/local/perlbrew/home
source $PERLBREW_ROOT/etc/bashrc

export PATH="$STF_HOME/extlib/bin:$PATH"
export PERLOPT="perl -I $STF_HOME/extlib/lib/perl5 -I $STF_HOME/lib"
