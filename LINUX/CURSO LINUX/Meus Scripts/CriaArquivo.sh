#!/bin/bash

################################################################################
# CriaArquivo.sh - Cria um arquivo e preenche com caracteres até atingir o tamanho desejado
#
# Exercício 4 - Instruções de Loop
#
# Autor:Aldrin Reis de Morais  (aldrinreisdemorais@gmail.com)
# Data Criação: [Data de Criação]
#
# Descrição:
#
# Fazer um script que crie um arquivo e o preencha com um conjunto de caracteres
# até que um determinado tamanho em bytes seja atingido.
# O usuário deverá fornecer o nome do arquivo, o conjunto de caracteres que será
# utilizado para preenchimento do arquivo, e o tamanho final do arquivo em bytes.
# O script deve mostrar o andamento da criação do arquivo a cada 10% de progresso,
# bem como o tamanho atual do arquivo.
# Se o arquivo já existir, toda a informação anterior será apagada.
#
# Exemplo de Execução:
# $ ./CriaArquivo.sh
# Informe o nome do arquivo a ser criado: arquivo_teste.out
# Informe um conjunto de caracteres que será usado para preencher o arquivo: a
# Informe o tamanho final do arquivo (em bytes): 100000
# Concluído: 10% - Tamanho do Arquivo: 10000
# Concluído: 20% - Tamanho do Arquivo: 20000
# Concluído: 30% - Tamanho do Arquivo: 30000
# Concluído: 40% - Tamanho do Arquivo: 40000
# Concluído: 50% - Tamanho do Arquivo: 50000
# Concluído: 60% - Tamanho do Arquivo: 60000
# Concluído: 70% - Tamanho do Arquivo: 70000
# Concluído: 80% - Tamanho do Arquivo: 80000
# Concluído: 90% - Tamanho do Arquivo: 90000
# Concluído: 100% - Tamanho do Arquivo: 100000
#
# Dicas:
# • Para saber o tamanho atual do arquivo, use o comando:
#   stat --printf=%s arquivo
# • Use a opção % do expr, que retorna o resto de uma divisão, para saber
#   quando exibir a mensagem de porcentagem (10, 20, 30, etc)
#
################################################################################


read -p "Informe o nome do arquivo a ser criado: " FILE
read -p "Informe um conjunto de caracteres: " WORD
read -p "Informe o tamanho final do arquivo (em bytes): " SIZE

cat /dev/null > $FILE

PORC_EXIBIDA=0

until [ $SIZE -le $(stat --printf=%s "$FILE") ] 
do
	echo -n $WORD >> $FILE
	SIZEATUAL=$(stat --printf=%s "$FILE")

	PORC_ATUAL=$(expr $SIZEATUAL \* 100 / $SIZE)
	
	if [ $(expr $PORC_ATUAL % 10) -eq 0 -a $PORC_EXIBIDA -ne $PORC_ATUAL ]
	then
		echo "Concluído: $PORC_ATUAL% - Tamanho do Arquivo: $SIZEATUAL"
		PORC_EXIBIDA=$PORC_ATUAL
	fi
done