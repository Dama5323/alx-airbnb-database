-- Original Query (before optimization)
SELECT 
    b.id AS booking_id,
    u.name AS user_name,
    u.email,
    p.name AS property_name,
    p.location,
    pay.amount,
    pay.status
FROM 
    bookings b
JOIN 
    users u ON b.user_id = u.id
JOIN 
    properties p ON b.property_id = p.id
JOIN 
    payments pay ON b.id = pay.booking_id;

-- Optimized Query (after indexing or reducing columns)
SELECT 
    b.id,
    u.name,
    p.name,
    pay.amount
FROM 
    bookings b
JOIN users u ON b.user_id = u.id
JOIN properties p ON b.property_id = p.id
JOIN payments pay ON b.id = pay.booking_id;
