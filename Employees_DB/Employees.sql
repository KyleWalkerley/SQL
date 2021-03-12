CREATE TABLE employees (
employee_id bigserial,
first_name varchar(50),
last_name varchar(50),
id_number varchar(20),
age varchar(3),
nationality varchar(50),
date_of_birth integer,
phone varchar(10),
CONSTRAINT employee_key PRIMARY KEY (employee_id),
titles_id integer REFERENCES titles (titles_id)
);

CREATE TABLE departments(
dep_id bigserial,
department_name varchar(50),
CONSTRAINT dep_key PRIMARY KEY (dep_id)
);

CREATE TABLE salaries(
salaries_id serial,
salary numeric,
CONSTRAINT salaries_key PRIMARY KEY (salaries_id)
);

drop table salaries;

CREATE TABLE titles(
titles_id bigserial,
titles varchar(50),
dep_id integer REFERENCES departments (dep_id),
CONSTRAINT titles_key PRIMARY KEY (titles_id)	
);

CREATE TABLE salaries_increase(

);

CREATE TABLE Overtime_Hours(
overtime_hours_id bigserial,
Total_hours_worked integer,
CONSTRAINT overtime_hours_key PRIMARY KEY (overtime_hours_id)
);

ALTER TABLE employees 
add column department integer references departments(dep_id);

ALTER TABLE employees 
add column salary integer references salaries(salaries_id);

ALTER TABLE employees 
add column title integer references titles(titles_id);

ALTER TABLE employees 
add column hours_worked integer references Overtime_Hours(overtime_hours_id);

Insert into employees(first_name,last_name,id_number,age ,nationality,date_of_birth,phone,titles_id)
Values
('Kyle', 'Walkerley', '0110305061084', '19', 'South-Africa', 2001-10-30, '0769409564',1),
('Jan', 'Pan', '0104186452012', '19', 'South-Africa', 2001-04-18, '0845624789',2),
('Juan', 'Engelbreght', '0109047461325', '19', 'Zimbabwe', 2001-09-04, '0145789354',3),
('Richard', 'Nel', '0101013458741', '19', 'Botswana', 2001-01-01, '0348789652',4),
('Robert', 'Spence', '0105097845123', '19', 'Germany', 2001-05-09, '0789561425',5),
('Stehan', 'Wollmerans', '9906012457987', '21', 'America', 1999-06-01, '0548787451',6),
('Calvin', 'Smith', '0002013265987', '20', 'South-Africa', 2000-02-01, '0789456123',7),
('Armin', 'Jonker', '8812258469146', '33', 'Mexico', 1988-12-25, '0767845212',8),
('Ruan', 'Appelgryn', '0110205784107', '19', 'Japan', 2001-10-20, '0762563254',9),
('Estian', 'Beeslaar', '0112120201045', '19', 'South-Africa', 2001-12-12, '0778945612',10),
('Lucas', 'Schooman', '0111110245784', '19', 'South-Africa', 2001-11-11, '0789369854',8),
('Jean-Marie', 'Van der Colf', '0108045487952', '19', 'South-Africa', 2001-08-04, '0014587954',2),
('Marisca', 'Van der Wald', '0112310125478', '19', 'South-Africa', 2001-12-31, '0894561478',5);

insert into departments (department_name)
values
('HR'), 
('ENGINEERING'), 
('MANAGEMENT'), 
('AUTORIZATION'), 
('MEDICAL_STAFF'), 
('CLEANERS'), 
('PRODUCTION'), 
('PURCHASING'), 
('ACCOUNTING_FINANCES'), 
('MARKETING'); 

insert into titles (titles,dep_id)
values
('Manager',1),
('Intern',2),
('Senior',3),
('Junior',4),
('Manager',5),
('Intern',6),
('Senior',7),
('Junior',8),
('Manager',9),
('Senior',10),
('Junior',5),
('Manager',10),
('Intern',8);

insert into salaries(salary,salary_id)
values
(50000,1),
(1000000,2),
(250000,3),
(350000,4),
(650000,5),
(190000,6),
(495000,7),
(345000,8),
(2500000,9),
(190000,10),
(495000,3),
(345000,6),
(90000,1);

insert into overtime_hours(Total_hours_worked)
values
(40),
(39),
(52),
(50),
(34),
(41),
(40),
(45),
(40),
(40),
(49),
(42),
(21);

ALTER TABLE employees DROP COLUMN department;


ALTER TABLE employees DROP COLUMN salary;


ALTER TABLE employees DROP COLUMN title;


ALTER TABLE employees DROP COLUMN hours_worked;

select employees.first_name, employees.last_name, departments.department_name, titles.titles, salaries.salary, overtime_hours.total_hours_worked
from employees left join departments
on employees.department = departments.dep_id
left join titles
on employees.title = titles.titles_id
left join salaries
on employees.salary = salaries.salaries_id
left join overtime_hours
on employees.hours_worked = overtime_hours.overtime_hours_id;



