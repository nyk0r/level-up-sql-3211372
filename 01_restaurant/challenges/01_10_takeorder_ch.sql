-- Enter a customer's delivery order into our database, 
-- and provide the total cost of the items ordered.

-- Use this order information:
-- Customer: Loretta Hundey, at 6939 Elka Place
-- Items: 1 House Salad, 1 Mini Cheeseburgers, and
-- 1 Tropical Blue Smoothie
-- Delivery date and time: September 20, 2022 @ 2PM (14:00)
-- There are no taxes or other fees.

INSERT INTO Orders(CustomerID, OrderDate)
VALUES(
  (SELECT CustomerID FROM Customers WHERE FirstName = 'Loretta' AND LastName = 'Hundey'),
  '2022-09-20 14:00:00'
);

INSERT INTO OrdersDishes(DishID, OrderID)
SELECT *
FROM
  (
    SELECT DishID
    FROM Dishes
    WHERE Name in ('House Salad', 'Mini Cheeseburgers', 'Tropical Blue Smoothie')
  )
  CROSS JOIN
  (
    SELECT OrderID
    FROM Orders
    WHERE 
      OrderDate = '2022-09-20 14:00:00'
      AND CustomerID = (SELECT CustomerID FROM Customers WHERE FirstName = 'Loretta' AND LastName = 'Hundey')
  );

SELECT sum(price)
FROM 
  OrdersDishes od
  INNER JOIN Dishes d
    ON od.DishID = d.DishID
WHERE
  od.OrderID = 
    (
      SELECT OrderID
      FROM Orders
      WHERE 
        OrderDate = '2022-09-20 14:00:00'
        AND CustomerID = (SELECT CustomerID FROM Customers WHERE FirstName = 'Loretta' AND LastName = 'Hundey')
    );
