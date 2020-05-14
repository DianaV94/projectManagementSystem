use projects;
select
	pm.project_id,
    pm.user_account_id,
    p.client_id,
	p.project_name
from 
	project_manager pm
inner join
	project p on p.id=pm.project_id

	
	
