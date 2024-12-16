create table company (
                         id serial primary key,
                         company_name varchar,
                         company_industry varchar
);

alter table company add column date_of_foundation date;

alter table company rename company_industry to sphere;


create table employee (
                          id serial primary key ,
                          first_name varchar,
                          last_name varchar,
                          duty varchar,
                          salary decimal (10, 2),
                          company_id integer references company(id)
);

alter table employee add column date_of_birth date;

alter table employee rename duty to position;


INSERT INTO company (company_name, sphere ,date_of_foundation )
VALUES
    ('TechCorp', 'Technology', '1991-11-10'),
    ('HealthPlus', 'Healthcare', '1998-11-11'),
    ('EduWorld', 'Education', '1990-12-12');


INSERT INTO employee (first_name, last_name, position, salary, company_id, date_of_birth )
VALUES
    ('Alice', 'Johnson', 'Software Engineer', 85000.00, 1,'1978-11-12'),
    ('Bob', 'Smith', 'Project Manager', 95000.00, 1, '1976-10-11'),
    ('Charlie', 'Brown', 'Doctor', 120000.00, 2, '1975-12-10');