SELECT user_id, COUNT(*) AS total_bookings
FROM Bookings
GROUP BY user_id;


SELECT p.id, p.name, COUNT(b.id) AS total_bookings,
       RANK() OVER (ORDER BY COUNT(b.id) DESC) AS rank
FROM Properties p
LEFT JOIN Bookings b ON p.id = b.property_id
GROUP BY p.id, p.name;
