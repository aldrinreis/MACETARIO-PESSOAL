#!/bin/bash

################################################################################
# OperacoesValores.sh - Atividade 2 da Seção 4
#
# Autor: Aldrin Reis (aldrinreisdemorais@gmail.com)
# Data Criação: 14/07/2024
#
# Descrição:
#
# Crie um script que receba do usuário 2 valores e em seguida exiba um menu
# para que ele escolha uma das 4 principais operações aritmétricas (soma,
# subtração, multiplicação e divisão). Após isso, a operação e o resultado são
# exibidos ao usuário.
#
# Considere que:
# • O script deve validar e abortar a execução caso algum dos valores não
#   seja informado
# • No caso de multiplicação, o script deve exibir uma mensagem de erro
#   caso um dos valores seja 0, e então abortar
# • No caso de divisão, o script deve exibir uma mensagem de erro caso um
#   dos valores seja 0, e então abortar
# • Também no caso de divisão, o script deve exibir se é uma divisão exata
#   ou com resto.
#
# Exemplo de Execução:
# $ ./OperacoesValores.sh
# Informe o Valor 1: 50
# Informe o Valor 2: 20
# Escolha uma Operação:
# 1 = Soma
# 2 = Subtração
# 3 = Multiplicação
# 4 = Divisão
# Q = Sair
# Opção: 4
# Divisão com Resto = 10
# 50 / 20 = 2
#
# Dicas:
# • O comando expr possui a opção % para obter o resto de uma divisão
#
################################################################################


clear




echo "BEM VINDO!!!!!"
echo ""
#cho "$HORAATUAL"

DIRDESTINO="$HOME/Backup"

if [ ! -d "$DIRDESTINO" ]; then
	echo "Criando diretório de destino..."
	mkdir -p $DIRDESTINO
fi


DAYS7=$(find $DIRDESTINO -ctime -7 -name backup_home\*tgz)

if [ "$DAYS7" ]; then
	echo "Já foi gerado um backup do diretório $HOME nos últimos 7 dias."
	echo -n "Deseja continuar? (N/S): "
	read -n1 CONT
	echo

	if [ "$CONT" = N -o "$CONT" = n -o "$CONT" = "" ]; then
	       echo "Backup Abortado"
       	       exit 1
	elif [ "$CONT" = S -o "$CONT" = s ]; then
 		echo "Será criado um Backup para essa semana."
	else
		echo "Opção Inválida"
		exit 2
	fi
fi	

echo "Criando o backup"

ARQ="backup_home_$(date +%Y%m%d%H%M).tgz"

tar zcvpf $DIRDESTINO/$ARQ --exclude="$DIRDESTINO" "$HOME"/* > /dev/null 2>&1


echo "Criando Backup..."
echo "O Backup de Nome \""$ARQ"\" foi criado em $DIRDESTINO"
echo ""
echo "Backup Concluido"
echo

echo "Fim do Script"

