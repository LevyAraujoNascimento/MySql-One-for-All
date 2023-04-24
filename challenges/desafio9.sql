SELECT
  COUNT(*) AS musicas_no_historico
FROM
  SpotifyClone.historico AS historico
INNER JOIN
  SpotifyClone.usuario AS usuario
ON
  historico.pessoa_usuario_id = usuario.pessoa_usuario_id
WHERE usuario.nome = 'Barbara Liskov';