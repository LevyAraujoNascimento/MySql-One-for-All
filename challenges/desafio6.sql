SELECT
  MIN(valor_plano) AS faturamento_minimo,
  MAX(valor_plano) AS faturamento_maximo,
  ROUND(AVG(valor_plano), 2) AS faturamento_medio,
  ROUND(SUM(valor_plano), 2) AS faturamento_total
FROM
  SpotifyClone.usuario AS usuario
INNER JOIN
  SpotifyClone.plano AS plano
ON 
  usuario.plano_id = plano.plano_id;