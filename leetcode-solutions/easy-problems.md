# LeetCode Easy SQL Problems
## This file contains my solutions and learning notes for beginner SQL problems from leetcode

Problem 1 -- Combine Two tables

Problem link :
https://leetcode.com/problems/combine-two-tables

CONCEPTS USED :
SELECT
LEFTJOIN

   SELECT firstname,lastname,city,state FROM Person LEFTJOIN Address
    ON Person.person_Id = Address.person_Id;
Explanation:
we used leftjoin to combine two tables as we cannot perform outer join in mysql instead we can use left or right join 
Difficulty :
Easy 

Problem 2 -- Second Highest Salary

problem link : 
https://leetcode.com/problems/second-highest-salary

CONCEPTS USED :
SELECT
ORDER BY
LIMIT

SELECT ( SELECT distinct salary FROM employee
      ORDER BY Salary DESC
      LIMIT 1 OFFSET 1 )
      AS SecondHighestSalary ;
Explanation: 
I used order by salary desc to get highest salaries at the top , then used 
LIMIT 1 to get one row 
OFFSET 1 to skip first row

Difficulty : Medium 

Problem 3 --- Nth Highest Salary

problem link :
https://leetcode.com/problems/nth-highest-salary

CONCEPTS USED :
SELECT
DISTINCT
ORDER BY
LIMIT 
OFFSET

CREATE FUNCTION getNthHighestSalary(N INT) RETURNS INT
BEGIN
SET N=N-1;
  RETURN (
      # Write your MySQL query statement below.
        SELECT  DISTINCT salary FROM Employee
        ORDER BY salary DESC LIMIT 1 OFFSET N
  );
END

 Explanation :
 I used distinct for no duplicates, order by salary desc for highest salaries and  limit 1 for for getting one row and offset n where it skips one row 
 as according to n value it skips that many values i had  SET N = N-1 

 Difficulty : Medium

 Problem 4 : --Rank Scores

problem link :
https://leetcode.com/problems/rank-scores

CONCEPTS USED :
SELECT
DENSE_RANK()
ORDER BY
AS

SELECT score, DENSE_RANK() OVER (ORDER BY score DESC ) AS 'rank' FROM Scores;

Explanation:
Here after many tries i found that i made a small mistake AS 'rank' which confused me , 
we used denserank because after tie no skipping the value 

Difficulty : Medium

Problem 181 : --Employees salary greater than manager salary

problem link :
https://leetcode.com/problems/employees-earning-more-than-their-managers

CONCEPTS USED :
SELECT
INNER JOIN
WHERE

SELECT e2.name as Employee
FROM employee e1
INNER JOIN employee e2 ON e1.id = e2.managerID
WHERE
e1.salary < e2.salary;

Explanation:
we used inner join because they both id's are in same tables 

Difficulty : Easy

Problem 182 : Duplicate Emails

problem link :
https://leetcode.com/problems/duplicate-emails

CONCEPTS USED :
SELECT
GROUP BY 
HAVING 
COUNT 

SELECT email FROM Person GROUP BY email HAVING COUNT(email)>1;

Explanation: we used,
GROUP BY email - creates group for unique email id's
COUNT(email) - counts how many times each email appears
HAVING COUNT(email) > 1 - filters the groups and keeps only those with duplicates

Difficulty : Easy

Problem 183 : Customers Who never Order

problem link :
https://leetcode.com/problems/duplicate-emails

CONCEPTS USED :
SELECT
LEFT JOIN
WHERE 
IS NULL

SELECT C.name AS Customers
FROM Customers AS C
LEFT JOIN Orders AS O
ON C.id = O.customerId
WHERE O.id IS NULL;

Explanation: we used,
LEFT JOIN - keeps all customers and unmatched orders as null
WHERE O.id IS NULL - finds customers with no orders

Difficulty : Easy


