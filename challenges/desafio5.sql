SELECT
  cancoes.nome_cancao AS cancao,
  COUNT(historico.cancoes_id) AS reproducoes
FROM SpotifyClone.cancoes AS cancoes
INNER JOIN
  SpotifyClone.historico AS historico
ON 
  cancoes.cancoes_id = historico.cancoes_id
GROUP BY cancoes.nome_cancao
ORDER BY reproducoes DESC, cancao ASC
LIMIT 2;