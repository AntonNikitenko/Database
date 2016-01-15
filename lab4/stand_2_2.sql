CREATE VIEW stand_2_2 AS
SELECT dep_id,dep_name FROM department
WHERE dep_id in(9,10,15) AND dep_id BETWEEN 5 AND 13;



