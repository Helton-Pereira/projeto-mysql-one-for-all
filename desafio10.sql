SELECT 
    s.name nome, COUNT(ph.song_id) reproducoes
FROM
    SpotifyClone.songs s
		INNER JOIN
	SpotifyClone.play_history ph ON ph.song_id = s.song_id
		INNER JOIN
    SpotifyClone.users u ON u.user_id = ph.user_id
		INNER JOIN
	SpotifyClone.plans pl ON pl.plan_id = u.plan_id
WHERE pl.name IN ('gratuito', 'pessoal')
GROUP BY s.name
ORDER BY s.name;