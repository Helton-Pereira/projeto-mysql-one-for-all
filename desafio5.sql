SELECT 
    s.name cancao, COUNT(ph.song_id) reproducoes
FROM
    SpotifyClone.songs s
        INNER JOIN
    SpotifyClone.play_history ph ON ph.song_id = s.song_id
GROUP BY s.name
ORDER BY reproducoes DESC , s.name
LIMIT 2;