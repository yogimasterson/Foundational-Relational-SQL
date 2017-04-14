-- Write a SQL query to delete all duplicate email entries in a table named Person, keeping only unique emails based on its smallest Id.

DELETE p1
  FROM Person p1, Person p2
 WHERE p1.Email = p2.Email
   AND p1.id > p2.id
