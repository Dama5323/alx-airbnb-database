-- Create index on Booking.user_id
CREATE INDEX idx_booking_user_id ON Booking(user_id);

-- Create index on Booking.property_id
CREATE INDEX idx_booking_property_id ON Booking(property_id);

-- Create index on User.email
CREATE INDEX idx_user_email ON User(email);

-- Measure performance using EXPLAIN ANALYZE
EXPLAIN ANALYZE SELECT * FROM Booking WHERE user_id = 1;

EXPLAIN ANALYZE SELECT * FROM Booking WHERE property_id = 1;

