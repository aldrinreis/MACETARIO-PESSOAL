#!/bin/bash

################################################################################
# MostrarUsuariosHumanos.sh - Exibe informações dos usuários humanos do sistema
# Exercício 1 - Instruções de Loop

# Autor:Aldrin Reis de Morais  (aldrinreisdemorais@gmail.com)
# Data Criação: [Data de Criação]
#
# Descrição:
#
# Crie um script que mostre todos os usuários “humanos” da máquina seguidos
# de seu UID, Diretório Home e Nome/Descrição.
#
# Exemplo de Saída:
# USUARIO UID DIR HOME NOME OU DESCRIÇÃO
# ricardo 1000 /home/ricardo Ricardo Prudenciato
# aluno1 1001 /home/aluno1 Aluno de Teste 1
# aluno2 1002 /home/aluno2 Aluno de Teste 2
# andre 1003 /home/andre Andre Novais
#
# Dicas:
# • Baseie-se pelas informações do arquivo /etc/passwd
# • O arquivo /etc/login.defs mostra através dos parâmetros UID_MIN e
#   UID_MAX os UID atribuídos aos usuários “normais” do sistema
# • Para definir apenas a quebra de linha como separador no IFS use:
#   IFS=$'\n'
# • Use a opção -e do echo para controlar o espaçamento da saída com
#   tabs (\t)
#
################################################################################


clear 

MIN_UID=$(grep "^UID_MIN" /etc/login.defs|tr -s "\t"|cut -f2)
MAX_UID=$(grep "^UID_MAX" /etc/login.defs|tr -s "\t"|cut -f2)

OLDIFS=$IFS
IFS=$'\n'

#Criando o cabeçalho da saída
echo -e "USUARIO\t\tUID\t\tDIR HOME\t\tNOME OU DESCRIÇÃO"

for i in $(cat /etc/passwd)
do
	USERID=$(echo $i | cut -d":" -f3)
	if [ $USERID -ge $MIN_UID -a $USERID -le $MAX_UID ]
	then
		USER=$(echo $i | cut -d":" -f1)
		USERDESC=$(echo $i | cut -d":" -f5 | tr -d ',')
		USERHOME=$(echo $i | cut -d":" -f6)
		echo -e "$USER\t\t$USERID\t\t$USERHOME\t\t$USERDESC"
	fi
done
IFS=$OLDIFS