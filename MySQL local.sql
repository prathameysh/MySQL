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

CREATE TABLE Bonus (
    WORKER_REF_ID INT,
    BONUS_AMOUNT INT(10),
    BONUS_DATE DATETIME,
    FOREIGN KEY (WORKER_REF_ID)
        REFERENCES Worker(WORKER_ID)
        ON DELETE CASCADE
);

INSERT INTO Bonus
(WORKER_REF_ID, BONUS_AMOUNT, BONUS_DATE) VALUES
(001, 5000, '2016-02-20'),
(002, 3000, '2016-06-11'),
(003, 4000, '2016-02-20'),
(001, 4500, '2016-02-20'),
(002, 3500, '2016-06-11');

CREATE TABLE Title (
    WORKER_REF_ID INT,
    WORKER_TITLE CHAR(25),
    AFFECTED_FROM DATETIME,
    FOREIGN KEY (WORKER_REF_ID)
        REFERENCES Worker(WORKER_ID)
        ON DELETE CASCADE
);

INSERT INTO Title
(WORKER_REF_ID, WORKER_TITLE, AFFECTED_FROM) VALUES
(001, 'Manager', '2016-02-20 00:00:00'),
(002, 'Executive', '2016-06-11 00:00:00'),
(008, 'Executive', '2016-06-11 00:00:00'),
(005, 'Manager', '2016-06-11 00:00:00'),
(004, 'Asst. Manager', '2016-06-11 00:00:00'),
(007, 'Executive', '2016-06-11 00:00:00'),
(006, 'Lead', '2016-06-11 00:00:00'),
(003, 'Lead', '2016-06-11 00:00:00');

select * 
from worker 
order by salary desc LIMIT 1,3;

select w1.* from worker w1, worker w2 where w1.salary = w2.salary and w1.worker_id !=
w2.worker_id;