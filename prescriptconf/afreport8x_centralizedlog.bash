. /opt/equinox/utils/sand_filerotor/conf/main.conf
. ${FUNCTION_PATH}/WRITE_LOG
. ${FUNCTION_PATH}/housekeeper
. ${FUNCTION_PATH}/checkdup_process
. ${FUNCTION_PATH}/reconcile

. ${ALARM_PATH}/alarm.conf
. ${ALARM_PATH}/WRITE_ALARM
. ${ALARM_PATH}/CLEAR_ALARM

. ${FUNCTION_PATH}/CHECK_FILE_DUPLICATE
. ${FUNCTION_PATH}/report_copy_file
. ${FUNCTION_PATH}/af_report_copy_file

checkdup_process "$0" "$$"

if [ $? -ne 0 ]
   then
        exit 1
fi




