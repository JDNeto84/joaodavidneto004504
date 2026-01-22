--- TABELA: regional
CREATE TABLE regional (
                          id BIGSERIAL PRIMARY KEY,
                          nome VARCHAR(255) NOT NULL,
                          ativo BOOLEAN NOT NULL DEFAULT TRUE,
                          data_sincronizacao TIMESTAMP,
                          hash_identificacao VARCHAR(255)
);
COMMENT ON TABLE regional IS 'Tabela de informações regionais';
COMMENT ON COLUMN regional.id IS 'Identificador único da regional';
COMMENT ON COLUMN regional.nome IS 'Nome descritivo da regional';
COMMENT ON COLUMN regional.ativo IS 'Indica se a regional está ativa';
COMMENT ON COLUMN regional.data_sincronizacao IS 'Data sincronização da regional';
COMMENT ON COLUMN regional.hash_identificacao IS 'Hash integração com externos';
