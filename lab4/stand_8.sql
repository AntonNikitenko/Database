CREATE VIEW stand_8 AS
SELECT room.room_name
FROM room
WHERE room.room_num not in (SELECT departmentsadmission.room_num
FROM departmentsadmission WHERE departmentsadmission.dep_id =15)
AND room.room_num<200;
