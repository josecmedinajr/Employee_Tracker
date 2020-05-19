DROP DATABASE IF EXISTS Employee_Tracker_db;

CREATE DATABASE Employee_Tracker_db;

USE Employee_Tracker_db;

CREATE TABLE department (
id INT(10) AUTO_INCREMENT NOT NULL,
name VARCHAR(30) NOT NULL,
PRIMARY KEY(id)
);

-- * **department**:
--   * **id** - INT PRIMARY KEY
--   * **name** - VARCHAR(30) to hold department name

CREATE TABLE employee (
 id INT(10) AUTO_INCREMENT NOT NULL,
 first_name VARCHAR(30) NOT NULL,
 last_name VARCHAR(30) NOT NULL,
 role_id INT(10) NOT NULL,
 manager_id INT(10),
 PRIMARY KEY(id)
);

-- * **employee**:
--   * **id** - INT PRIMARY KEY
--   * **first_name** - VARCHAR(30) to hold employee first name
--   * **last_name** - VARCHAR(30) to hold employee last name
--   * **role_id** - INT to hold reference to role employee has
--   * **manager_id** - INT to hold reference to another employee that manager of the current employee. This field may be null if the employee has no manager

CREATE TABLE role (
 id INT (10) AUTO_INCREMENT NOT NULL,
 title VARCHAR (30) NOT NULL,
 salary DECIMAL (15) NOT NULL,
 department_id INT (10) NOT NULL, 
 PRIMARY KEY (id)
);

-- * **role**:

--   * **id** - INT PRIMARY KEY
--   * **title** -  VARCHAR(30) to hold role title
--   * **salary** -  DECIMAL to hold role salary
--   * **department_id** -  INT to hold reference to department role belongs to

