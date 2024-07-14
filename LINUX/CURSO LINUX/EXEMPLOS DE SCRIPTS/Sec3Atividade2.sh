#!/bin/bash

#############################
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
# Enunciado:#
# Crie um script que gere um relatório de algumas informações da máquina atual: 
# • Nome da Máquina 
# • Data e Hora Atual
# • Versão do Kernel 
# • Quantidade de CPUs/Cores 
# • Modelo da CPU 
# • Total de Memória RAM Disponível 
# • Partições
#                                                                               
#####################################

clear

echo "BEM VINDO!!!!!"
echo ""

echo "==============================================="
echo""

echo "Scrip de Relaório da Máquina"


echo "============================================================"
echo "Relatório da máquina: $(hostname) "
echo "Data e Hora: $(date +%H:%M)"
echo "============================================================"

echo "Máquina Ativa desde: $(uptime -s)"
echo "Máquina Ativa a: $(uptime -p)"
echo""

echo "Versão do Kernel: $(uname -r)"
echo""

echo "CPUs:"
echo "Quantidade de CPUs: $(grep -c ^processor /proc/cpuinfo)"
echo "Modelo da CPU: $(grep 'model name' /proc/cpuinfo|uniq)"

echo ""
echo "Memória Total: $(expr $(cat /proc/meminfo|grep MemTotal|tr -d ' '| cut -d: -f2 | tr -d kB) / 1024) MB"
echo ""

echo "Partições: "
echo "$(df -kh)"
echo ""
echo ""



echo "Fim do Script"

