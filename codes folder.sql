
CREATE TABLE employees (
    emp_id INT PRIMARY KEY,
    emp_name VARCHAR(100),
    department VARCHAR(50),
    salary INT,
    join_date DATE
);

INSERT INTO employees (emp_id, emp_name, department, salary, join_date) VALUES
(1, 'Alice', 'HR', 5000, '2021-05-10'),
(2, 'Bob', 'HR', 4500, '2022-06-15'),
(3, 'Carol', 'IT', 7000, '2020-03-20'),
(4, 'Dave', 'IT', 7500, '2019-11-01'),
(5, 'Eve', 'Sales', 5500, '2021-02-18'),
(6, 'Frank', 'Sales', 5300, '2022-01-30'),
(7, 'Grace', 'Sales', 5500, '2023-07-05'),
-- New employees
(8, 'Hannah', 'HR', 4000, '2022-01-01'),
(9, 'Ian', 'IT', 6800, '2023-02-18'),
(10, 'Jack', 'Marketing', 6000, '2021-03-11'),
(11, 'Kyla', 'Marketing', 5900, '2020-06-25');

//1. Compare with Previous/Next (LAG, LEAD)
SELECT
    emp_name,
    department,
    salary,
    LAG(salary) OVER (PARTITION BY department ORDER BY salary) AS previous_salary,
    LEAD(salary) OVER (PARTITION BY department ORDER BY salary) AS next_salary
FROM employees;

//2.  RANK vs DENSE_RANK
SELECT
    emp_name,
    department,
    salary,
    RANK() OVER (PARTITION BY department ORDER BY salary DESC) AS rank,
    DENSE_RANK() OVER (PARTITION BY department ORDER BY salary DESC) AS dense_rank
FROM employees;

//3. Top 3 Employees per Department (with ties)
SELECT *
FROM (
    SELECT
        emp_id,
        emp_name,
        department,
        salary,
        RANK() OVER (PARTITION BY department ORDER BY salary DESC) AS rnk
    FROM employees
) AS ranked
WHERE rnk <= 3;

//4. First 2 Joins per Department (Earliest Records)
SELECT *
FROM (
    SELECT
        emp_id,
        emp_name,
        department,
        join_date,
        ROW_NUMBER() OVER (PARTITION BY department ORDER BY join_date ASC) AS row_num
    FROM employees
) AS joined
WHERE row_num <= 2;

//5. Aggregation with Window Functions
SELECT
    emp_name,
    department,
    salary,
    MAX(salary) OVER (PARTITION BY department) AS max_in_department,
    MAX(salary) OVER () AS max_overall
FROM employees;

