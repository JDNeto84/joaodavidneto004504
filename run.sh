#!/bin/bash

# 1. Carrega as variáveis do arquivo .env
export $(grep -v '^#' .env | xargs)

echo " Variáveis de ambiente carregadas do .env"
echo " Iniciando a aplicação com LOG_LEVEL=$LOG_LEVEL..."

# 2. Entra no diretório e executa o wrapper
cd music-catalog-service && ./gradlew bootRun -x test --args='--spring.profiles.active=dev'