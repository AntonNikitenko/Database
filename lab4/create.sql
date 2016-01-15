connect 'D:\DB\build_secur.fdb' user 'SYSDBA' password 'masterkey';

create table room (
        room_num int not null primary key,
        room_name varchar(255) not null,
        open_time time not null,
        close_time time not null);

        
create table building (
        building_num int not null primary key,
        building_name varchar(255) not null);

create table department (
        dep_id int not null primary key,
        dep_name varchar(255) not null,
        building_num int not null references building(building_num));


        
create table employee (
        emp_id int not null primary key,
        full_name varchar(255) not null,
        adress varchar(255) not null,
        phone_num  char(12) not null,
        post varchar(255) not null,
        dep_id int not null references department(dep_id));

create table periodAdmission (
        emp_id int not null references employee(emp_id),
        room_num int not null references room(room_num),
        week_day varchar(255) not null,
        start_of_adm time not null,
        end_of_adm time not null);

create table factualVisit (
        emp_id int not null references employee(emp_id),
        room_num int not null references room(room_num),
        visit_date date not null,
        start_of_vis time not null,
        end_of_vis time not null);

create table temporaryAdmission (   
        emp_id int not null references employee(emp_id),
        room_num int not null references room(room_num),
        visit_date date not null,
        start_of_adm time not null,
        end_of_adm time not null);

create table departmentsAdmission (
        dep_id int not null references department(dep_id),
        room_num int not null references room(room_num));


