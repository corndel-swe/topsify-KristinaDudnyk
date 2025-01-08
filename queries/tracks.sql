.mode json
SELECT
  tracks.id,
  tracks.name,
  tracks.explicit,
  tracks.preview_url,
  tracks.disc_number,
  tracks.track_number,
  tracks.duration_ms,
  albums.name AS album_name
FROM
  tracks
  INNER JOIN albums ON tracks.album_id = albums.id;