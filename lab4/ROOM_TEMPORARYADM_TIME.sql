CREATE OR ALTER VIEW ROOM_TEMPORARYADM_TIME(
    EMP_ID,
    FULL_NAME,
    VISIT_DATE,
    ROOM_NUM)
AS
select temporaryadmission.emp_id,employee.full_name,temporaryadmission.visit_date,temporaryadmission.room_num from employee,temporaryadmission
where temporaryadmission.emp_id=employee.emp_id
and temporaryadmission.room_num=1314
and temporaryadmission.start_of_adm<'01:00:00'
and temporaryadmission.end_of_adm>'03:00:00'
;
