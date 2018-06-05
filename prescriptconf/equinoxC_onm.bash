. /opt/equinox/utils/sand_filerotor/conf/main.conf
. ${FUNCTION_PATH}/WRITE_LOG
. ${FUNCTION_PATH}/CHECK_FILE_DUPLICATE
. ${FUNCTION_PATH}/equinox_onm_copy_file
. ${FUNCTION_PATH}/housekeeper
. ${FUNCTION_PATH}/checkdup_process

. ${ALARM_PATH}/alarm.conf
. ${ALARM_PATH}/WRITE_ALARM


checkdup_process "$0" "$$"

if [ $? -ne 0 ]
   then
        exit 1
fi

