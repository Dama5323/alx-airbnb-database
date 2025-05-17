# Index Performance Report

## Indexes created:
- idx_booking_user_id on Booking(user_id)
- idx_booking_property_id on Booking(property_id)
- idx_user_email on User(email)

## Query performance before indexes:
- Queries scanning Booking table with WHERE user_id took full sequential scans.

## Query performance after indexes:
- EXPLAIN shows index scans on Booking(user_id) and Booking(property_id), improving query speed significantly.

