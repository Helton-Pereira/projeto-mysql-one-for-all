SELECT 
    art.name artista, alb.name album, COUNT(fa.user_id) seguidores
FROM
    SpotifyClone.artists art
        INNER JOIN
    SpotifyClone.albuns alb ON art.artist_id = alb.artist_id
		INNER JOIN
	SpotifyClone.favorited_artists fa ON fa.artist_id = art.artist_id
GROUP BY alb.name, art.name
ORDER BY seguidores DESC, artista, album;