-- Dataset overview
SELECT COUNT(*) AS total_trips
FROM `bigquery-public-data.chicago_taxi_trips.taxi_trips`;

-- Date range
SELECT
  MIN(trip_start_timestamp) AS min_date,
  MAX(trip_start_timestamp) AS max_date
FROM `bigquery-public-data.chicago_taxi_trips.taxi_trips`;

