-- Create reports that will be used to make three menus.

-- Create a report with all the items sorted by price (lowest to highest).
-- Create a report showing appetizers and beverages.
-- Create a report with all items except beverages.

SELECT
  Name, Type, Description, Price
FROM
  Dishes
ORDER BY
  Price ASC;

SELECT 
  Name, Type, Description, Price
FROM
  Dishes
WHERE
  Type in ('Appetizer', 'Beverage')
ORDER BY
  Price ASC;

SELECT 
  Name, Type, Description, Price
FROM
  Dishes
WHERE
  Type <> 'Beverage'
ORDER BY
  Price ASC;
