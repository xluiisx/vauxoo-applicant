-- Your sql code in this file
-- NOTE: Please, don't add sentence to create database in this script file.
--       You can create database locally to test it.
--       Consider add ';' at end sentence.

CREATE TABLE employee (
    PRIMARY KEY (id),
    id INT,
    id_dep INT,
    name varchar (30),
    first_name varchar (30),
    last_name varchar (30),
    FOREIGN KEY (id_dep) REFERENCES employee_department(id) 
);

CREATE TABLE employee_department (
    PRIMARY KEY (id),
    id INT,
    id_em INT,
    name varchar (30),
    description varchar (30),
    FOREIGN KEY (id_em) REFERENCES employee(id)
);

CREATE TABLE employee_hobby (
    PRIMARY KEY (id),
    id INT,
    name varchar (30),
    description varchar (30),
);
CREATE TABLE hoobies(
    id_e INT,
    id_d INT,
    PRIMARY KEY (id_e),
    PRIMARY KEY (id_d),
    FOREIGN KEY (id_e) REFERENCES employee(id),
    FOREIGN KEY (id_d) REFERENCES employee_department(id)
);
CREATE TABLE boos(
    id_b INT,
    id_e INT,
    PRIMARY KEY (id_b),
    PRIMARY KEY (id_e),
    FOREIGN KEY (id_b) REFERENCES employee(id),
    FOREIGN KEY (id_e) REFERENCES employee(id),

}
INSERT INTO employee VALUES(1,1,'Luis','Triana');
INSERT INTO employee VALUES(2,2,'David','Sanchez');
INSERT INTO employee VALUES(3,3,'Ale','Escandon');
INSERT INTO employee VALUES(4,4,'Alan Ramos');

INSERT INTO employee_department VALUES(1,'Lacteos','Lacteos');
INSERT INTO employee_department VALUES(2,'Bicicletas','Bicicletas');
INSERT INTO employee_department VALUES(3,'Herramientas','Herramientas');
INSERT INTO employee_department VALUES(4,'Jugos','Jugos');
INSERT INTO employee_department VALUES(5,'Juguetes','Juguetes');
INSERT INTO employee_department VALUES(6,'Pinturas','Pinturas');
-- ...
INSERT INTO employee_hobby VALUES(1,'Gamer','Gamer');
INSERT INTO employee_hobby VALUES(2,'Biker','Biker');
INSERT INTO employee_hobby VALUES(3,'Roller','Roller');

INSERT INTO hoobies VALUES(1,1,2);
INSERT INTO hoobies VALUES(1,2,3);
INSERT INTO hoobies VALUES(2,3,1);
INSERT INTO hoobies VALUES(2,2,3);
INSERT INTO hoobies VALUES(3,3,1);
INSERT INTO hoobies VALUES(3,2,1);
INSERT INTO hoobies VALUES(4,1,2);
INSERT INTO hoobies VALUES(4,2,3);

INSERT INTO boss VALUES(4,1);
INSERT INTO boss VALUES(4,2);
INSERT INTO boss VALUES(4,3);