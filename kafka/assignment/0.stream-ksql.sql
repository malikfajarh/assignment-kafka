CREATE STREAM spotify_stream (
    track_id VARCHAR,
    track_name VARCHAR,
    artist VARCHAR,
    genre VARCHAR,
    popularity INT,
    duration INT,
    tempo INT,
    explicit BOOLEAN
    interaction VARCHAR,
    listened_from VARCHAR,
    ts BIGINT
) WITH (
    KAFKA_TOPIC = 'spotify',
    VALUE_FORMAT = 'JSON'
);

-- "track_id", "track_name", "artist", "genre", "popularity", 
-- "Duration", "tempo", "explicit", "interaction", "listened_from", "ts"