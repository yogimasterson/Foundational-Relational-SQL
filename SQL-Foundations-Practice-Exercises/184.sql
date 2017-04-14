-- Write a SQL query to find employees who have the highest salary in each of the departments. For the above tables, Max has the highest salary in the IT department and Henry has the highest salary in the Sales department.

SELECT d.Name AS Department, e.Name AS Employee, e.Salary
  FROM Department d, Employee e
 WHERE e.DepartmentId = d.Id
   AND e.Salary = (
                  SELECT MAX(Salary)
                  FROM Employee e2
                  WHERE e2.DepartmentId=d.Id
                  )
