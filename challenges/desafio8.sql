SELECT
  artista.nome_artista AS artista, 
  album.nome_album AS album
FROM
  SpotifyClone.album AS album
INNER JOIN
  SpotifyClone.artista AS artista
ON
  album.artista_id = artista.artista_id
WHERE artista.nome_artista = 'Elis Regina'
ORDER BY album;