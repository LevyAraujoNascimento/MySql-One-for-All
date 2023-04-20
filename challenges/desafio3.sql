SELECT
  usuario.nome AS pessoa_usuaria,
  COUNT(historico.cancoes_id) AS musicas_ouvidas,
  ROUND(SUM(cancoes.duracao_sec/60),2) AS total_minutos
FROM
  SpotifyClone.usuario AS usuario
INNER JOIN
  SpotifyClone.historico AS historico
ON
  usuario.pessoa_usuario_id = historico.pessoa_usuario_id
INNER JOIN
  SpotifyClone.cancoes AS cancoes
ON
  historico.cancoes_id = cancoes.cancoes_id
GROUP BY usuario.nome
ORDER BY usuario.nome;