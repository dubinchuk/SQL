-- 1. Вывести всех работников чьи зарплаты есть в базе, вместе с зарплатами.
 
 select e.employee_name as "Name", s.monthly_salary as "Salary" from employee_salary as es
 join employees as e on e.id = es.employee_id 
 join salary as s on s.id = es.salary_id;

-- 2. Вывести всех работников у которых ЗП меньше 2000.
 
 select e.employee_name as "Name" from employee_salary as es
 join employees as e on e.id = es.employee_id 
 join salary as s on s.id = es.salary_id
 where s.monthly_salary < 2000;
  
-- 3. Вывести все зарплатные позиции, но работник по ним не назначен. (ЗП есть, но не понятно кто её получает.)
 
 select s.monthly_salary as "Salary" from employee_salary as es 
 join salary as s on s.id = es.salary_id
 left join employees as e on e.id = es.employee_id
 where e.id isnull;
 
-- 4. Вывести все зарплатные позиции  меньше 2000 но работник по ним не назначен. (ЗП есть, но не понятно кто её получает.)
 
 select s.monthly_salary as "Salary" from employee_salary as es 
 join salary as s on s.id = es.salary_id
 left join employees as e on e.id = es.employee_id
 where e.id isnull and s.monthly_salary < 2000; 
 
-- 5. Найти всех работников кому не начислена ЗП.
 
 select e.employee_name as "Name" from employee_salary as es
 right join employees as e on e.id = es.employee_id 
 where es.salary_id is null;
 
-- 6. Вывести всех работников с названиями их должности.
 
 select e.employee_name as "Name", r.role_name as "Position" from roles_employee as re 
 join employees as e on e.id = re.employee_id
 join roles as r on r.id = re.role_id;
 
-- 7. Вывести имена и должность только Java разработчиков.
 
 select e.employee_name as "Name", r.role_name as "Position" from roles_employee as re 
 join employees as e on e.id = re.employee_id
 join roles as r on r.id = re.role_id
 where r.role_name like '%Java %';
 
-- 8. Вывести имена и должность только Python разработчиков.
 
 select e.employee_name as "Name", r.role_name as "Position" from roles_employee as re 
 join employees as e on e.id = re.employee_id
 join roles as r on r.id = re.role_id
 where r.role_name like '%Python%';
 
-- 9. Вывести имена и должность всех QA инженеров.
 
 select e.employee_name as "Name", r.role_name as "Position" from roles_employee as re 
 join employees as e on e.id = re.employee_id
 join roles as r on r.id = re.role_id
 where r.role_name like '%QA%';
 
-- 10. Вывести имена и должность ручных QA инженеров.
 
 select e.employee_name as "Name", r.role_name as "Position" from roles_employee as re 
 join employees as e on e.id = re.employee_id
 join roles as r on r.id = re.role_id
 where r.role_name like '%Manual QA%';
  
-- 11. Вывести имена и должность автоматизаторов QA
 
 select e.employee_name as "Name", r.role_name as "Position" from roles_employee as re 
 join employees as e on e.id = re.employee_id
 join roles as r on r.id = re.role_id
 where r.role_name like '%Automation QA%';

-- 12. Вывести имена и зарплаты Junior специалистов
 
 select e.employee_name as "Name", s.monthly_salary as "Salary" from employees as e 
 join roles_employee as re on re.employee_id = e.id
 join roles as r on r.id = re.role_id
 left join employee_salary as es on es.employee_id = re.employee_id
 left join salary as s on s.id = es.salary_id
 where r.role_name like '%Junior%';

-- 13. Вывести имена и зарплаты Middle специалистов
 
 select e.employee_name as "Name", s.monthly_salary as "Salary" from employees as e 
 join roles_employee as re on re.employee_id = e.id
 join roles as r on r.id = re.role_id
 left join employee_salary as es on es.employee_id = re.employee_id
 left join salary as s on s.id = es.salary_id
 where r.role_name like '%Middle%';
 
-- 14. Вывести имена и зарплаты Senior специалистов
 
 select e.employee_name as "Name", s.monthly_salary as "Salary" from employees as e 
 join roles_employee as re on re.employee_id = e.id
 join roles as r on r.id = re.role_id
 left join employee_salary as es on es.employee_id = re.employee_id
 left join salary as s on s.id = es.salary_id
 where r.role_name like '%Senior%';

-- 15. Вывести зарплаты Java разработчиков
 
 select s.monthly_salary as "Salary" from salary as s 
 join employee_salary as es on es.salary_id = s.id 
 right join roles_employee as re on re.employee_id = es.employee_id 
 join roles as r on r.id = re.role_id 
 join employees as e on e.id = re.employee_id
 where r.role_name like '%Java %';
 
-- 16. Вывести зарплаты Python разработчиков
 
 select s.monthly_salary as "Salary" from salary as s 
 join employee_salary as es on es.salary_id = s.id 
 right join roles_employee as re on re.employee_id = es.employee_id 
 join roles as r on r.id = re.role_id 
 join employees as e on e.id = re.employee_id
 where r.role_name like '%Python%';

-- 17. Вывести имена и зарплаты Junior Python разработчиков
 
 select e.employee_name as "Name", s.monthly_salary as "Salary" from employees as e 
 join roles_employee as re on re.employee_id = e.id
 join roles as r on r.id = re.role_id
 left join employee_salary as es on es.employee_id = re.employee_id
 left join salary as s on s.id = es.salary_id
 where r.role_name like 'Junior Python%';

-- 18. Вывести имена и зарплаты Middle JS разработчиков
 
 select e.employee_name as "Name", s.monthly_salary as "Salary" from employees as e 
 join roles_employee as re on re.employee_id = e.id
 join roles as r on r.id = re.role_id
 left join employee_salary as es on es.employee_id = re.employee_id
 left join salary as s on s.id = es.salary_id
 where r.role_name like 'Middle JavaScript%';

-- 19. Вывести имена и зарплаты Senior Java разработчиков
 
 select e.employee_name as "Name", s.monthly_salary as "Salary" from employees as e 
 join roles_employee as re on re.employee_id = e.id
 join roles as r on r.id = re.role_id
 left join employee_salary as es on es.employee_id = re.employee_id
 left join salary as s on s.id = es.salary_id
 where r.role_name like 'Senior Java%';

-- 20. Вывести зарплаты Junior QA инженеров
 
 select s.monthly_salary as "Salary" from salary as s 
 join employee_salary as es on es.salary_id = s.id 
 right join roles_employee as re on re.employee_id = es.employee_id 
 join roles as r on r.id = re.role_id 
 join employees as e on e.id = re.employee_id
 where r.role_name like 'Junior%QA%'; 

-- 21. Вывести среднюю зарплату всех Junior специалистов
 
 select AVG(s.monthly_salary) as "Avg Salary" from salary as s 
 join employee_salary as es on es.salary_id = s.id 
 right join roles_employee as re on re.employee_id = es.employee_id 
 join roles as r on r.id = re.role_id 
 join employees as e on e.id = re.employee_id
 where r.role_name like 'Junior%'; 

-- 22. Вывести сумму зарплат JS разработчиков
 
 select SUM(s.monthly_salary) as "Sum Salary" from salary as s 
 join employee_salary as es on es.salary_id = s.id 
 right join roles_employee as re on re.employee_id = es.employee_id 
 join roles as r on r.id = re.role_id 
 join employees as e on e.id = re.employee_id
 where r.role_name like '%JavaScript%';  
 
-- 23. Вывести минимальную ЗП QA инженеров
 
 select MIN(s.monthly_salary) as "Min Salary" from salary as s 
 join employee_salary as es on es.salary_id = s.id 
 right join roles_employee as re on re.employee_id = es.employee_id 
 join roles as r on r.id = re.role_id 
 join employees as e on e.id = re.employee_id
 where r.role_name like '%QA%';  

-- 24. Вывести максимальную ЗП QA инженеров
 
 select MAX(s.monthly_salary) as "Max Salary" from salary as s 
 join employee_salary as es on es.salary_id = s.id 
 right join roles_employee as re on re.employee_id = es.employee_id 
 join roles as r on r.id = re.role_id 
 join employees as e on e.id = re.employee_id
 where r.role_name like '%QA%';

-- 25. Вывести количество QA инженеров

 select COUNT(r.role_name) as "Number of employees" from roles as r
 join roles_employee as re on re.role_id = r.id
 where r.role_name like '%QA%'; 
 
-- 26. Вывести количество Middle специалистов.
 
 select COUNT(r.role_name) as "Number of employees" from roles as r
 join roles_employee as re on re.role_id = r.id
 where r.role_name like 'Middle%'; 

-- 27. Вывести количество разработчиков
 
 select COUNT(r.role_name) as "Number of employees" from roles as r
 join roles_employee as re on re.role_id = r.id
 where r.role_name like '%developer'; 

-- 28. Вывести фонд (сумму) зарплаты разработчиков.
 
 select SUM(s.monthly_salary) as "Salary fund" from salary as s 
 join employee_salary as es on es.salary_id = s.id 
 right join roles_employee as re on re.employee_id = es.employee_id 
 join roles as r on r.id = re.role_id 
 join employees as e on e.id = re.employee_id
 where r.role_name like '%developer';

-- 29. Вывести имена, должности и ЗП всех специалистов по возрастанию
 
 select e.employee_name as "Name", r.role_name as "Position", s.monthly_salary as "Salary" from employee_salary as es 
 join roles_employee as re on re.employee_id = es.employee_id 
 join employees as e on e.id = re.employee_id
 join roles as r on r.id = re.role_id
 join salary as s on s.id = es.salary_id
 order by s.monthly_salary; 

-- 30. Вывести имена, должности и ЗП всех специалистов по возрастанию у специалистов у которых ЗП от 1700 до 2300
 
 select e.employee_name as "Name", r.role_name as "Position", s.monthly_salary as "Salary" from employee_salary as es 
 join roles_employee as re on re.employee_id = es.employee_id 
 join employees as e on e.id = re.employee_id
 join roles as r on r.id = re.role_id
 join salary as s on s.id = es.salary_id
 where s.monthly_salary > 1700 and s.monthly_salary < 2300
 order by "Salary"; 

-- 31. Вывести имена, должности и ЗП всех специалистов по возрастанию у специалистов у которых ЗП меньше 2300
 
 select e.employee_name as "Name", r.role_name as "Position", s.monthly_salary as "Salary" from employee_salary as es 
 join roles_employee as re on re.employee_id = es.employee_id 
 join employees as e on e.id = re.employee_id
 join roles as r on r.id = re.role_id
 join salary as s on s.id = es.salary_id
 where s.monthly_salary < 2300
 order by "Salary"; 
 
-- 32. Вывести имена, должности и ЗП всех специалистов по возрастанию у специалистов у которых ЗП равна 1100, 1500, 2000
 
 select e.employee_name as "Name", r.role_name as "Position", s.monthly_salary as "Salary" from employee_salary as es 
 join roles_employee as re on re.employee_id = es.employee_id 
 join employees as e on e.id = re.employee_id
 join roles as r on r.id = re.role_id
 join salary as s on s.id = es.salary_id
 where s.monthly_salary = 1100 or s.monthly_salary = 1500 or s.monthly_salary = 2000
 order by "Salary"; 