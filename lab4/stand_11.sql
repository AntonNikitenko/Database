create procedure delete_employee (pst varchar(255)) as
begin
delete from employee where post = :pst and
    work_time1 = (select max(work_time1) from employee);
end;

