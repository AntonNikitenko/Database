CREATE VIEW ROOM_TEMPORARYADM_TIME
AS
select temporaryadmission.emp_id,employee.full_name,temporaryadmission.visit_date,temporaryadmission.room_num from employee,temporaryadmission
where temporaryadmission.emp_id=employee.emp_id
and temporaryadmission.room_num=1
and temporaryadmission.start_of_adm<'16:35:00'
and temporaryadmission.end_of_adm>'16:45:00';

