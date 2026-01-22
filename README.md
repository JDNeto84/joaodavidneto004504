# Projeto Desenvolvedor Back End

## Sobre o Projeto

API REST para gerenciamento de artistas e álbuns musicais, desenvolvida como parte do processo seletivo para Engenheiro  de Softaware Java Sênior. A aplicação implementa todos os requisitos solicitados incluindo segurança JWT, upload de imagens, WebSocket, sincronização externa e observabilidade.

## Status do Projeto

| Milestone                            |  Status   |
|--------------------------------------|:---------:|
| v0.1.0 - Infraestrutura e Docker     | Concluído |
| v0.2.0 - Persistência e Modelagem    | Pendente  |
| v0.3.0 - Segurança e Autenticação    | Pendente  |
| v0.4.0 - Domínio e Operações CRUD    | Pendente  |
| v0.5.0 - Gestão de Arquivos (MinIO)  | Pendente  |
| v0.6.0 - Comunicação em Tempo Real   | Pendente  |
| v0.7.0 - Integração e Sincronismo    | Pendente  |
| v0.8.0 - Observabilidade e Métricas  | Pendente  |
| v0.9.0 - Qualidade e Cobertura       | Pendente  |
| v1.0.0 - Documentação e Entrega      | Pendente  |

# Checklist de Requisitos Implementados

### Requisitos Gerais
- [ ] a) Segurança: bloquear acesso ao endpoint a partir de domínios fora do domínio do serviço.
- [ ] b) Autenticação JWT com expiração a cada 5 minutos e possibilidade de renovação.
- [ ] c) Implementar POST, PUT, GET.
- [ ] d)  Paginação na consulta dos álbuns.
- [ ] e) Expor quais álbuns são/tem cantores e/ou bandas (consultas parametrizadas).
- [ ] f) Consultas por nome do artista com ordenação alfabética (asc/desc).
- [ ] g) Upload de uma ou mais imagens de capa do álbum.
- [ ] h) Armazenamento das imagens no MinIO (API S3)
- [ ] i) Recuperação por links pré-assinados com expiração de 30 minutos.
- [ ] j) Versionar endpoints.
- [ ] k) Flyway Migrations para criar e popular tabelas.
- [ ] l) Documentar endpoints com OpenAPI/Swagger.

### Requisitos Sênior
- [x] a) Health Checks e Liveness/Readiness.
- [ ] b) Testes unitários.
- [ ] c) WebSocket para notificar o front a cada novo álbum cadastrado.
- [ ] d) Rate limit: até 10 requisições por minuto por usuário.
- [ ] e)  Endpoint de regionais (https://integrador-argus-api.geia.vip/v1/regionais):
  - [ ]  Importar a lista para tabela interna.
  - [ ]  Adicionar atributo “ativo” (regional (id integer, nome varchar(200), ativo boolean)).
  - [ ] Sincronizar com menor complexidade:
    - [ ] Novo no endpoint → inserir.
    - [ ] Ausente no endpoint → inativar.
    - [ ] Atributo alterado → inativar antigo e criar novo registro.

## Instruções do Projeto
- [x] Projeto em repositório GitHub.
- [ ] README.md com documentação, dados de inscrição, vaga e como executar/testar.
- [ ] Codifique como se fosse para produção, com possibilidade de evolução.
- [ ] Relacionamento Artista-Álbum N:N.
- [ ] Use o projeto/tecnologias base e adicione dependências necessárias.
- [ ] Use exemplos como carga inicial do banco.
- [ ] Criar e empacotar aplicação como imagens Docker.
- [x] Entregar como containers orquestrados (API + MinIO + BD) via docker-compose.
---

## Executando a aplicação

```bash
# 1. Clone o repositório
git clone <repository-url>

# 2. Usar o .env.dev.example
cp .env.dev.example .env

# 3. Sobe tudo com Docker Compose
docker compose up --build

# 4. Ou apenas os serviços de infra
docker-compose up postgres minio
# Roda app localmente
./gradlew bootRun
```

## Acessando a aplicação

- **Music-Catalog-API**: http://localhost:8080
- **Swagger-UI**: http://localhost:8080/swagger-ui/index.html
- **MinIO**: http://localhost:9001/browser
---

## Análise com CodeQL

Este projeto utiliza **CodeQL** para varredura de segurança e qualidade do código.  
O CodeQL gera um banco de dados semântico do código e aplica queries para detectar problemas.

### O que é testado na análise CodeQL

#### Segurança
- Injeção de SQL, comandos ou scripts
- Uso inseguro de dados externos (XSS, path traversal)
- Problemas de autenticação/autorização
- Uso de APIs criptográficas fracas
- Vulnerabilidades conhecidas em padrões de código

#### Qualidade
- Código morto ou redundante
- Erros de lógica comuns
- Uso incorreto de bibliotecas padrão
- Problemas de concorrência (ex.: *race conditions*)

---
