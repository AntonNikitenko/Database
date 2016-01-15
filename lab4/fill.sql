insert into building(building_num,building_name) values (1, 'main office');
insert into building(building_num,building_name) values (2, 'security service office');



insert into department(dep_id,dep_name,building_num) values (15, 'administration' , 1);
insert into department(dep_id,dep_name,building_num) values (10, 'bookkeeping office', 1);
insert into department(dep_id,dep_name,building_num) values (9, 'security service ', 2);


insert into room(room_num,room_name,open_time,close_time) values (1,'gen. manager cabinet', '09:00:00', '18:00:00');
insert into room(room_num,room_name,open_time,close_time) values (17,'bookkeeping cabinet 1', '08:00:00', '17:00:00');
insert into room(room_num,room_name,open_time,close_time) values (18,'bookkeeping cabinet 2', '08:00:00', '17:00:00');
insert into room(room_num,room_name,open_time,close_time) values (19,'bookkeeping cabinet 3', '08:00:00', '17:00:00');
insert into room(room_num,room_name,open_time,close_time) values (107,'admission control cabinet', '12:00:00', '16:00:00');
insert into room(room_num,room_name,open_time,close_time) values (115,'videocontrol cabinet', '00:00:00', '00:00:00');

insert into departmentsadmission(dep_id,room_num) values (15, 1);
insert into departmentsadmission(dep_id,room_num) values (15, 17);
insert into departmentsadmission(dep_id,room_num) values (15, 18);
insert into departmentsadmission(dep_id,room_num) values (15, 19);
insert into departmentsadmission(dep_id,room_num) values (10, 17);
insert into departmentsadmission(dep_id,room_num) values (10, 18);
insert into departmentsadmission(dep_id,room_num) values (10, 19);
insert into departmentsadmission(dep_id,room_num) values (9, 107);
insert into departmentsadmission(dep_id,room_num) values (9, 115);


insert into employee(emp_id,full_name,adress,phone_num,post,dep_id) values (1,'Petrov Ivan Fedorovich','Dovatora Street 27.16',+79342222095,'gen.manager',15);
insert into employee(emp_id,full_name,adress,phone_num,post,dep_id) values (2,'Petrova Irina Dmitrievna', 'Kosmonavtov st. 25.83',+79142891097,'accountant',10);
insert into employee(emp_id,full_name,adress,phone_num,post,dep_id) values (3,'Ivanov Arsen Magomedovich', 'Pobedi st 2.3',+79068270952,'security',9);


insert into factualvisit(emp_id,room_num,visit_date,start_of_vis,end_of_vis) values (1, 1, '2015-12-08', '10:22:42', '14:17:07');
insert into factualvisit(emp_id,room_num,visit_date,start_of_vis,end_of_vis) values (1, 18, '2015-12-08', '13:12:57', '13:35:47');
insert into factualvisit(emp_id,room_num,visit_date,start_of_vis,end_of_vis) values (2, 17, '2015-12-08', '08:57:15', '17:07:21');
insert into factualvisit(emp_id,room_num,visit_date,start_of_vis,end_of_vis) values (3, 107, '2015-12-08', '00:05:47', '18:17:32');


insert into periodadmission(emp_id,room_num,week_day,start_of_adm,end_of_adm) values (1, 1, 'wednesday', '00:00:00', '00:00:00');
insert into periodadmission(emp_id,room_num,week_day,start_of_adm,end_of_adm) values (2, 17, 'monday', '09:00:00', '17:00:00');
insert into periodadmission(emp_id,room_num,week_day,start_of_adm,end_of_adm) values (3, 107, 'saturday', '00:06:00', '18:00:00');


insert into temporaryadmission(emp_id,room_num,visit_date,start_of_adm,end_of_adm) values (1, 1, '2015-12-09', '12:00:00', '13:00:00');
insert into temporaryadmission(emp_id,room_num,visit_date,start_of_adm,end_of_adm) values (2, 1, '2015-12-08', '16:30:00', '17:00:00');
insert into temporaryadmission(emp_id,room_num,visit_date,start_of_adm,end_of_adm) values (3, 1, '2015-12-13', '18:00:00', '19:00:00');





