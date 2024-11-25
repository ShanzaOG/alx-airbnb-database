CREATE INDEX idx_user_id ON Bookings(user_id);
CREATE INDEX idx_start_date ON Bookings(start_date);
CREATE INDEX idx_property_id ON Properties(id);

EXPLAIN ANALYZE SELECT * FROM Bookings WHERE user_id = 1;
