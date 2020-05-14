use tasks;
select
	a.activity_id,
    a.employee_id,
    a.role_id,
    ac.activity_name,
    ac.task_id,
    task.task_name,
    task.project_id
from
	assigned a
inner join
	activity ac on ac.id=a.activity_id
inner join 
	task on task.id=ac.task_id
where task.project_id="1"
order by task.project_id;
