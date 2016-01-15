CREATE VIEW stand_5 AS
SELECT avg((work_time2-work_time1)/3600) as avg_work_mode,count(emp_id) as emp_amount FROM employee;



