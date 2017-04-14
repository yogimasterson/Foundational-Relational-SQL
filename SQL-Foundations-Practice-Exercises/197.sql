-- Given a Weather table, write a SQL query to find all dates' Ids with higher temperature compared to its previous (yesterday's) dates.

SELECT B.Id
  FROM Weather A
       JOIN Weather B
         ON TO_DAYS(A.Date) = TO_DAYS(B.Date) - 1 
  WHERE a.Temperature < b.Temperature;
