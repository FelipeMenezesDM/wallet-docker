# Wallet (Docker)

Estrutura docker/docker-compose para a criação do ambiente com os serviços usados pela Wallet (Backend).

## Pré-requisitos
Para usar este projeto, é necessário ter instalado em sua máquina:

- docker:lts
- docker-compose:lts

## Instalação

1. Faça o clone deste projeto e, dentro do repositório local, execute o comando:

```bash
docker-compose up -d
```

2. Mova o projeto Wallet (Backend) para o diretório `./php/www` deste projeto.
3. Os serviços estarão disponíveis no servidor local:
```
apache:
  - Servidor: localhost
  - Porta: 8080
postgres:
  - Servidor: localhost
  - Porta: 8090
  - User: postgres
  - Senha: postgres
```