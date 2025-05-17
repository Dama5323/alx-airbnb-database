# Optimization Report

## Original Query
The original query joined `bookings`, `users`, `properties`, and `payments` to retrieve full booking details.

## Performance Analysis
Used `EXPLAIN` to analyze the query. Found that:
- Full table scans were happening on `bookings` and `payments`.
- Joins were slowing performance due to lack of indexes.

## Optimization Steps
- Created indexes on `bookings.user_id`, `bookings.property_id`, and `payments.booking_id`.
- Reduced SELECTed columns to only necessary ones.
- Confirmed with `EXPLAIN` that index scans are now used.

## Result
Query performance improved significantly after indexing and limiting returned data.

