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
     id serial PRIMARY KEY,
    name varchar(50),
    description varchar(50)
    
);

CREATE TABLE employee_hobbies (
	employee_id integer REFERENCES employee,
	hobby_id integer REFERENCES employee_hobby,
	PRIMARY KEY (employee_id, hobby_id)
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
INSERT INTO employee (first_name, last_name,department_id) VALUES ('Diana','chavez',1);

INSERT INTO employee_hobby (name, description) VALUES ('lectura', 'leer libros');
INSERT INTO employee_hobby (name, description) VALUES ('videojuegos', 'jugar videojuegos');
INSERT INTO employee_hobby (name, description) VALUES ('peliculas', 'ver peliculas');

INSERT INTO employee_hobbies (employee_id, hobby_id) VALUES (1, 1);
INSERT INTO employee_hobbies (employee_id, hobby_id) VALUES (1, 2);
INSERT INTO employee_hobbies (employee_id, hobby_id) VALUES (2, 3);
INSERT INTO employee_hobbies (employee_id, hobby_id) VALUES (2, 1);
INSERT INTO employee_hobbies (employee_id, hobby_id) VALUES (3, 2);
INSERT INTO employee_hobbies (employee_id, hobby_id) VALUES (3, 3);
INSERT INTO employee_hobbies (employee_id, hobby_id) VALUES (4, 1);
INSERT INTO employee_hobbies (employee_id, hobby_id) VALUES (4, 3);
-- ...
