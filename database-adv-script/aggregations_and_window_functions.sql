-- Query 1: Count total bookings per user
SELECT 
    user_id,
    COUNT(*) AS total_bookings
FROM 
    bookings
GROUP BY 
    user_id;

-- Query 2: Rank properties by total bookings using RANK()
SELECT 
    property_id,
    COUNT(*) AS total_bookings,
    RANK() OVER (ORDER BY COUNT(*) DESC) AS booking_rank
FROM 
    bookings
GROUP BY 
    property_id;

-- Query 3: Use ROW_NUMBER to assign a unique rank to each property
SELECT 
    property_id,
    COUNT(*) AS total_bookings,
    ROW_NUMBER() OVER (ORDER BY COUNT(*) DESC) AS row_num
FROM 
    bookings
GROUP BY 
    property_id;


