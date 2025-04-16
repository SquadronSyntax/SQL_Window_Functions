# SQL_Window_Functions
GROUP ASSIGNMENT ON SQL WINDOW FUNCTIONS

NAMES:
- Ingabire Queen Kellen 26655
  
- Muhimpundu Divine 26850

 **TOGETHER WE CHOSE EMPLOYEES DATA SET**
 
**DESCRIPTION**

our Work demonstrates the use of advanced SQL window functions on the employees dataset, which includes employee information like ID, name, department, salary, and join date.

*

 
  For this SQL assignment, we selected a dataset in the Employees domain. 
  The dataset contains employee details such as their ID, name, department, salary, and date of joining.
  This structured data allows us to demonstrate various SQL window functions, including LAG(), LEAD(), RANK(), DENSE_RANK(), and aggregations.
  These functions help analyze patterns such as salary comparisons, ranking within departments, and identifying earliest joiners or top earners.
  
**QUERIES AND EXPLANATION**
The table below shows that the employees table was created successfully and data was inserted correctly:

![tableone pic](https://github.com/user-attachments/assets/1485820d-f5f7-43c6-9ceb-605abe31c80e)
![pic of inserted data pic 3](https://github.com/user-attachments/assets/bf43591c-0a76-457f-b9a4-52a7573b361c)


1. **LAG( ) and LEAD( )**
   
Used to compare an employee’s salary with the previous and next employee in the same department.

•	LAG ( ) : Shows the salary of the employee before the current one in the department.

•	LEAD ( ) : Shows the salary of the employee after the current one in the department

**SQL code and output using LAG() and LEAD() window functions to compare employee salaries within each department.
LAG() shows the previous employee’s salary, and LEAD() shows the next employee’s salary**

![LAG AND LEAD OG PIC6](https://github.com/user-attachments/assets/4ab8f75d-0272-457c-8bf5-f2744c8a7553)

This logic uses partitioning by department and sorts by salary to:

Compare the current salary to the previous one.

Show if it's HIGHER, LOWER, or EQUAL.

🎯 Expected Outcome
A table that shows each employee’s:

salary

previous_salary

next_salary

comparison result (compared to previous)




  2.RANK( )AND DENSE_RANK( )
  
  Ranks employees by Salary Within their department 
  
  •	RANK( ): Skips ranks for tied employees (e.g., two people with the same salary are both ranked 1, and the next rank is 3).
  
  •	DENSE_RANK( ): Does not skip ranks for tied employees (e.g., two people with the same salary are both ranked 1, and the next rank is 2).
  
   Running Queries And see The Output
   
   ![rank and dense pic 3](https://github.com/user-attachments/assets/39f346d0-b0c4-4c68-a095-510a686ad2a1)
   
  **EXPLANATION**:
  
RANK( ) → gives ranks with gaps when salaries are tied.

DENSE_RANK( ) → gives ranks without gaps.

ORDER BY salary DESC → highest salaries come first.

PARTITION BY department → ranks employees within each department.  

3. **Top 3 EMPLOYEES PER DEPARTMENT (WITH TIES)**
   
  **RUNNING QUERIES AND SEE OUTPUT**
   ![top 3 pic ](https://github.com/user-attachments/assets/13a87dcc-b9c3-462b-9941-1fad2e7cc488)
   
   **EXPLANATION**:
   
RANK( ) assigns salary ranks per department.

 The outer SELECT filters to top 3 ranked (including ties).
 
 If two employees tie for 2nd place, both are included.
 
 4. **FIRST 2 JOINS PER DEPARTMENT(Earliest Records)**
    
     Running Queries And see The Output
    ![top2 joined according todate pic4](https://github.com/user-attachments/assets/6e925562-7ad5-46ba-b420-070c8e4c8de3)

**EXPLANATION**:

ROW_NUMBER( ) gives each employee a unique position by join date.

PARTITION BY department → restarts count in every department.

ORDER BY join_date ASC → oldest join dates come first.

Filters to show the first 2 joiners per department.

5. **AGGREGATION WITH WINDOW FUNCTION (MAX SALARY)**
   
   SQL code and output showing maximum salaries within each department and overall maximum salary using the MAX() window function
   
   ![aggretion function pic 5](https://github.com/user-attachments/assets/c353a51f-cff0-4484-965c-03e9920ebac5)

 **EXPLANATION**:
 
MAX(salary) OVER (PARTITION BY department)
→ shows highest salary in each department.

MAX(salary) OVER ( ) 
→ shows the company-wide highest salary.

No GROUP BY is used — every row still appears with added aggregate information.

  **REAL LIFE APPLICATION  FOR EACH WINDOW FUNCTIONS**
  
  LAG( )
  
→ Used in HR to compare current salary to previous salary within a department.

→ In sales, to track previous month's performance.

LEAD( )

– Shows the next value, useful for forecasting or checking what's coming next (e.g., next salary in order).

RANK( )

– Ranks values with gaps for ties, useful when giving positions in competitions or rewards.

DENSE_RANK( )

– Ranks values without gaps, useful for grouped awards or fair ranking with ties.

ROW_NUMBER( )

– Gives a unique number to each row, useful for getting first, second, etc., records per group.

MAX( ) OVER( )

– Calculates the maximum value per group and overall without collapsing rows — great for comparing performance within vs across categories.






  
   

   
     
 
   
   

   

  
  
 



       
