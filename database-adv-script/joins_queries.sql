-- 1. INNER JOIN: Bookings with the Users who made them
SELECT
    Booking.booking_id,
    Booking.start_date,
    Booking.end_date,
    Booking.total_price,
    Booking.status,
    User.user_id,
    User.first_name,
    User.last_name,
    User.email
FROM
    Booking
INNER JOIN
    User ON Booking.user_id = User.user_id;


-- 2. LEFT JOIN: Properties and their Reviews (including properties with no reviews)
SELECT
    Property.property_id,
    Property.name,
    Property.description,
    Property.location,
    Review.review_id,
    Review.rating,
    Review.comment
FROM
    Property
LEFT JOIN
    Review ON Property.property_id = Review.property_id;


-- 3. FULL OUTER JOIN: All users and all bookings (even unmatched ones)
SELECT
    User.user_id,
    User.first_name,
    User.last_name,
    Booking.booking_id,
    Booking.start_date,
    Booking.end_date
FROM
    User
LEFT JOIN
    Booking ON User.user_id = Booking.user_id

UNION

SELECT
    User.user_id,
    User.first_name,
    User.last_name,
    Booking.booking_id,
    Booking.start_date,
    Booking.end_date
FROM
    Booking
RIGHT JOIN
    User ON User.user_id = Booking.user_id;
