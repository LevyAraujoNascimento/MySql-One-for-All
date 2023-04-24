SELECT
  album.nome_album AS album,
  COUNT(album.nome_album) AS favoritadas
FROM
  SpotifyClone.favoritas AS favoritas
INNER JOIN 
  SpotifyClone.cancoes AS cancoes
ON 
  favoritas.cancoes_id = cancoes.cancoes_id
INNER JOIN 
  SpotifyClone.album AS album
ON 
  cancoes.album_id = album.album_id
GROUP BY album.nome_album
ORDER BY favoritadas DESC, album
LIMIT 3;