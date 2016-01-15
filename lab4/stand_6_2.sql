CREATE VIEW stand_6_2 AS
SELECT periodadmission.room_num,periodadmission.week_day,employee.emp_id
FROM periodadmission,employee
WHERE periodadmission.emp_id=employee.emp_id;
