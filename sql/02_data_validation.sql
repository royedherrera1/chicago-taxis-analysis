-- NULL profiling for key analytical fields
SELECT
  COUNT(*) AS total_rows,
  COUNT(trip_start_timestamp) AS trip_start_no_null,
  COUNT(trip_end_timestamp) AS trip_end_no_null,
  COUNT(trip_seconds) AS trip_seconds_no_null,
  COUNT(trip_miles) AS trip_miles_no_null,
  COUNT(fare) AS fare_no_null,
  COUNT(tips) AS tips_no_null,
  COUNT(trip_total) AS trip_total_no_null,
  COUNT(payment_type) AS payment_type_no_null,
  COUNT(company) AS company_no_null
FROM `bigquery-public-data.chicago_taxi_trips.taxi_trips`;

-- Validate trip_total against fare components

SELECT
  trip_total,
  fare,
  tips,
  tolls,
  extras,
  COALESCE(fare, 0) 
  + COALESCE(tips, 0) 
  + COALESCE(tolls, 0) 
  + COALESCE(extras, 0) AS total_calculado,
  ABS(
  trip_total- 
  (COALESCE(fare, 0) 
  + COALESCE(tips, 0) 
  + COALESCE(tolls, 0) 
  + COALESCE(extras, 0))) AS diferencia
FROM `bigquery-public-data.chicago_taxi_trips.taxi_trips`
WHERE trip_total IS NOT NULL
  AND trip_miles > 0
LIMIT 1000;
