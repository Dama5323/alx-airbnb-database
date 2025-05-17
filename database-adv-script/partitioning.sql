-- Drop the table if it exists
DROP TABLE IF EXISTS bookings_partitioned;

-- Create a new partitioned Booking table based on start_date (monthly)
CREATE TABLE bookings_partitioned (
    id SERIAL PRIMARY KEY,
    user_id INT,
    property_id INT,
    start_date DATE NOT NULL,
    end_date DATE,
    status VARCHAR(50)
) PARTITION BY RANGE (start_date);

-- Create partitions for each month
CREATE TABLE bookings_jan PARTITION OF bookings_partitioned
    FOR VALUES FROM ('2025-01-01') TO ('2025-02-01');

CREATE TABLE bookings_feb PARTITION OF bookings_partitioned
    FOR VALUES FROM ('2025-02-01') TO ('2025-03-01');

-- Add more partitions as needed
-- Test query: Fetch bookings in January
EXPLAIN ANALYZE
SELECT * FROM bookings_partitioned
WHERE start_date BETWEEN '2025-01-01' AND '2025-01-31';

