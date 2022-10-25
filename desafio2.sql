SELECT 
    COUNT(son.name) AS cancoes,
    COUNT(DISTINCT art.artist_id) AS artistas,
    COUNT(DISTINCT alb.album_id) AS albuns
FROM
    SpotifyClone.songs AS son
INNER JOIN
	SpotifyClone.artists AS art ON son.artist_id = art.artist_id
INNER JOIN 
	SpotifyClone.albuns AS alb ON alb.album_id = son.album_id
GROUP BY son.name AND art.name AND alb.name;