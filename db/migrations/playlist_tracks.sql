.mode json CREATE TABLE playlist_tracks (
  playlistId INTEGER,
  trackId TEXT,
  FOREIGN KEY (playlistId) REFERENCES playlists(id) ON DELETE CASCADE,
  FOREIGN KEY (trackId) REFERENCES tracks(id) ON DELETE CASCADE
);