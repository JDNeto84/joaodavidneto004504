-- TABELA: artista
CREATE TABLE artista (
                         id BIGSERIAL PRIMARY KEY,
                         nome VARCHAR(255) NOT NULL,
                         tipo VARCHAR(20) NOT NULL CHECK (tipo IN ('SOLO', 'BANDA')),
                         data_criacao TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP
);
COMMENT ON TABLE artista IS 'Tabela que armazena os artistas, podendo ser do tipo SOLO ou BANDA';
COMMENT ON COLUMN artista.id IS 'Identificador único do artista';
COMMENT ON COLUMN artista.nome IS 'Nome artístico ou nome da banda';
COMMENT ON COLUMN artista.tipo IS 'Classificação do artista: SOLO para cantores individuais ou BANDA para grupos';
COMMENT ON COLUMN artista.data_criacao IS 'Data e hora em que o registro do artista foi criado';
