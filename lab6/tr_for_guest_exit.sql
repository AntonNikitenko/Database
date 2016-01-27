drop trigger for_guest_exit;
CREATE OR ALTER TRIGGER for_guest_exit for guest_fact_vis
ACTIVE BEFORE INSERT
AS
BEGIN
    if (new.full_name in
        (select full_name from visitoradmission where
        new.room_num=visitoradmission.room_num and
        new.visit_date=visitoradmission.visit_date and
        new.start_of_vis between visitoradmission.start_of_vis and visitoradmission.end_of_vis
        )  and
        new.room_num in
        (select room_num from room where
        room_type='communicating')
    ) then execute procedure set_notvalid(new.full_name,new.visit_date,new.room_num,new.start_of_vis,new.end_of_vis);
END

