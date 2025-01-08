.mode json
SELECT
  albums.name,
  AVG(features.loudness) AS average_loudness,
  albums.release_date
FROM
  albums
  INNER JOIN tracks ON albums.id = tracks.album_id
  INNER JOIN features ON features.track_id = tracks.id
GROUP BY
  albums.id
ORDER BY
  albums.name;