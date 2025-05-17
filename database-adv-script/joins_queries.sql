-- 1. INNER JOIN: all bookings and their respective users
SELECT bookings.id AS booking_id, users.id AS user_id, users.name, bookings.property_id, bookings.start_date
FROM bookings
INNER JOIN users ON bookings.user_id = users.id
ORDER BY bookings.id;

-- 2. LEFT JOIN: all properties and their reviews (even if no reviews)
SELECT properties.id AS property_id, properties.name, reviews.id AS review_id, reviews.rating
FROM properties
LEFT JOIN reviews ON properties.id = reviews.property_id
ORDER BY properties.id;

-- 3. FULL OUTER JOIN: all users and all bookings (even if not linked)
SELECT users.id AS user_id, users.name, bookings.id AS booking_id, bookings.start_date
FROM users
FULL OUTER JOIN bookings ON users.id = bookings.user_id
ORDER BY users.id;
