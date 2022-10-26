SELECT 
    COUNT(ph.user_id) quantidade_musicas_no_historico
FROM
    SpotifyClone.play_history ph
		INNER JOIN
	SpotifyClone.users u ON u.user_id = ph.user_id
WHERE u.name = 'Barbara Liskov';