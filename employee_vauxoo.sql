-- Your sql code in this file
-- NOTE: Please, don't add sentence to create database in this script file.
--       You can create database locally to test it.
--       Consider add ';' at end sentence.

CREATE TABLE employee (
    id seria PRIMARY KEY,
    department_id integer REFERENCES employee_department,
    first_name varchar(50) NOT NULL,
    last_name varchar(50) NOT NULL
    
    
    
);

CREATE TABLE employee_department (
    id serial PRIMARY KEY,
    name varchar(50),
    description varchar(50)
);

CREATE TABLE employee_hobby (
);

INSERT INTO employee_department (name, description) VALUES ('Cocteleria', 'departamento de Cocteleria');
INSERT INTO employee_department (name, description) VALUES ('juegos','departamento de juegos');
INSERT INTO employee_department (name, description) VALUES ('maquillaje', 'departamento de maquillaje');
INSERT INTO employee_department (name, description) VALUES ('mascotas', 'departamento de mascotas');
INSERT INTO employee_department (name, description) VALUES ('computacion', 'departamento de computacion');
INSERT INTO employee_department (name, description) VALUES ('mercadotecnia', 'departamento de mercadotecnia');

INSERT INTO employee (first_name, last_name,department_id) VALUES ('Carlos','Damian',5);
INSERT INTO employee (first_name, last_name,department_id) VALUES ('Uriel','Gonzalez',4);
INSERT INTO employee (first_name, last_name,department_id) VALUES ('Diana','chavez',1);
INSERT INTO employee (first_name, last_name,department_id) VALUES ('elena','Chavez',6);
-- ...
