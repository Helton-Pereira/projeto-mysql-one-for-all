SELECT 
    u.name usuario,
    COUNT(ph.user_id) qt_de_musicas_ouvidas,
    ROUND(SUM(s.duration_seconds / 60), 2) total_minutos
FROM
    SpotifyClone.users u
INNER JOIN SpotifyClone.play_history ph ON ph.user_id = u.user_id
INNER JOIN SpotifyClone.songs s ON s.song_id = ph.song_id
GROUP BY u.name ORDER BY u.name;