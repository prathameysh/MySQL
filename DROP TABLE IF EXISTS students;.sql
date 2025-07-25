DROP TABLE IF EXISTS student;

CREATE TABLE student (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  name TEXT NOT NULL,
  age INTEGER
);

INSERT INTO student (name, age) VALUES
('Alice', 21),
('Bob', 22),
('Charlie', 20);

SELECT * FROM student;
