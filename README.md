# SQL_Window_Functions
GROUP ASSIGNMENT ON SQL WINDOW FUNCTIONS

NAMES:
- Ingabire Queen Kellen 26655
  
- Muhimpundu Divine 26850

 **DATASET WE  USED: EMPLOYEES**
 
We created a dataset named employees to simulate a real-world scenario involving employees across various departments.

Each record contains:

**emp_id:** Unique identifier for each employee

**emp_name:** Employee name

**department:** Department where the employee works

**salary:** Monthly salary of the employee

**join_date:** The date the employee joined the company

👉 **PURPOSE:** This dataset helps demonstrate the use of SQL Window Functions.
 
**QUERIES AND EXPLANATION**

The table below shows that the employees table was created successfully and data was inserted correctly:

![tableone pic](https://github.com/user-attachments/assets/1485820d-f5f7-43c6-9ceb-605abe31c80e)

![pic of inserted data pic 3](https://github.com/user-attachments/assets/bf43591c-0a76-457f-b9a4-52a7573b361c)


1. **LAG( ) and LEAD( )**
   
Used to compare an employee’s salary with the previous and next employee in the same department.

**•	LAG ( ) :** Shows the salary of the employee before the current one in the department.

**•	LEAD ( ) :** Shows the salary of the employee after the current one in the department

**SQL code and output using LAG() and LEAD() window functions to compare employee salaries within each department.**

![LAG AND LEAD OG PIC6](https://github.com/user-attachments/assets/4ab8f75d-0272-457c-8bf5-f2744c8a7553)

This logic uses partitioning by department and sorts by salary to:

Compare the current salary to the previous one.

Show if it's HIGHER, LOWER, or EQUAL.

**🎯 EXPLANATION ON OUTPUT**

**table  shows each employee’s:**

salary

previous_salary

next_salary

comparison result (compared to previous)

  **2.RANK( )AND DENSE_RANK( )**
  
  Ranks employees by Salary Within their department 
  
  
  **•	RANK( ):** Skips ranks for tied employees (e.g., two people with the same salary are both ranked 1, and the next rank is 3).
  
  **•	DENSE_RANK( ):** Does not skip ranks for tied employees (e.g., two people with the same salary are both ranked 1, and the next rank is 2).
  

  
   **Running Queries And see The Output**
   
   ![rank and dense pic5](https://github.com/user-attachments/assets/218ee13c-a20c-4d1e-a9f4-be6ef5a7a341)

     

**3. Identifying Top 3 Records Per Category**
   
**🔍 SQL Functions Used: RANK(), Subquery**

**Explanation:**

Ranks employees by salary within each department.

Only selects those with a rank of 3 or less (i.e., top 3 salaries).

Ties may lead to more than 3 records if multiple employees have the same salary.

**🎯 EXPECTED OUT COME :**

The result shows the top 3 highest-paid employees per department, even if more than 3 due to salary ties.

**SQL CODES AND OUTPUT**

 ![top 3 pic](https://github.com/user-attachments/assets/fe38ca89-23f7-4201-acd6-d9585e1c2763)

 4. **FIRST 2 JOINS PER DEPARTMENT(Earliest Records)**
    
    **SQL Function Used: ROW_NUMBER()**
    
     **Explanation:**
    
ROW_NUMBER() gives a unique number to each employee based on who joined first in each department.

Filters to only include the first 2 employees to join per department.

**🎯 EXPECTED OUTCOME:**

A list of the earliest joiners (top 2) in each department based on the join date.

**SQL CODES AND OUTPUT**

![top 2 pic](https://github.com/user-attachments/assets/adfb2d73-e297-4f5a-a7a8-9e7e89318eac)


**5. Aggregation with Window Functions**
   
**🔍 SQL Function Used: MAX() OVER (...)** 

**Explanation:**

Calculates the maximum salary per department using PARTITION BY.

Calculates the overall highest salary using MAX() without partitioning.

**🎯 EXPECTED OUTCOME:**

**Each row will show:**

.The employee’s salary

.The highest salary in their department

.The highest salary in the entire company
   
   **SQL code and output**
   
   ![aggregetion function](https://github.com/user-attachments/assets/36fa6d42-61bd-4a19-bbcb-bb96a154a6c7)

   

  **REAL LIFE APPLICATION  FOR EACH WINDOW FUNCTIONS**
  
  **. LAG( )**
  
→ Used in HR to compare current salary to previous salary within a department.

→ In sales, to track previous month's performance.

**. LEAD( )**

– Shows the next value, useful for forecasting or checking what's coming next (e.g., next salary in order).

**.RANK( )**

– Ranks values with gaps for ties, useful when giving positions in competitions or rewards.

**. DENSE_RANK( )**

– Ranks values without gaps, useful for grouped awards or fair ranking with ties.

**. ROW_NUMBER( )**

– Gives a unique number to each row, useful for getting first, second, etc.
-records per group.

**. MAX( ) OVER( )**

– Calculates the maximum value per group and overall without collapsing rows
— great for comparing performance within vs across categories.

**As conluding,**

This assignment demonstrates a strong understanding of advanced SQL techniques, including:

Comparing data using window functions

Ranking data correctly

Filtering top records with ties

Finding earliest entries

Using PARTITION BY for advanced aggregations






  
   

   
     
 
   
   

   

  
  
 



       
