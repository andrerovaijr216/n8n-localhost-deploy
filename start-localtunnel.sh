#!/bin/bash
# Executa localtunnel em segundo plano com nohup
nohup npx localtunnel --port 5678 --subdomain n8nautomationagency &
echo "LocalTunnel iniciado em segundo plano. Verifique com: ps aux | grep localtunnel"