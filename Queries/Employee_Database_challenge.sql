-- 1.Employee table info
SELECT 	emp_no,	
		first_name,
		last_name
FROM employees;

-- 2. Title table info
SELECT 	title, 
		from_date, 
		to_date
FROM titles;

-- 3.Create the retirement titles table
SELECT 	e.emp_no,	
		e.first_name,
		e.last_name,
		ti.title,
		ti.from_date,
		ti.to_date
INTO retirement_titles
FROM employees e
LEFT JOIN titles ti
ON e.emp_no=ti.emp_no
WHERE e.birth_date BETWEEN '1952-01-01' and '1955-12-31'
ORDER BY emp_no;

SELECT * FROM retirement_titles;

-- Use Distinct with Orderby to remove duplicate rows
-- Create the unique titles table 
SELECT DISTINCT ON 	(emp_no) emp_no,
	first_name,
	last_name,
	title
INTO unique_titles
FROM retirement_titles
ORDER BY emp_no, to_date DESC;

SELECT * FROM unique_titles;

-- Create the retiring titles table
SELECT COUNT(title) AS total, 
	title
INTO retiring_titles
FROM unique_titles
GROUP BY title
ORDER BY total DESC;

SELECT * FROM retiring_titles;
