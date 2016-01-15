CREATE VIEW stand_2_3 AS
SELECT room_num,room_name FROM room
WHERE room_num in(1,17,18,19,107,115) AND room_name LIKE '%bookkeep%';



