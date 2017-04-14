-- Suppose that a website contains two tables, the Customers table and the Orders table. Write a SQL query to find all customers who never order anything.

SELECT Name AS Customers
  FROM Customers c
       LEFT JOIN Orders o
       ON o.CustomerId = c.Id
  WHERE o.Id IS Null
