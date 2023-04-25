SELECT
  CASE
    WHEN idade <= 30 THEN 'Até 30 anos'
    WHEN idade > 30 AND idade <= 60 THEN 'Entre 31 e 60 anos'
    ELSE 'Maior de 60 anos'
  END AS faixa_etaria,
  COUNT( DISTINCT usuario.pessoa_usuario_id ) AS total_pessoas_usuarias,
  COUNT(favoritas.pessoa_usuario_id) AS total_favoritadas
FROM
  SpotifyClone.usuario AS usuario
LEFT JOIN
  SpotifyClone.favoritas AS favoritas
ON
  usuario.pessoa_usuario_id = favoritas.pessoa_usuario_id
GROUP BY faixa_etaria;