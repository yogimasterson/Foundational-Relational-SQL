-- Write a SQL query to find all numbers that appear at least three times consecutively.

SELECT DISTINCT A.Num AS ConsecutiveNums
           FROM Logs A, Logs B, Logs C
          WHERE (A.Id = B.Id + 1)
            AND (A.Id = C.Id + 2)
            AND (A.Num = B.Num)
            AND (B.Num = C.Num);
