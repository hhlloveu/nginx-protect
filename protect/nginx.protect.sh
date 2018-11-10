#!/bin/bash
# if nginx not started, start it!

export NGINX_PORT=80
export NGINX=/usr/bin/nginx
export LOG=/data/protect/nginx.protect.log
export INTERVAL=2

touch ${LOG}

# start protecting ...
while true
do
sleep ${INTERVAL}
check=`netstat -ntlp|egrep "\<${NGINX_PORT}\>"`
 
if [[ ${check} == "" ]]
then
    echo -n $(date "+%Y-%m-%d %H:%M:%S") >> ${LOG}
    ${NGINX} && sleep ${INTERVAL} && echo " ------nginx start ok" >> ${LOG}
fi

done
