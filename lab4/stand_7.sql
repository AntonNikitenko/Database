CREATE VIEW stand_7 AS
SELECT room.room_name, count(departmentsadmission.dep_id) as amount
FROM room,departmentsadmission
WHERE departmentsadmission.room_num=room.room_num
GROUP BY room.room_name
HAVING count(*)>1;
