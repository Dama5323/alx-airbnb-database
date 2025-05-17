-- Create index on Booking.user_id
CREATE INDEX idx_booking_user_id ON Booking(user_id);

-- Create index on Booking.property_id
CREATE INDEX idx_booking_property_id ON Booking(property_id);

-- Create index on User.email
CREATE INDEX idx_user_email ON User(email);

