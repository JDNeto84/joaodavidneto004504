-- TABELA: album
CREATE TABLE album (
                       id BIGSERIAL PRIMARY KEY,
                       titulo VARCHAR(255) NOT NULL,
                       ano_lancamento INT NOT NULL,
                       data_criacao TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP
);
COMMENT ON TABLE album IS 'Tabela que armazena as informações dos álbuns musicais';
COMMENT ON COLUMN album.id IS 'Identificador único do álbum';
COMMENT ON COLUMN album.titulo IS 'Título oficial do álbum';
COMMENT ON COLUMN album.ano_lancamento IS 'Ano em que o álbum foi lançado oficialmente';
COMMENT ON COLUMN album.data_criacao IS 'Data e hora em que o registro do álbum foi criado';
