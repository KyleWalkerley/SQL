CREATE TABLE my_contacts(
contact_id bigserial,
last_name varchar(50),
first_name varchar(50),
phone varchar(10),
email varchar(100),
gender varchar (6),
birthday date,
CONSTRAINT contact_key PRIMARY KEY (contact_id),

);

CREATE TABLE interests(
interest_id bigserial,
interest varchar (100),
CONSTRAINT interest_key PRIMARY KEY (interest_id),
);

CREATE TABLE seeking(
seeking_id bigserial,
seeking varchar(50),
CONSTRAINT seeking_key PRIMARY KEY (seeking_id),
);

CREATE TABLE profession(
prof_id bigserial,
profession varchar(50),
CONSTRAINT prof_key PRIMARY KEY (prof_id),
);

CREATE TABLE zip_code(
zip_code bigserial,
city varchar (50),
province varchar (50),
CONSTRAINT zip_code_key PRIMARY KEY (zip_code_id),
);

CREATE TABLE status(
status_id bigserial,
status varchar (50),
CONSTRAINT status_key PRIMARY KEY (status_id),
);

ALTER TABLE my_contacts
add column profession bigserial REFERENCES profession (prof_id)

insert into my_contacts (last_name,first_name,phone,email,gender,birthday)
values
('Walkerley','Kyle','0769409564','kyle_walk@icloud.com','male',2001-10-30),
('Aartaple','At','0825568794','ATAARTAPLE@gmail.com','male',2001-04-25),
('Sak','Sannie','0763254456','SakSannie@internext.co.za','female',1999-12-25);