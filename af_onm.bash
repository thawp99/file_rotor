. /home/ec2-user/sand_filerotor/conf/main.conf
. ${FUNCTION_PATH}/WRITE_LOG
. ${FUNCTION_PATH}/CHECK_FILE_DUPLICATE
. ${FUNCTION_PATH}/housekeeper
. ${FUNCTION_PATH}/checkdup_process
. ${FUNCTION_PATH}/reconcile



. ${ALARM_PATH}/alarm.conf
. ${ALARM_PATH}/WRITE_ALARM

. ${FUNCTION_PATH}/af_onm_copy_file
. ${FUNCTION_PATH}/af_report_copy_file
. ${FUNCTION_PATH}/filter_file_name


checkdup_process "$0" "$$"

if [ $? -ne 0 ]
   then
        exit 1
fi
 
############# aflog ###########
. ${CONFIG_PATH}/aflog.conf
af_onm_copy_file "${SOURCE_PATH}" "${DEST_PATH}" "${FILE_PREFIX}" "${FILE_TYPE}" "${POSTACTION}" "${SOURCE_BACKUP_PATH}" "${HISTORY_FILE}" 
