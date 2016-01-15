CREATE VIEW stand_3 AS
SELECT emp_id,full_name,(work_time2-work_time1)/3600 as work_mode FROM employee;



