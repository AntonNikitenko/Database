drop procedure set_notvalid;
create procedure set_notvalid (gname varchar(255), vdate date, rnum int, start_time time, end_time time)
as
begin
    update visitoradmission set state='not valid' where visitoradmission.full_name=:gname and
    visitoradmission.visit_date=:vdate and
    visitoradmission.room_num=:rnum and
    :start_time between visitoradmission.start_of_vis and visitoradmission.end_of_vis;
end
