# Database Normalization for Airbnb Clone

## 1NF
- All tables have atomic values (e.g., a property has one owner, not multiple).
- Each row is uniquely identified by a primary key.

## 2NF
- Separated repeated data into new tables.
  - Example: Instead of repeating user details in the Booking table, we use a foreign key to link the User table.
- Each non-key column fully depends on the whole primary key.

## 3NF
- Removed transitive dependencies.
  - Example: If a user’s city was stored in the Booking table, we moved it to the User table.
- All non-key attributes now only depend on the primary key, and not on other non-key attributes.

## Final Structure:
- **User**: id, name, email, etc.
- **Property**: id, owner_id (FK), location, description, etc.
- **Booking**: id, user_id (FK), property_id (FK), date_from, date_to, etc.
- **Payment**: id, booking_id (FK), amount, method

This structure ensures data integrity, minimizes redundancy, and follows 3NF.
