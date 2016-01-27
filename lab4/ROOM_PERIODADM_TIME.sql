CREATE OR ALTER VIEW ROOM_PERIODADM_TIME(
    EMP_ID,
    FULL_NAME,
    WEEK_DAY,
    ROOM_NUM)
AS
select periodadmission.emp_id,employee.full_name,periodadmission.week_day,periodadmission.room_num from employee,periodadmission
where periodadmission.emp_id=employee.emp_id
and periodadmission.room_num=19
and periodadmission.start_of_adm<'01:20:00'
and periodadmission.end_of_adm>'02:00:00'
;
