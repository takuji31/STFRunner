#!/bin/bash
export STF_HOST_ID=101
export STF_HOME=$HOME/project/stf
#export STF_QUEUE_TYPE=Schwartz
#export STF_DEBUG=1
#export STF_TIEMR=1

## Nginx
#export STF_NGINX_STYLE_PROXY=1
#export STF_NGINX_STYLE_REPROXY_ACCEL_REDIRECT_URL=/path/to/reproxy
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
## Storage
# ここは自分でディレクトリを作る(書き込みできること)
export STF_STORAGE_ROOT=$HOME/var/stf/storage
export STF_STORAGE_PORT=8888

## Admin Interface
export STF_ADMIN_PORT=9000

export PERLBREW_ROOT=/home/takuji/perl5/perlbrew
export PERLBREW_HOME=/home/takuji/.perlbrew
source ${PERLBREW_ROOT}/etc/bashrc

export PATH="$STF_HOME/extlib/bin:$PATH"
alias plackup="perl -I $STF_HOME/extlib/lib/perl5 -S plackup "
