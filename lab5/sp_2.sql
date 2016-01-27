drop procedure sp_2;
create procedure SP_2 (start_time date, end_time DATE)
returns(dep_id_ int, difference int)
as
declare variable cur_sum int;
declare variable empid int; 
declare variable depid int;
declare variable diff int;
begin
    difference = 100000;
   for select department.dep_id as did from department
   into :depid
   do
   begin
   diff = 0;
   cur_sum = 0;
   for select emp_id from attachment
   where attachment.dep_id=:depid into :empid
   do
   begin
    select SUM(sp_1.difference) from sp_1(:empid,:start_time,:end_time) into :cur_sum;
    diff = diff + cur_sum;
   end
   if (diff < difference) then
   begin
    difference = diff;
    dep_id_ = depid;
   end
   end
end



