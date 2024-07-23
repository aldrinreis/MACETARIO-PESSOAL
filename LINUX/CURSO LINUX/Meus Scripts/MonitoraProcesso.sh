#!/bin/bash

#!/bin/bash

################################################################################
# MonitoraProcesso.sh - Monitora se um processo está em execução
#
# Exercício 2 - Instruções de Loop

# Autor:Aldrin Reis de Morais  (aldrinreisdemorais@gmail.com)
# Data Criação: [Data de Criação]
#
# Descrição:
#
# Crie um script que receba um nome de processo como argumento e que
# constantemente irá verificar se o processo está em execução.
# Caso não esteja, deve ser exibida uma mensagem na sessão do usuário a cada
# x segundos.
# O processo deve rodar como Daemon, ou seja, deve estar sempre em
# execução, verificando o processo em questão a cada x segundos.
#
# Exemplo de Execução:
# $ ./MonitoraProcesso.sh firefox &
# ATENÇÃO!!!!!!! O processo firefox NÃO está em execução!
# ATENÇÃO!!!!!!! O processo firefox NÃO está em execução!
# ATENÇÃO!!!!!!! O processo firefox NÃO está em execução!
# ATENÇÃO!!!!!!! O processo firefox NÃO está em execução!
# ATENÇÃO!!!!!!! O processo firefox NÃO está em execução!
# ATENÇÃO!!!!!!! O processo firefox NÃO está em execução!
#
# Dicas:
# • Use o comando ps para verificar se o processo está em execução.
# • Para rodar o script como Daemon, use o operador & no final do comando.
# • Use o comando sleep para definir o intervalo de verificação.
#
################################################################################


TIME=5

if [ $# -eq 0 ]
then
	echo "Favor informar um processo como argumento."
	echo "./MonitoraProcesso.sh <processo>"
	exit 1
fi

while true
do
	if ps axu |grep $1 |grep -v grep |grep -v $0 > /dev/null
	then
		sleep $TIME
	else
		echo "ATENÇÃO!!!!!!! O processo $1 NÃO está em execução!"
		sleep $TIME
	fi
done