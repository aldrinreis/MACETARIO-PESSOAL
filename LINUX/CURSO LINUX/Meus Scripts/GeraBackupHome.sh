#!/bin/bash

# Condicionais - Atividade 2 da Seção 4
                                                                                
# Autor: Aldrin Reis (aldrinreisdemorais@gmail.com)
# Data Criação: 14/07/2024

# Descrição: Backup de Usuário.                    
                                                                                
# Crie um script que gere um arquivo compactado de backup de todo o diretório 
# home do usuário atual (/home/<usuario>).                                      
# Considere que:                                                               
# • O arquivo de backup será criado no diretório /home/<usuario>/Backup         
# • O nome do arquivo de backup deve seguir o padrão                            
# backup_home_AAAAMMDDHHMM.tgz, exemplo                                         
# backup_home_201708241533.tgz                                                  

# • Caso o diretório /home/<usuario>/Backup não exista, o script deve criá-lo   
# • Antes de criar o backup, o script deve consultar se existe algum arquivo    
# de backup criado na última semana. Se existir, o usuário deve ser             
# consultado se deseja continuar. Se o usuário optar por não continuar, o       
# script deve abortar com código de saída 1.                                    
# • Após gerar o backup, o script deve informar o nome do arquivo gerado.       
                                                                                
# Exemplo de Execução:                                                          
# $ ./GeraBackupHome.sh                                                         
# Já foi gerado um backup do diretório /home/ricardo nos últimos 7 dias.        
# Deseja continuar? (N/s): s                                                    
# Será criado mais um backup para a mesma semana                                
# Criando Backup...                                                             
# O backup de nome "backup_home_201708241547.tgz" foi ... home/ricardo/Backup
# Backup Concluído!   


clear


# $HOME: É uma variável de ambiente padrão no sistema Unix/Linux que contém o caminho do diretório home do usuário que está executando o script. 
# Por exemplo, se o nome do usuário for joao, a variável $HOME geralmente conterá /home/joao.


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

tar zcvpf $DIRDESTINO/$ARQ --absolute-names --exclude="$DIRDESTINO" "$HOME"/* > /dev/null 2>&1


echo "Criando Backup..."
echo "O Backup de Nome \""$ARQ"\" foi criado em $DIRDESTINO"
echo ""
echo "Backup Concluido"
echo

echo "Fim do Script"

