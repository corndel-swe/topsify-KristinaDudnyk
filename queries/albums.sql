.mode json
SELECT
  albums.image_url,
  albums.name,
  albums.release_date,
  artists.name AS artist_name
FROM
  albums
  INNER JOIN artists ON albums.artist_id = artists.id;