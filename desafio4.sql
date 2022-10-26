SELECT 
    u.name usuario,
    IF (MAX(YEAR(ph.date)) >= 2021, 'Usuário ativo', 'Usuário inativo') status_usuario
FROM
    SpotifyClone.users u
INNER JOIN SpotifyClone.play_history ph ON ph.user_id = u.user_id
GROUP BY u.name
ORDER BY u.name;