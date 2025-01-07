-- How many tracks are longer than 5 minutes?
SELECT
  COUNT(duration_ms)
FROM
  tracks
WHERE
  duration_ms > 300000;