USE employeezDB;
CREATE TABLE department (
    id INT AUTO_INCREMENT PRIMARY KEY NOT NULL,
    department_name varchar(30) NOT NULL
);
CREATE TABLE IF NOT EXISTS role (
    id INT AUTO_INCREMENT PRIMARY KEY NOT NULL,
    role_name varchar(30) NOT NULL,
    salary DECIMAL(4,4) NULL,
    department_id INT NULL,
    FOREIGN KEY (`department_id`) REFERENCES `department` (`department_name`)
);
CREATE TABLE IF NOT EXISTS employee (
    id INT AUTO_INCREMENT PRIMARY KEY NOT NULL,
    first_name varchar(30) NULL,
    last_name varchar(30) NULL,
    role_id INT NULL,
    manager_id INT NULL,
    FOREIGN KEY (`role_id`) REFERENCES `role` (`role_name`)
);