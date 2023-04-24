SELECT
  artista.nome_artista AS artista,
  album.nome_album AS album,
  COUNT(album.nome_album) AS pessoas_seguidoras
FROM
  SpotifyClone.seguindo AS seguindo
INNER JOIN 
  SpotifyClone.album AS album
ON 
  seguindo.artista_id = album.artista_id
INNER JOIN 
  SpotifyClone.artista AS artista
ON 
  seguindo.artista_id = artista.artista_id
GROUP BY album.nome_album, artista.nome_artista
ORDER BY pessoas_seguidoras DESC, artista, album;