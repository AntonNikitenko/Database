create procedure delete_notadm as
begin
delete from employee where emp_id not in (select emp_id from periodadmission);
end;
execute procedure delete_notadm;

