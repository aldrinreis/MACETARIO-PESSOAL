#!/bin/bash

##############################

# Somavalores.sh - Atividade 1 da Seção 3                                       #

# Autor: Aldrin Reis (aldrinreisdemorais@gmail.com)
# Data Criação: 08/07/2024
#                                                                               
# Descrição: Soma de valores da entrada do User.
#                                                                               
# Exemplo de uso: ./Sec3Atividade3.sh
#                                                                               
# Enunciado:#
#  Crie um script que receba um nome de usuário como parâmetro e exiba as 
#   seguintes informações:
#  • UID do usuário 
#  • Nome Completo / Descrição do Usuário 
#  • Total em Uso no /home do usuário 
#  • Informações do último login do usuário
#  • [Opcional] Validar se o usuário existe ou não sem o uso do if, que ainda   #
#   não foi estudado. Se não existir retorne o exit code 1, se existir retorne 
#   exit 0
#                                                                               

clear

echo "BEM VINDO!!!!!"
echo ""

echo "==============================================="
echo""

echo "Scrip de Relaório do Usuário: $(id -un)"
echo ""

# ls /home/$1 > /dev/null 2>&1 || { echo "Usuario Inexistente" ; exit 1; }

echo "UID: $(id -g)"
echo "Nome ou descrição: $(whoami)"
echo ""

echo "Total usado no /home/aldrinreis: $(du -sh /home/aldrinreis/ | cut -f1)"
echo ""

echo "Ultimo Login:"
echo "$(lastlog | head -n 1)"
echo "$(lastlog | grep aldrin)"
 

echo "==============================================="

echo ""
echo ""

echo "Fim do Script"

grep -i aldrinreis  /etc/passwd > /dev/null 2>&1

exit $?
