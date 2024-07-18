#!/bin/bash

################################################################################
# Condicionais - Atividade 1 da Seção 4                                         #
#                                                                               #
# Autor: Aldrin Reis (aldrinreisdemorais@gmail.com)                      
# Data Criação: 14/07/2024                                                      
#                                                                               
# Descrição: Sudação Mediante Horário.                                          
#                                   
# Exemplo de uso: ./NomeDaScript.sh                                             
#                                                                               #
# Enunciado:
#
# Crie um script que baseado no horário atual escreva “Bom Dia”, “Boa Tarde ou  # “Boa Noite”. Considere que o começo do dia às 06:00.
#   O mesmo script deve mostrar também a hora atual no formato de 0 a 12,       
#   indicando AM ou PM.                                                         #
#   Exemplo de Execução:                                                        #
#   $ ./HoraAtual.sh
#   Boa Tarde!
#   A hora atual é: 3:39                                                       #   
#                                                                               
################################################################################

clear

HORA=$(date +%H)

MINUTO=$(date +%M)

TURNO=$(date +%p)

echo "BEM VINDO!!!!!"
echo ""

#cho "$HORAATUAL"

if [ "$HORA" -ge 6 -a "$HORA" -lt 12 ];
then
	echo "Bom Dia!"
elif [ "$HORA" -gt 12 -a "$HORA" -lt 18 ];
then
	echo "Boa Tarde!"
else
	echo "Boa Noite!"
fi	

echo "A Hora atual é: "$HORA":"$MINUTO" "$TURNO""

echo ""
echo ""

echo "Fim do Script"

