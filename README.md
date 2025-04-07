# SQL_Window_Functions
GROUP ASSIGNMENT ON SQL WINDOW FUNCTIONS

NAMES: - Ingabire Queen Kellen 26655 & Muhimpundu Divine 26850

 **TOGETHER WE CHOSE EMPLOYEES DATA SET**
 
**DESCRIPTION**

our Work demonstrates the use of advanced SQL window functions on the employees dataset, which includes employee information like ID, name, department, salary, and join date.

**TOOL WE USED: (MySQL CLI )**

 **QUERIES AND EXPLANATION**
1. LAG and LEAD
Used to compare an employee’s salary with the previous and next employee in the same department.

•	LAG: Shows the salary of the employee before the current one in the department.

•	LEAD: Shows the salary of the employee after the current one in the department

**SQL code and output using LAG() and LEAD() window functions to compare employee salaries within each department.
LAG() shows the previous employee’s salary, and LEAD() shows the next employee’s salary**

here is the codes we used 

![creating table and inserting pic 1](https://github.com/user-attachments/assets/b4d60336-3973-4219-83a0-138590626513)

 OUTPUT AFTER RUNNING CODES 

 ![output using lag lead output pic2](https://github.com/user-attachments/assets/79c2c538-bdb7-4d9e-949e-f690bf836f03)
 
  2.RANK AND DENSE_RANK
  
  Ranks employees by Salary Within their department 
  
  •	RANK(): Skips ranks for tied employees (e.g., two people with the same salary are both ranked 1, and the next rank is 3).
  
  •	DENSE_RANK(): Does not skip ranks for tied employees (e.g., two people with the same salary are both ranked 1, and the next rank is 2).
  
   Running Queries And see The Output
   
   ![rank and dense pic 3](https://github.com/user-attachments/assets/39f346d0-b0c4-4c68-a095-510a686ad2a1)..

  
  
 



       
