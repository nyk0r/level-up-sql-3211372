-- Prepare a report of books due to be returned
-- to the library on July 13, 2022.
-- Provide the due date, the book title, and
-- the borrower's first name and email address.

SELECT
  b.Title, p.FirstName, p.Email, l.DueDate
FROM 
  Loans l
  INNER JOIN Patrons p
    ON l.PatronID = p.PatronID
  INNER JOIN Books b
    ON l.BookID = b.BookID
WHERE
  DueDate <= '2022-07-13'
  AND ReturnedDate IS NULL;
