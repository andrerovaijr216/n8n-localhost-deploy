# Projeto: N8N Self-Hosted com Docker e Acesso Remoto

Este projeto permite rodar o [n8n](https://n8n.io/) em uma máquina local com Docker e acesso via LocalTunnel ou DuckDNS.

## Estrutura de Arquivos

- `docker-compose.yml`: Define o serviço n8n com SQLite.
- `.env.example`: Variáveis de ambiente (renomeie para `.env` e edite).
- `start-localtunnel.sh`: Inicia o LocalTunnel com `nohup` para manter ativo após logout.

## Pré-requisitos

- Docker
- Node.js (para usar LocalTunnel)
- Conta no [DuckDNS](https://www.duckdns.org/) se optar por domínio fixo

## Instruções

```bash
# Clone o repositório
git clone https://github.com/seuusuario/n8n-selfhosted.git
cd n8n-selfhosted

# Renomeie e edite o arquivo .env
cp .env.example .env
nano .env

# Suba o container
docker compose up -d

# Acesse via LocalTunnel
chmod +x start-localtunnel.sh
./start-localtunnel.sh
```

## Observações

- Use `ps aux | grep localtunnel` para verificar se está rodando.
- O acesso ao n8n será via `https://n8nautomationagency.loca.lt` ou seu domínio DuckDNS.