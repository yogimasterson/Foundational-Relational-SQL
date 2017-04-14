-- Given the Employee table, write a SQL query that finds out employees who earn more than their managers. For the above table, Joe is the only employee who earns more than his manager.

SELECT e1.Name AS Employee
  FROM Employee e1
       JOIN Employee e2
       ON e1.ManagerId = e2.Id
  WHERE e1.Salary > e2.Salary
