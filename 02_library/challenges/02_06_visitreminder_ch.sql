-- Prepare a report of the library patrons
-- who have checked out the fewest books.

SELECT 
 p.FirstName, p.LastName, p.Email, count(*) AS Loans
FROM 
  Patrons p
  LEFT OUTER JOIN Loans l
    ON p.PatronID = l.PatronID
GROUP BY
  p.PatronID
ORDER BY Loans
LIMIT 15;
