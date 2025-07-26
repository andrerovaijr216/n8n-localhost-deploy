# n8n + LocalTunnel com Docker (Linux)

Este projeto configura o n8n em ambiente Linux com Docker e expõe a interface usando LocalTunnel.

## Pré-requisitos

- Linux (Debian/Ubuntu)
- Docker e Docker Compose instalados
- Node.js (para LocalTunnel)

## Instalação

```bash
sudo apt update && sudo apt upgrade -y
sudo apt install docker.io docker-compose nodejs npm curl -y
sudo npm install -g localtunnel
```

## Como usar

1. Clone o repositório
2. Copie o arquivo `.env.example` para `.env` e edite as variáveis
3. Suba o n8n com Docker:
   ```bash
   docker-compose up -d
   ```
4. Execute o script para rodar o LocalTunnel em segundo plano:
   ```bash
   chmod +x start-localtunnel.sh
   ./start-localtunnel.sh
   ```

## Arquivos

- `docker-compose.yml`: Configuração do Docker para o n8n
- `.env.example`: Arquivo de exemplo com variáveis de ambiente
- `start-localtunnel.sh`: Script para iniciar o LocalTunnel via `nohup`

---

**OBS**: Para manter o LocalTunnel sempre rodando mesmo com reinício, considere usar `pm2` ou criar um serviço systemd.
