-- Determine how many copies of the book 'Dracula'
-- are available for library patrons to borrow.

SELECT count(*) 
FROM Books b
  LEFT JOIN Loans l
    ON b.BookID = l.BookID
    AND l.ReturnedDate IS NULL
WHERE 
  b.Title = 'Dracula'
  AND l.LoanID IS NULL;
