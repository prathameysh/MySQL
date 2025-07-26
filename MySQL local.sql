CREATE table student(
    id INT PRIMARY KEY,
    name VARCHAR(100)
);

INSERT INTO student VALUES (21,'Prathamesh');
INSERT INTO student VALUES ( 22,'Bob');
INSERT INTO student VALUES (20,'Charlie');

SELECT * FROM student;

SHOW TABLES;

DROP table student;

create DATABASE practice;

SHOW DATABASES;

USE practice;

SELECT name 
FROM student 
WHERE id>21;

SELECT ();

DESC student;

ALTER table student
RENAME COLUMN id to roll;

ALTER table student
ADD PRIMARY KEY(roll);


CREATE DATABASE org;

use org;

CREATE TABLE Worker (
    WORKER_ID INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    FIRST_NAME CHAR(25),
    LAST_NAME CHAR(25),
    SALARY INT(15),
    JOINING_DATE DATETIME,
    DEPARTMENT CHAR(25)
);

INSERT INTO Worker
(WORKER_ID, FIRST_NAME, LAST_NAME, SALARY, JOINING_DATE, DEPARTMENT) VALUES
(001, 'Monika', 'Arora', 100000, '2014-02-20 09:00:00', 'HR'),
(002, 'Niharika', 'Verma', 80000, '2014-06-11 09:00:00', 'Admin'),
(003, 'Vishal', 'Singhal', 300000, '2014-02-20 09:00:00', 'HR'),
(004, 'Amitabh', 'Singh', 500000, '2014-02-20 09:00:00', 'Admin'),
(005, 'Vivek', 'Bhati', 500000, '2014-06-11 09:00:00', 'Admin'),
(006, 'Vipul', 'Diwan', 200000, '2014-06-11 09:00:00', 'Account'),
(007, 'Satish', 'Kumar', 75000, '2014-01-20 09:00:00', 'Account'),
(008, 'Geetika', 'Chauhan', 90000, '2014-04-11 09:00:00', 'Admin');

SELECT * FROM Worker;