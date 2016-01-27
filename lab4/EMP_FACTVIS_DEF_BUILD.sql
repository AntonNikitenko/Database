CREATE OR ALTER VIEW EMP_FACTVIS_DEF_BUILD(
    EMP_ID,
    FULL_NAME,
    ROOM_NUM,
    VISIT_DATE,
    START_OF_VIS,
    END_OF_VIS,
    BUILDING_NUM)
AS
select factualvisit.emp_id,employee.full_name,factualvisit.room_num,factualvisit.visit_date,factualvisit.start_of_vis,factualvisit.end_of_vis,room_build.building_num from factualvisit,employee,room_build
where factualvisit.emp_id=employee.emp_id
and employee.emp_id=9
and factualvisit.room_num=room_build.room_num
and room_build.building_num=3
;
