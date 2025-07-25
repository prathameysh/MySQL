DROP TABLE IF EXISTS students;

CREATE TABLE students (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    name TEXT,
    age INTEGER
);

INSERT INTO students (name, age) VALUES ('Prathamesh', 21);
INSERT INTO students (name, age) VALUES ('Bob', 22);
INSERT INTO students (name, age) VALUES ('Charlie', 20);


SELECT * FROM students WHERE age > 20;