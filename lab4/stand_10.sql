create procedure update_department (dname varchar(255)) as
begin
update department set dep_name = :dname where dep_name like 'bookkeeping%';
end;


