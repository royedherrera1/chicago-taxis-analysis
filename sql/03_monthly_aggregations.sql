-- Monthly aggregated metrics used for Tableau dashboard

SELECT
  DATE_TRUNC(DATE(trip_start_timestamp), MONTH) AS mes,
  COUNT(*) AS total_viajes,
  SUM(trip_total) AS ingresos_totales,
  AVG(trip_total) AS ticket_promedio,
  AVG(trip_seconds) / 60 AS duracion_promedio_min
FROM `bigquery-public-data.chicago_taxi_trips.taxi_trips`
WHERE trip_start_timestamp IS NOT NULL
  AND trip_total IS NOT NULL
  AND trip_miles > 0
GROUP BY mes
ORDER BY mes;

