# Performance Monitoring Report

## 1. Initial Query

We analyzed the following query which joins several tables and filters data:

```sql
SELECT 
    b.id AS booking_id,
    u.name AS user_name,
    p.name AS property_name,
    pay.amount
FROM 
    bookings b
JOIN 
    users u ON b.user_id = u.id
JOIN 
    properties p ON b.property_id = p.id
JOIN 
    payments pay ON b.id = pay.booking_id
WHERE 
    pay.status = 'completed' AND p.location = 'Nairobi';
