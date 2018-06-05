#!/bin/bash 
INIT_PATH=/home/ec2-user/sand_filerotor/initpath
. /${INIT_PATH}/conf/main.conf
SUP_DIR=${INIT_PATH}/conf/supdest.cf
EQ_CONF=/home/ec2-user/conf

egrep "TargetDirectory|/eqx" ${EQ_CONF}/*E*   | awk -F"\"" '{print $2}'|while read dir ;do
  if [ ! -d ${dir} ];then
     mkdir -p ${dir}
     if [ $? -ne 0 ];then
            echo "Can't Create Source path ,please check permission .. " 
            sleep 10
            exit 999
     fi
     echo ${dir} | grep "/cdr"
     if [ $? -eq 0 ];then
        mkdir -p ${dir}/mddone
        mkdir -p ${dir}/bak_cdr
       else
        continue
     fi
  fi
done
