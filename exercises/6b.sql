-- Create a list of all album names
-- Include the total duration of the album
-- Sort the results by album duration, with the longest first
SELECT
  albums.name,
  SUM(tracks.duration_ms) AS duration
FROM
  tracks
  INNER JOIN albums ON tracks.album_id = albums.id
GROUP BY
  albums.id
ORDER BY
  duration DESC;