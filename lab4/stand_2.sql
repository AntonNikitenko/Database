CREATE VIEW stand_2 AS
SELECT emp_id,full_name FROM employee
where emp_id BETWEEN 1 AND 30 AND full_name LIKE '%Ivan%';


