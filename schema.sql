USE employeezDB;

CREATE TABLE department (
    id INT AUTO_INCREMENT PRIMARY KEY NOT NULL,
    department_name varchar(30) NOT NULL
);

CREATE TABLE role (
    id INT AUTO_INCREMENT PRIMARY KEY NOT NULL,
    role_name varchar(30) NOT NULL,
    salary DECIMAL(4,4) NULL,
    department_id INT NULL
);


CREATE TABLE employee (
    id INT AUTO_INCREMENT PRIMARY KEY NOT NULL,
    first_name varchar(30) NULL,
    last_name varchar(30) NULL,
    role_id INT NULL,
    manager_id INT NULL
);

-- index role_id(role_id),
--     index manager_id(manager_id), 
--     FOREIGN KEY(role_id) REFERENCES employee_role(id) on DELETE CASCADE, 
--     FOREIGN KEY(manager_id) REFERENCES employee(id) on DELETE CASCADE