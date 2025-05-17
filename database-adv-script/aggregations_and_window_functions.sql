-- Total bookings per user
SELECT user_id, COUNT(*) AS total_bookings
FROM bookings
GROUP BY user_id;

-- Rank properties based on total bookings
SELECT property_id, COUNT(*) AS total_bookings,
       RANK() OVER (ORDER BY COUNT(*) DESC) AS booking_rank
FROM bookings
GROUP BY property_id;

# Aggregations and Window Functions

This file contains:
- A query that counts total bookings made by each user.
- A query that ranks properties based on the number of bookings using a window function.

