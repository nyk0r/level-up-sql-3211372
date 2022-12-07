-- Create two reports about book statistics.

-- Report 1: Show how many titles were published 
-- in each year.

-- Report 2: Show the five books that have been
-- checked out the most.

SELECT Published, COUNT(DISTINCT Title) AS Count
FROM Books
GROUP BY Published
ORDER BY Count DESC;

SELECT b.Title, COUNT(*) as Count
FROM 
  Books b
  INNER JOIN Loans l
    ON b.BookID = l.BookID
GROUP BY b.Title
ORDER BY Count DESC
LIMIT 15;
