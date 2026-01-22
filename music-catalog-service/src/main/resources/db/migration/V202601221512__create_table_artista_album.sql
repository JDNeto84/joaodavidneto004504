--- TABELA: artista_album N:N
CREATE TABLE artista_album (
                               artista_id BIGINT NOT NULL,
                               album_id BIGINT NOT NULL,
                               PRIMARY KEY (artista_id, album_id),
                               CONSTRAINT fk_artista FOREIGN KEY (artista_id) REFERENCES artista(id),
                               CONSTRAINT fk_album FOREIGN KEY (album_id) REFERENCES album(id)
);
COMMENT ON TABLE artista_album IS 'Tabela de ligação que relaciona artistas aos seus álbuns Many-to-Many';
COMMENT ON COLUMN artista_album.artista_id IS 'Referência ao ID do artista';
COMMENT ON COLUMN artista_album.album_id IS 'Referência ao ID do álbum';
