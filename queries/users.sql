use users;
select
	m.employee_id,
    e.employee_name,
    r.role_name,
    t.team_name
from
	team_member m
inner join 
	employee e on e.id=m.employee_id
inner join
	role r on r.id=m.role_id
inner join
	team t on t.id=m.team_id;