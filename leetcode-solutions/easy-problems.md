# LeetCode Easy SQL Problems

1. Combine Two tables:
   SELECT firstname,lastname,city,state FROM Person LEFTJOIN Address
    ON Person.person_Id = Address.person_Id;

--- we used leftjoin to combine two tables as we cannot perform outer join in mysql instead we can use left or right join 
