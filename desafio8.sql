SELECT 
    art.name artista, alb.name album
FROM
    SpotifyClone.artists art
		INNER JOIN
	SpotifyClone.albuns alb ON alb.artist_id = art.artist_id
WHERE
    art.name = 'Elis regina'
ORDER BY album;