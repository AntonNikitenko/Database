CREATE OR ALTER VIEW EMP_WORK_DEF_BUILD(
    EMP_ID,
    FULL_NAME,
    dep_id)
AS
select employee.emp_id,employee.full_name,attachment.dep_id from employee,attachment where
employee.emp_id=attachment.emp_id and
attachment.dep_id in (select dep_id from department where building_num=356)

