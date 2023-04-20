SELECT
  usuario.nome AS pessoa_usuaria, 
  IF(
    YEAR(MAX(historico.data_reproducao)) >= '2021',
    'Ativa',
    'Inativa'
    ) AS status_pessoa_usuaria
FROM SpotifyClone.usuario AS usuario
INNER JOIN
  SpotifyClone.historico AS historico
ON 
  usuario.pessoa_usuario_id = historico.pessoa_usuario_id
GROUP BY usuario.nome
ORDER BY usuario.nome;