#!/bin/bash

################################################################################
# InspecionaHome.sh - Inspeciona diretórios /home/ para arquivos de mídia
#
# Exercício 3 - Instruções de Loop
#
# Autor:Aldrin Reis de Morais  (aldrinreisdemorais@gmail.com)
# Data Criação: [Data de Criação]
#
# Descrição:
#
# Fazer um script que inspecione os diretórios /home/ de todos os usuários em
# busca de arquivos com as extensões .mp3, .mp4 e .jpg.
# O script deve gerar como saída final um relatório com a quantidade de cada
# tipo de arquivo para cada usuário.
#
# Exemplo de Execução:
# $ ./InspecionaHome.sh
# Usuario: aluno1
# Arquivos JPG: 8
# Arquivos MP3: 0
# Arquivos MP4: 12
# Usuario: aluno2
# Arquivos JPG: 0
# Arquivos MP3: 0
# Arquivos MP4: 0
# Usuario: ricardo
# Arquivos JPG: 685
# Arquivos MP3: 0
# Arquivos MP4: 81
#
# Dicas:
# • Você pode utilizar a seguinte sintaxe para o comando find:
#   find /home/usuario -name '*.jpg' -o -name '*.mp4' -o -name '*.mp3'
#
################################################################################


for user in /home/*
do
	MP4COUNT=0
	MP3COUNT=0
	JPGCOUNT=0
	OLDIFS=$IFS
	IFS=$'\n'
	for files in $(find $user -name '*.jpg' -o -name '*.mp4' -o -name '*.mp3')
	do
		case $files in
			*.mp4)
				MP4COUNT=$(expr $MP4COUNT + 1 )
				;;
			*.mp3)

				MP3COUNT=$(expr $MP3COUNT + 1 )
				;;
			*.jpg)

				JPGCOUNT=$(expr $JPGCOUNT + 1 )
				;;
		esac
	done # Fim do for do find

echo "Usuario: $(basename $user)"
echo "Arquivos JPG: $JPGCOUNT"
echo "Arquivos MP3: $MP3COUNT"
echo "Arquivos MP4: $MP4COUNT"
echo
done # Fim do For no /home

IFS=$OLDIFS


