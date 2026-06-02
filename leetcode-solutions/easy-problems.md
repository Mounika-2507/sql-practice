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
