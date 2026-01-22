--- TABELA: imagem_album (Metadados de arquivos - MinIO)
CREATE TABLE imagem_album (
                              id BIGSERIAL PRIMARY KEY,
                              album_id BIGINT NOT NULL,
                              nome_arquivo VARCHAR(255) NOT NULL,
                              bucket VARCHAR(255) NOT NULL,
                              object_name VARCHAR(255) NOT NULL,
                              content_type VARCHAR(100),
                              tamanho BIGINT,
                              data_upload TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
                              CONSTRAINT fk_album_imagem FOREIGN KEY (album_id) REFERENCES album(id)
);
COMMENT ON TABLE imagem_album IS 'Armazena metadados das imagens de capa dos álbuns armazenadas';
COMMENT ON COLUMN imagem_album.id IS 'Identificador único da imagem';
COMMENT ON COLUMN imagem_album.album_id IS 'ID do álbum ao qual esta imagem pertence';
COMMENT ON COLUMN imagem_album.nome_arquivo IS 'Nome original do arquivo enviado';
COMMENT ON COLUMN imagem_album.bucket IS 'Nome do bucket no storage onde o arquivo está';
COMMENT ON COLUMN imagem_album.object_name IS 'Caminho chave única do objeto dentro do bucket';
COMMENT ON COLUMN imagem_album.content_type IS 'MIME type do arquivo, image/jpeg, image/png';
COMMENT ON COLUMN imagem_album.tamanho IS 'Tamanho do arquivo em bytes';
COMMENT ON COLUMN imagem_album.data_upload IS 'Data e hora em que o upload foi realizado';
