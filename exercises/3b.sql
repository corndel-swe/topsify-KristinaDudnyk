-- Suppose we sort tracks by their duration (ascending) and into pages of length 5
-- Find the 4th page
-- Include all columns
SELECT
  *
FROM
  tracks
ORDER BY
  duration_ms
LIMIT
  5 OFFSET 3 * 5;