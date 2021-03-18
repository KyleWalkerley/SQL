CREATE TABLE my_contacts(
contact_id bigserial,
last_name varchar(50),
first_name varchar(50),
phone varchar(10),
email varchar(100),
gender varchar (6),
birthday varchar (8),
CONSTRAINT contact_key PRIMARY KEY (contact_id)
);

drop table my_contacts

CREATE TABLE interests(
interest_id bigserial,
interest varchar (100),
CONSTRAINT interest_key PRIMARY KEY (interest_id)
);

CREATE TABLE seeking(
seeking_id bigserial,
seeking varchar(50),
CONSTRAINT seeking_key PRIMARY KEY (seeking_id)
);

CREATE TABLE profession(
prof_id bigserial,
profession varchar(50),
CONSTRAINT prof_key PRIMARY KEY (prof_id)
);

CREATE TABLE zip_code(
zip_code_id bigserial,
city varchar (50),
province varchar (50),
CONSTRAINT zip_code_key PRIMARY KEY (zip_code_id)
);

CREATE TABLE status(
status_id bigserial,
status varchar (50),
CONSTRAINT status_key PRIMARY KEY (status_id)
);

CREATE TABLE contact_seeking();

CREATE TABLE contact_interest();

insert into my_contacts (last_name,first_name,phone,email,gender,birthday,profession,status,zip_code)
values
('Walkerley','Kyle','0769409564','kyle_walk@icloud.com','male',30-10-2001,1,1,1),
('Aartaple','At','0825568794','ATAARTAPLE@gmail.com','male',2001-04-25,2,2,2),
('Sak','Sannie','0763254456','SakSannie@internext.co.za','female',1999-12-25,3,3,3);

insert into interests (interest)
values
('Loves Cricket'),
('Loves Swimming'),
('Loves Bike riding');

insert into seeking (seeking)
values
('Wants to meet someone that wants to do the same as me.'),
('Want to meet someone that can look after me.'),
('Want to find someone that is passionat about life.');

insert into profession (profession)
values
('IT Manager'),
('Maths Teacher'),
('Community leader');

insert into zip_code(city,province)
values
('Hartbeespoort','North-West'),
('Cape Town','Eastern Cape'),
('Balito','KZN');

insert into status(status)
values
('Single'),
('Single'),
('Divorced');

alter table my_contacts
add column zip_code integer references zip_code(zip_code_id)

alter table my_contacts
add column status integer references status (status_id)

alter table my_contacts
add column profession integer references profession (prof_id)

alter column contact_interest
add column 