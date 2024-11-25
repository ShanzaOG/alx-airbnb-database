SELECT b.*, u.*
FROM Bookings b
INNER JOIN Users u ON b.user_id = u.id;

SELECT p.*, r.*
FROM Properties p
LEFT JOIN Reviews r ON p.id = r.property_id;

SELECT u.*, b.*
FROM Users u
FULL OUTER JOIN Bookings b ON u.id = b.user_id;
