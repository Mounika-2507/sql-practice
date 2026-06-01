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
