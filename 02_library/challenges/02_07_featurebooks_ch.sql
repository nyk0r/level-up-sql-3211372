-- Create a list of books to feature in an exhibit.

-- Make a pick list of books published from 1890-1899 
-- which are not currently checked out.

SELECT b.Title, b.Author, b.Published, b.Barcode
FROM 
  Books b
  LEFT JOIN Loans l
    ON b.BookID = l.BookID
    AND l.ReturnedDate IS NULL
WHERE
  l.LoanID IS NULL
  AND b.Published BETWEEN 1890 AND 1899
ORDER BY b.Title, b.Author, b.Published;