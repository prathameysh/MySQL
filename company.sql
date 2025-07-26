-- These commands will run on company.db
-- and will NOT affect mydb.db

CREATE TABLE employees (
  employee_id INTEGER PRIMARY KEY,
  first_name TEXT,
  last_name TEXT,
  hire_date TEXT
);

INSERT INTO employees (first_name, last_name, hire_date)
VALUES ('Sania', 'Mirza', '2025-07-25');

SELECT * FROM employees;
