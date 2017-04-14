-- Write a SQL query to get the second highest salary from the Employee table.

SELECT MAX(Salary) AS SecondHighestSalary
  FROM Employee
 WHERE Salary <
      (SELECT MAX(Salary)
         FROM Employee)
