execute procedure insert_employee(9,'Baranov Artem Viktorovich','Mira street 77.15','79054233848','cleaner','05:00:00','07:30:00');
execute procedure insert_room(97,'Utility room','00:00:00','23:59:59');
execute procedure insert_building(3,'Utility service office');
execute procedure insert_department(17,'Utility service',3);
execute procedure insert_departmentadm(17,97);
execute procedure insert_attachment(9,17);
execute procedure insert_periodadm(9,18,'monday','06:00:00','08:00:00');
execute procedure insert_factvisit(9,18,'2015-12-23','06:15:23','07:43:11');
execute procedure insert_temporaryadm(9,1,'2016-01-12','06:22:23','07:15:45');
execute procedure insert_visitoradm('Arsenov Gleb Alekseevich','79650982742',18,'2016-01-13','12:30:00','13:00:00');

