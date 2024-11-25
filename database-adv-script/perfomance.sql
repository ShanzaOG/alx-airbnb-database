SELECT b.*, u.*, p.*, pay.*
FROM Bookings b
JOIN Users u ON b.user_id = u.id
JOIN Properties p ON b.property_id = p.id
LEFT JOIN Payments pay ON b.id = pay.booking_id;

SELECT * FROM Bookings WHERE user_id = 123;