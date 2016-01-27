drop procedure sp_1;
create procedure SP_1 (eid int, start_time date, end_time DATE)
returns(date_ date, difference int)
as
begin
   for select factualvisit.visit_date as date_vis,
   sum(datediff(hour from factualvisit.start_of_vis to factualvisit.end_of_vis))-8 as diff from factualvisit
    where factualvisit.emp_id=:eid and
    factualvisit.visit_date between :start_time and :end_time
    group by date_vis
    order by date_vis
    into :date_,:difference
    do suspend;
end


