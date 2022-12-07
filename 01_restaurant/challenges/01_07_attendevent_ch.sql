-- Register a customer for our Anniversary event.

-- The customer 'atapley2j@kinetecoinc.com' will be in
-- attendance, and will bring 3 friends.

INSERT INTO 
  AnnyversaryAttendees(CustomerID, PartySize)
SELECT CustomerID, 3+1
  FROM Customers
  WHERE Email = 'atapley2j@kinetecoinc.com';
