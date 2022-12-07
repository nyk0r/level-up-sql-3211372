-- Find the reservation information for a customer whose
-- name we aren't quite sure how to spell.

-- Variations of the name include:
-- Stevensen, Stephensen, Stevenson, Stephenson, Stuyvesant

-- There are four people in the party. Today is June 14th.


SELECT c.FirstName, c.LastName, r.Date
FROM 
  Reservations r
  INNER JOIN Customers c
    ON R.CustomerID = c.CustomerID
  WHERE
    c.LastName LIKE 'St%'
    AND strftime('%m', r.Date) = '06' AND strftime('%d', r.Date) = '14'
    AND r.PartySize = 4;