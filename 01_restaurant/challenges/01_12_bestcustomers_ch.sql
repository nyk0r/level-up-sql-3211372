-- Identify a few customers who have ordered delivery
-- from the restaurant the most often, so we can send
-- them a promotional coupon.

SELECT c.FirstName, c.LastName, c.Email, oc.Count
FROM 
  Customers c
  INNER JOIN (
    SELECT CustomerID, Count(*) as Count
    FROM Orders
    GROUP BY CustomerID
  ) oc
    ON c.CustomerID = oc.CustomerID 
ORDER BY oc.Count DESC;

