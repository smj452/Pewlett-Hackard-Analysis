# Pewlett Hackard - Employee Retirement Analysis
## Overview of the Analysis
In this analysis, my task is to help Bobby, an HR analyst from Pewlett Hackard (PH) analyze employment data with the purpose of solving the complexities of retirement at Pewlett Hackard. Bobby’s manager has given two tasks:

-	Determine the number of retiring employees per title
-	Identify employees who are eligible to participate in a mentorship program

Using Postgres SQL, I extracted data from the 6 given CSV files and created new tables from the given data. The first step in my analysis is to map the relationships between tables (including primary keys and foreign keys) in the database using Quick Database Diagrams.

![ EmployeeDB.png]( https://github.com/smj452/Pewlett-Hackard-Analysis/blob/main/Resources/EmployeeDB.png)

## Results

**Retiring Titles**

![ Retiring_titles.png]( https://github.com/smj452/Pewlett-Hackard-Analysis/blob/main/Resources/Retiring_titles.png)

**From the table above you can see that**

-	Highest number of employees retiring are senior engineers with 29414 total retirements.
-	Senior Staff title has the second highest number of retirements.
-	Least retirement is for employee titled Manager with only 2 people retiring.


**Mentorship Eligibility**

![ Mentorship_eligibility.png]( https://github.com/smj452/Pewlett-Hackard-Analysis/blob/main/Resources/Mentorship_eligibility.png)

**From the table above you can see that**
-	Out of the 33,118 total employees, 1,549 number of employees who were born in 1965 are eligible for the mentorship program which is very less.

## Summary

### How many roles will need to be filled as the "silver tsunami" begins to make an impact?
90,398 roles will need to be filled as "silver tsunami" begins to make an impact(See the query & output below).
``` 
SELECT COUNT(title) count 
INTO retiring_count
FROM unique_titles
ORDER BY count DESC; 
```
**Output**

![ retiring_count.png]( https://github.com/smj452/Pewlett-Hackard-Analysis/blob/main/Resources/retiring_count.png)

### Are there enough qualified, retirement-ready employees in the departments to mentor the next generation of Pewlett Hackard employees?

There seems to be enough people to mentor in most of the departments. The Development and Production departments will need to start building a mentorship program since they have the highest number of retirees and also have only 2 managers retiring.

### Two additional queries or tables that may provide more insight into the upcoming "silver tsunami."

-	Retiring employee’s information with the salary range
This would help in planning budget for refilling positions of those retired and also plan on the retirement benefits.
-	Include retirement type information whether Voluntary, Early or Deferred
This would help the department heads and the HR department start planning for employee changes in the company.










