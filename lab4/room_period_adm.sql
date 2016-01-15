CREATE VIEW ROOM_PERIODADM_TIME
AS
select periodadmission.emp_id,employee.full_name,periodadmission.week_day,periodadmission.room_num from employee,periodadmission
where periodadmission.emp_id=employee.emp_id
and periodadmission.room_num=18
and periodadmission.start_of_adm<'12:00:00'
and periodadmission.end_of_adm>'15:00:00';

