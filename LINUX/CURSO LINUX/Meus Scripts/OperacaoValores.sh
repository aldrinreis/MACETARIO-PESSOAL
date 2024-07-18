#!/bin/bash

################################################################################
# OperacoesValores.sh - Atividade 3 da Seção 4
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

## VALE LEMBRA QUE ESSA SCRIPT É A NIVEL DIDATICO
# REPOSTA DE EXERCÍCIO DE CURSO
# NÃO TEM TRATAMENTO DE TODAS AS ENTRADAS

clear


echo "BEM VINDO!!!!!"
echo ""
#cho "$HORAATUAL"
echo "Mini Calculadora"

echo -n "Informe o primeiro valor: "
read VALOR1
echo ""

echo -n "Informe o segundo Valor: "
read VALOR2
echo ""

if [ ! $VALOR1 ] || [ ! $VALOR2 ]       # Também poderia ser usado o -z
then
	echo "Nenhum dos valores pode ser nulo"
	exit 1
fi



# Menu da Calculadora

echo "Escolha uma Operação:"
echo "1 = ADIÇÃO"
echo "2 = SUBTRAÇÃO" 
echo "3 = MULTIPLICAÇÃO" 
echo "4 = DIVISÃO" 
echo "Q = SAIR" 
echo ""
echo -n "Opção: "
read OPCAO

echo ""

# Rotinas das Opções

case "$OPCAO" in
	1)
		SOMA=$(expr $VALOR1 + $VALOR2)
		echo "Adição"
		echo "A Soma de $VALOR + $VALOR2 é: $SOMA"
		;;
	2)
		SUBTRACAO=$(expr $VALOR1 - $VALOR2)
		echo "Subtração"
		echo "A subtração de $VALOR - $VALOR2 é: $SUBTRACAO"
		;;
	3)
		if [ $VALOR1 -eq 0 -o $VALOR2 -eq 0 ] 
		then
			echo "Um valor 0 não pode ser utilizado em um multiplicação"
			exit 1
		fi
		
		MULTIPLICACAO=$(expr $VALOR1 * $VALOR2)
		echo "Multiplicação"
		echo "A multiplicação de $VALOR * $VALOR2 é: $MULTIPLICACAO"
		;;
	4)
		if [ $VALOR1 -eq 0 -o $VALOR2 -eq 0 ] 
		then
			echo "Um valor 0 não pode ser utilizado em uma divisão"
			exit 1
		fi

		echo "Divisão"

		if [ $(expr $VALOR1 % $VALOR2) -ne 0 ]
		then
			echo "Divisão com Resto = $(expr $VALOR1 % $VALOR2)"
		else
			echo "Divisão Exata"
		fi
		DIVISAO=$(expr $VALOR1 / $VALOR2)
		
		
		echo "A divisão de $VALOR / $VALOR2 é: $DIVISAO"
		
		;;
	[Qq])
		echo "Saindo..."
		exit 0
		;;
	*)
		echo "Opção Inválida"
		exit 2
		;;
esac

echo ""