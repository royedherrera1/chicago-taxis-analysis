SELECT
  trip_total,
  fare,
  tips,
  tolls,
  extras,
  COALESCE(fare, 0) + COALESCE(tips, 0) + COALESCE(tolls, 0) + COALESCE(extras, 0) AS total_calculado,
  ABS(trip_total- (COALESCE(fare, 0) + COALESCE(tips, 0) + COALESCE(tolls, 0) + COALESCE(extras, 0))) AS diferencia
FROM `bigquery-public-data.chicago_taxi_trips.taxi_trips`
WHERE trip_total IS NOT NULL
  AND trip_miles > 0
LIMIT 1000;
