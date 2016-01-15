alter table employee drop dep_id;
alter table employee add work_time1 time not null; 
alter table employee add work_time2 time not null;

create table attachment(
        emp_id int not null references employee(emp_id),
        dep_id int not null references department(dep_id));

create table visitorAdmission(
        full_name varchar(255) not null,
        phone_num  char(12) not null,
        room_num int not null references room(room_num),
        visit_date date not null,
        start_of_vis time not null,
        end_of_vis time not null);



