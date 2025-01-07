-- Create a list of all artist names
-- Include a count of how many albums they have released
-- Order your results by artist name in ascending order
-- (You should group the artists by id, not by name)
SELECT
  artists.name,
  COUNT(albums.artist_id) AS artist_album
FROM
  albums
  INNER JOIN artists ON albums.artist_id = artists.id
GROUP BY
  artists.id
ORDER BY
  artists.name;