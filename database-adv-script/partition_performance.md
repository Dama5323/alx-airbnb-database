# Partition Performance Report

## What was done:
- Partitioned the `bookings` table by `start_date` using RANGE partitioning.
- Created separate partitions for each month (January, February, etc.).

## Query Performance:
- Before partitioning: Full table scan on `bookings` table.
- After partitioning: Query only scans the relevant partition(s) based on the date range.

## Observation:
- `EXPLAIN ANALYZE` shows reduced scan time and improved performance when filtering by `start_date`.
- Partitioning allows better query planning and execution especially on large datasets.

