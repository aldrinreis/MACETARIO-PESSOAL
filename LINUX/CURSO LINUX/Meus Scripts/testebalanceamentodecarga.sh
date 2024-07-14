#!/bin/bash

# Obtenha o IP inicial
IPINICIAL=$(curl -s ifconfig.me)

# Verifique se a variável IPINICIAL foi definida corretamente
if [ -z "$IPINICIAL" ]; then
  echo "Erro: Não foi possível obter o IP inicial."
  exit 1
else
  echo "IP inicial: $IPINICIAL"
fi

# Inicialize a variável para armazenar o IP anterior
previous_ip=$IPINICIAL

# Loop infinito para verificar o IP
while true; do
  # Obtenha o IP atual
  current_ip=$(curl -s ifconfig.me)
  
  # Obtenha a hora atual
  current_time=$(date +%R:%S)

  # Verifique se o IP atual é diferente do IP anterior
  if [ "$current_ip" != "$previous_ip" ]; then
    echo "IP mudou! Novo IP de Saída: $current_ip Hora: $current_time"
    # Atualize o IP anterior para o novo IP
    previous_ip=$current_ip
  else
    echo "IP de Saída: $current_ip Hora: $current_time (sem mudanças)"
  fi

  # Aguarde 1 segundo antes de verificar novamente
  sleep 1
done
