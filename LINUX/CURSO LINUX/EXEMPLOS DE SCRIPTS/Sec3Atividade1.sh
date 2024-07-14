#!/bin/bash

#########################################################################
# 									
# ExemploIf.sh - Atividade 1 da Seção 3 
#									
# Autor: Aldrin Reis (aldrinreisdemorais@gmail.com)     
# Data Criação: 08/07/2024	
#								
# Descrição: Soma de valores da entrada do User. 	
#								
# Exemplo de uso: ./Sec3Atividade1.sh     
#                                                                       
# Enunciado:                     
# Crie um Script que após executado solicite dois valores como entrada. 
# Esses valores devem ser somados e o resultado exibido para o usuário. 
#                                                                           
#								
#########################################################################

echo "Bem-vindo!!"
echo "=================================================="

echo "Script de Soma de Valores"

echo -n "Insira o 1° valor: "
read VALOR1

echo -n "Insira o °2 valor: "
read VALOR2

SOMA=$(expr $VALOR1 + $VALOR2)

echo "A soma dos valores $VALOR1 + $VALOR2 = $SOMA"

echo "Fim do Script"
