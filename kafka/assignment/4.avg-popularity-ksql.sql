CREATE TABLE avg_popularity_table AS
SELECT
    artist,
    AVG(popularity) AS avg_popularity
FROM spotify_stream
GROUP BY artist
EMIT CHANGES;

SELECT * FROM avg_popularity_table EMIT CHANGES: