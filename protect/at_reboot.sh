#!/bin/bash

export LOG=/data/protect/nginx.protect.log
export PROTECT=/data/protect/nginx.protect.sh
touch ${LOG}
echo "$(date "+%Y-%m-%d %H:%M:%S") Reboot Reboot Reboot!!!" >> ${LOG}
echo "$(date "+%Y-%m-%d %H:%M:%S") nginx protect(${PROTECT}) starting ..." >> ${LOG}
${PROTECT} >> ${LOG} 2>&1 &
echo "$(date "+%Y-%m-%d %H:%M:%S") nginx protect is started." >> ${LOG}
