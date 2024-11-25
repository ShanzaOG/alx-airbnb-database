SELECT p.*
FROM Properties p
WHERE (SELECT AVG(r.rating)
       FROM Reviews r
       WHERE r.property_id = p.id) > 4.0;


SELECT u.*
FROM Users u
WHERE (SELECT COUNT(*)
       FROM Bookings b
       WHERE b.user_id = u.id) > 3;

