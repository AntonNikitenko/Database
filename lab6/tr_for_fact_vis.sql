CREATE EXCEPTION except_no_access 'This employee has no access to this room now';
drop trigger for_fact_vis;
CREATE OR ALTER TRIGGER for_fact_vis for factualvisit
ACTIVE BEFORE INSERT
AS
BEGIN
    if (new.emp_id not in
        (select emp_id
        from temporaryadmission
        where new.emp_id=temporaryadmission.emp_id and
            new.room_num=temporaryadmission.room_num and
            new.visit_date=temporaryadmission.visit_date and
            new.start_of_vis between temporaryadmission.start_of_adm and temporaryadmission.end_of_adm
        UNION
        select emp_id
        from periodadmission
        where new.emp_id=periodadmission.emp_id and
            new.room_num=periodadmission.room_num and
            new.start_of_vis between periodadmission.start_of_adm and periodadmission.end_of_adm)
    ) then exception except_no_access;
END

