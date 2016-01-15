create procedure insert_attachment ( eid int, did int)
as begin
insert into attachment (emp_id, dep_id)
values (:eid, :did);
end;

create procedure insert_building ( bnum int, bname varchar(255))
as begin
insert into building (building_num, building_name)
values (:bnum, :bname);
end;

create procedure insert_department ( did int, dname varchar(255), bnum int)
as begin
insert into department (dep_id, dep_name,building_num)
values (:did, :dname, :bnum);
end;

create procedure insert_departmentadm ( did int, rnum int)
as begin
insert into departmentsadmission (dep_id, room_num)
values (:did, :rnum);
end;

create procedure insert_employee ( eid int, fname varchar(255), adr varchar(255), phone char(12), pst varchar(255), t1 time , t2 time)
as begin
insert into employee (emp_id, full_name, adress, phone_num, post, work_time1, work_time2)
values (:eid, :fname, :adr, :phone, :pst, :t1, :t2);
end;

create procedure insert_factvisit ( eid int, rnum int, vdate date, t1 time, t2 time)
as begin
insert into factualvisit (emp_id, room_num, visit_date, start_of_vis, end_of_vis)
values (:eid, :rnum, :vdate, :t1, :t2);
end;

create procedure insert_periodadm ( eid int, rnum int, wday varchar(255), t1 time, t2 time)
as begin
insert into periodadmission (emp_id, room_num, week_day, start_of_adm, end_of_adm)
values (:eid, :rnum, :wday, :t1, :t2);
end;

create procedure insert_room ( rnum int, rname varchar(255), t1 time, t2 time)
as begin
insert into room (room_num, room_name, open_time, close_time)
values (:rnum, :rname, :t1, :t2);
end;

create procedure insert_temporaryadm ( eid int, rnum int, vdate date, t1 time, t2 time)
as begin
insert into temporaryadmission (emp_id, room_num, visit_date, start_of_adm, end_of_adm)
values (:eid, :rnum, :vdate, :t1, :t2);
end;

create procedure insert_visitoradm ( fname varchar(255), phone char(12), rnum int , vdate date , t1 time, t2 time)
as begin
insert into visitoradmission (full_name, phone_num, room_num, visit_date, start_of_vis, end_of_vis)
values (:fname, :phone, :rnum, :vdate, :t1, :t2);
end;
