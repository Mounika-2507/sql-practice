----Select employees table
SELECT * FROM employees;

---Employees with high salary
SELECT name
FROM Employees
WHERE Salary > 50000;

---Sort employees by salary
SELECT * 
FROM Employees
ORDER BY Salary DESC;

--- get job details of both data analyst and business analyst positions
-- for data analyst i want jobs only >100k
-- for business analyst i want jobs >70k also include located in either boston, ma or anywhere
SELECT *, FROM job_postings
WHERE job_location IN ('Boston','MA','Anywhere') AND ((job ='Data Analyst' AND salary > 100000) OR (job='Business Analyst' AND salary > 70000));




