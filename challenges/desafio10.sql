CREATE TABLE SpotifyClone.favoritas(
  pessoa_usuario_id INT NOT NULL,
  cancoes_id INT NOT NULL,
  PRIMARY KEY (pessoa_usuario_id, cancoes_id),
  FOREIGN KEY (pessoa_usuario_id) REFERENCES usuario (pessoa_usuario_id),
  FOREIGN KEY (cancoes_id) REFERENCES cancoes (cancoes_id)
) engine = InnoDB;

INSERT INTO SpotifyClone.favoritas (pessoa_usuario_id, cancoes_id)
VALUES
  (1, 3),
  (1, 6),
  (1, 10),
  (2, 4),
  (3, 1),
  (3, 3),
  (4, 7),
  (4, 4),
  (5, 10),
  (5, 2),
  (8, 4),
  (9, 7),
  (10, 3);
