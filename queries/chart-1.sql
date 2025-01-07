.mode json
SELECT
  artists.name AS artist_name,
  SUM(tracks.explicit) AS explicit_track_count
FROM
  tracks
  INNER JOIN albums ON tracks.album_id = albums.id
  INNER JOIN artists ON artists.id = albums.artist_id
GROUP BY
  artist_name
HAVING
  explicit_track_count > 1;

;