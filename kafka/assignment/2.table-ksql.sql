CREATE TABLE spotify_table AS
SELECT track_id,
       LATEST_BY_OFFSET(track_name) AS track_name,
       LATEST_BY_OFFSET(artist) AS artist,
       LATEST_BY_OFFSET(genre) AS genre,
       LATEST_BY_OFFSET(popularity) AS popularity,
       LATEST_BY_OFFSET(Duration) AS duration,
       LATEST_BY_OFFSET(tempo) AS tempo,
       LATEST_BY_OFFSET(interaction) AS interaction,
       LATEST_BY_OFFSET(listened_from) AS listened_from,
       LATEST_BY_OFFSET(ts) AS ts
FROM spotify_stream
GROUP BY track_id;

-- "track_id", "track_name", "artist", "genre", "popularity", 
-- "Duration", "tempo", "explicit", "interaction", "listened_from", "ts"