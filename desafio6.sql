SELECT 
    MIN(p.value) faturamento_minimo,
    MAX(p.value) faturamento_maximo,
    ROUND(SUM(p.value) / 10, 2) faturamento_medio,
    ROUND(SUM(p.value), 2) faturamento_total
FROM
    SpotifyClone.plans p
		INNER JOIN
    SpotifyClone.users u ON u.plan_id = p.plan_id;