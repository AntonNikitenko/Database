CREATE VIEW stand_6 AS
SELECT department.dep_id, department.dep_name, building.building_num,building.building_name
FROM department,building
WHERE department.building_num=building.building_num;


