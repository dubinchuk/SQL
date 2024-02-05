-- Полное описание задания - https://github.com/dubinchuk/SQL/blob/main/SQL_HW1/README.md
-- 1. Создать таблицу employees

create table employees(
	id serial primary key,
	employee_name varchar(50) not null
);

-- 2. Наполнить таблицу employee 70 строками.
-- Для наполнения таблицы используется генератор имён в Python:
/* import names

for i in range(0, 70):

    random_name = names.get_full_name()

    result = '(' + "'" + random_name + "'" + '),'
    print(result) */

insert into employees(employee_name)
values 	('Lisa Quick'),
		('Nathan Williams'),
		('Joseph Mckain'),
		('Nichole Smith'),
		('Ross Adams'),
		('Evelyn Andreas'),
		('Stanley Cilley'),
		('Cassi Kim'),
		('Maria Yazzie'),
		('James Alexander'),
		('Pedro Benefiel'),
		('Edward Davis'),
		('Joseph Kelly'),
		('Micheal Shanahan'),
		('Matthew Page'),
		('Bruce Burke'),
		('Leonard Darrah'),
		('Rosa Marshall'),
		('Stella Eckerson'),
		('Dale Adams'),
		('Janice Severy'),
		('Sarah Swartzentrube'),
		('Jana Peters'),
		('Monica Morales'),
		('Doris Leanos'),
		('Leigh Bryant'),
		('Ryan Allen'),
		('Nellie Brown'),
		('Marsha Martinez'),
		('James Brown'),
		('Delbert Johnson'),
		('Marie Laureano'),
		('Jill Pikula'),
		('William Lee'),
		('John Durfee'),
		('Edward Strong'),
		('Rosendo Chavous'),
		('Ali Drury'),
		('John Powell'),
		('Molly Henderson'),
		('Brian Baydal'),
		('Darrell Hudson'),
		('Margaret Collins'),
		('Zachary Clark'),
		('Faye Barrera'),
		('Lillian Collins'),
		('Patrick Smith'),
		('Tracy Jones'),
		('Todd Dugger'),
		('Laura Johnson'),
		('Tim Marin'),
		('Irene Sheets'),
		('Jeffrey Ruffner'),
		('Peter Smith'),
		('Bessie Bishop'),
		('Mary Watson'),
		('Philip Denyes'),
		('Anne Mansfield'),
		('Rae Grundy'),
		('Jason Caple'),
		('Melinda Layman'),
		('David Dial'),
		('Vickie Donaldson'),
		('Marcus Larson'),
		('Alex Roof'),
		('Mary Bautista'),
		('Joseph George'),
		('Joseph Hinds'),
		('Robert Newton'),
		('Michael Soto');
		
-- 3. Создать таблицу salary

create table salary(
	id Serial primary key,
	monthly_salary int not null
);

-- 4. Наполнить таблицу salary 15 строками

insert into salary(monthly_salary)
values 	(1000),
		(1100),
		(1200),
		(1300),
		(1400),
		(1500),
		(1600),
		(1700),
		(1800),
		(1900),
		(2000),
		(2100),
		(2200),
		(2300),
		(2400),
		(2500);
		
-- 5. Создать таблицу employee_salary

create table employee_salary(
	id serial primary key,
	employee_id int not null unique,
	salary_id int not null
);

-- 6. Наполнить таблицу employee_salary 40 строками

insert into employee_salary(employee_id, salary_id)
values 	(3, 7),
		(1, 4),
		(5, 9),
		(40, 13),
		(23, 4),
		(11, 2),
		(52, 10),
		(15, 13),
		(26, 4),
		(16, 1),
		(33, 7),
		(48, 3),
		(29, 9),
		(73, 5),
		(92, 5),
		(36, 4),
		(68, 9),
		(71, 7),
		(22, 12),
		(80, 6),
		(47, 4),
		(57, 3),
		(2, 7),
		(96, 4),
		(34, 8),
		(51, 10),
		(87, 10),
		(53, 8),
		(93, 1),
		(35, 4),
		(9, 6),
		(31, 9),
		(8, 7),
		(95, 14),
		(74, 1),
		(49, 13),
		(69, 2),
		(70, 7),
		(63, 13),
		(75, 15);

-- 7. Создать таблицу roles

create table roles(
	id serial primary key,
	role_name int not null unique
);

-- 8. Поменять тип столба role_name с int на varchar(30)

alter table roles alter column role_name type varchar(30);

-- 9. Наполнить таблицу roles 20 строками

insert into roles(role_name)
values 	('Junior Python developer'),
		('Middle Python developer'),
		('Senior Python developer'),
		('Junior Java developer'),
		('Middle Java developer'),
		('Senior Java developer'),
		('Junior JavaScript developer'),
		('Middle JavaScript developer'),
		('Senior JavaScript developer'),
		('Junior Manual QA engineer'),
		('Middle Manual QA engineer'),
		('Senior Manual QA engineer'),
		('Project Manager'),
		('Designer'),
		('HR'),
		('CEO'),
		('Sales manager'),
		('Junior Automation QA engineer'),
		('Middle Automation QA engineer'),
		('Senior Automation QA engineer');
	
-- 10. Создать таблицу roles_employee

create table roles_employee(
	id serial primary key,
	employee_id int not null unique,
	role_id int not null,
	foreign key(employee_id)
		references employees(id),
	foreign key(role_id)
		references roles(id)
);

-- 11. Наполнить таблицу roles_employee 40 строками

insert into roles_employee(employee_id, role_id)
values (7, 2),
(20, 4),
(3, 9),
(5, 13),
(23, 4),
(11, 2),
(10, 9),
(22, 13),
(21, 3),
(34, 4),
(6, 7),
(61, 20),
(56, 10),
(36, 12),
(8, 17),
(44, 18),
(25, 7),
(27, 11),
(47, 17),
(42, 7),
(39, 10),
(63, 8),
(60, 19),
(28, 6),
(29, 5),
(35, 15),
(37, 14),
(59, 1),
(38, 4),
(65, 12),
(14, 18),
(58, 17),
(62, 2),
(41, 16),
(69, 12),
(45, 20),
(66, 4),
(17, 1),
(55, 14),
(43, 18);