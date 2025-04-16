-- Create Table
CREATE TABLE employees (
    emp_id INT PRIMARY KEY,
    emp_name VARCHAR(100),
    department VARCHAR(50),
    salary INT,
    join_date DATE
);
INSERT INTO employees (emp_id, emp_name, department, salary, join_date) VALUES
(1, 'Alice', 'HR', 5000, TO_DATE('2021-05-10', 'YYYY-MM-DD'));

INSERT INTO employees (emp_id, emp_name, department, salary, join_date) VALUES
(2, 'Bob', 'HR', 4500, TO_DATE('2022-06-15', 'YYYY-MM-DD'));

INSERT INTO employees (emp_id, emp_name, department, salary, join_date) VALUES
(3, 'Carol', 'IT', 7000, TO_DATE('2020-03-20', 'YYYY-MM-DD'));

INSERT INTO employees (emp_id, emp_name, department, salary, join_date) VALUES
(4, 'Dave', 'IT', 7500, TO_DATE('2019-11-01', 'YYYY-MM-DD'));

INSERT INTO employees (emp_id, emp_name, department, salary, join_date) VALUES
(5, 'Eve', 'Sales', 5500, TO_DATE('2021-02-18', 'YYYY-MM-DD'));

INSERT INTO employees (emp_id, emp_name, department, salary, join_date) VALUES
(6, 'Frank', 'Sales', 5300, TO_DATE('2022-01-30', 'YYYY-MM-DD'));

INSERT INTO employees (emp_id, emp_name, department, salary, join_date) VALUES
(7, 'Grace', 'Sales', 5500, TO_DATE('2023-07-05', 'YYYY-MM-DD'));

INSERT INTO employees (emp_id, emp_name, department, salary, join_date) VALUES
(8, 'Hannah', 'HR', 4000, TO_DATE('2022-01-01', 'YYYY-MM-DD'));

INSERT INTO employees (emp_id, emp_name, department, salary, join_date) VALUES
(9, 'Ian', 'IT', 6800, TO_DATE('2023-02-18', 'YYYY-MM-DD'));

INSERT INTO employees (emp_id, emp_name, department, salary, join_date) VALUES
(10, 'Jack', 'Marketing', 6000, TO_DATE('2021-03-11', 'YYYY-MM-DD'));
INSERT INTO employees (emp_id, emp_name, department, salary, join_date) VALUES
(11, 'Kyla', 'Marketing', 5900, TO_DATE('2020-06-25', 'YYYY-MM-DD'));
COMMIT;

SELECT
    emp_name,
    department,
    salary,
    LAG(salary) OVER (PARTITION BY department ORDER BY salary) AS previous_salary,
    CASE 
        WHEN salary > LAG(salary) OVER (PARTITION BY department ORDER BY salary) THEN 'HIGHER'
        WHEN salary < LAG(salary) OVER (PARTITION BY department ORDER BY salary) THEN 'LOWER'
        WHEN salary = LAG(salary) OVER (PARTITION BY department ORDER BY salary) THEN 'EQUAL'
        ELSE 'N/A'
    END AS compare_with_previous
FROM employees;
SELECT
    emp_name,
    department,
    salary,
    RANK() OVER (PARTITION BY department ORDER BY salary DESC) AS rank,
    DENSE_RANK() OVER (PARTITION BY department ORDER BY salary DESC) AS dense_rank
FROM employees;
SELECT *
FROM (
    SELECT
        emp_id,
        emp_name,
        department,
        salary,
        RANK() OVER (PARTITION BY department ORDER BY salary DESC) AS rnk
    FROM employees
) ranked
WHERE rnk <= 3;
SELECT *
FROM (
    SELECT
        emp_id,
        emp_name,
        department,
        join_date,
        ROW_NUMBER() OVER (PARTITION BY department ORDER BY join_date ASC) AS row_num
    FROM employees
) joined
WHERE row_num <= 2;
SELECT
    emp_name,
    department,
    salary,
    MAX(salary) OVER (PARTITION BY department) AS max_in_department,
    MAX(salary) OVER () AS max_overall
FROM employees;




