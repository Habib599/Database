Answer 1
select *
from employees
where salary =(select distinct salary
				from employees
				order by salary DESC
				limit 1
				offset 2
                );

Answer 2
select *
from employees
where salary =(select distinct salary
				from employees
				order by salary ASC
				limit 1
				offset 2
                );

Answer 3
select *
from employees
where hire_date > (select hire_date
					from employees
					where first_name= 'Steven'
					limit 1
					);


Answer 4
1st part

with 3rdhigh as
(
select *
from employees
where salary =(select distinct salary
				from employees
				order by salary DESC
				limit 1
				offset 2
                )
)

select *
from 3rdhigh;

2nd part

with 3rdlow as
(
select *
from employees
where salary =(select distinct salary
				from employees
				order by salary ASC
				limit 1
				offset 2
                )
)
select *
from 3rdlow;
