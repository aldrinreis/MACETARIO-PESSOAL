# **Macetário Shell Script**

- [Redirecionamentos de Entrada e Saída](https://github.com/aldrinreis/MACETARIO-PESSOAL/blob/main/LINUX/PROGRAMA%C3%87%C3%83O%20LINUX.MD#redirecionamentos-de-entrada-e-sa%C3%ADda)

- [Variáveis no shell](https://github.com/aldrinreis/MACETARIO-PESSOAL/blob/main/LINUX/PROGRAMA%C3%87%C3%83O%20LINUX.MD#vari%C3%A1veis-no-shell)
- [Exit codes](https://github.com/aldrinreis/MACETARIO-PESSOAL/blob/main/LINUX/PROGRAMA%C3%87%C3%83O%20LINUX.MD#exit-codes)
- [Aspas no shell](https://github.com/aldrinreis/MACETARIO-PESSOAL/blob/main/LINUX/PROGRAMA%C3%87%C3%83O%20LINUX.MD#aspas-no-shell)
- [Scripts](https://github.com/aldrinreis/MACETARIO-PESSOAL/blob/main/LINUX/PROGRAMA%C3%87%C3%83O%20LINUX.MD#scripts)
- [Recebendo entradas](https://github.com/aldrinreis/MACETARIO-PESSOAL/blob/main/LINUX/PROGRAMA%C3%87%C3%83O%20LINUX.MD#recebendo-entradas)
- [Instruções Condicionais](https://github.com/aldrinreis/MACETARIO-PESSOAL/blob/main/LINUX/PROGRAMA%C3%87%C3%83O%20LINUX.MD#instru%C3%A7%C3%B5es-condicionais)
- [Uso do Case](https://github.com/aldrinreis/MACETARIO-PESSOAL/blob/main/LINUX/PROGRAMA%C3%87%C3%83O%20LINUX.MD#uso-do-case)
- [Instruções de Repetição - FOR](https://github.com/aldrinreis/MACETARIO-PESSOAL/blob/main/LINUX/PROGRAMA%C3%87%C3%83O%20LINUX.MD#uso-do-for)
- [Instruções de Repetição - WHILE](https://github.com/aldrinreis/MACETARIO-PESSOAL/blob/main/LINUX/PROGRAMA%C3%87%C3%83O%20LINUX.MD#uso-do-while)
- [Instruções de Repetição - UNTIL](https://github.com/aldrinreis/MACETARIO-PESSOAL/blob/main/LINUX/PROGRAMA%C3%87%C3%83O%20LINUX.MD#uso-do-until)
- [Instruções de Repetição - BREAK e CONTINUE](https://github.com/aldrinreis/MACETARIO-PESSOAL/blob/main/LINUX/PROGRAMA%C3%87%C3%83O%20LINUX.MD#uso-do-continue-e-break)
- [Funções](https://github.com/aldrinreis/MACETARIO-PESSOAL/blob/main/LINUX/PROGRAMA%C3%87%C3%83O%20LINUX.MD#fun%C3%A7%C3%B5es)
- [Criando Logs e Enviando Emails](https://github.com/aldrinreis/MACETARIO-PESSOAL/blob/main/LINUX/PROGRAMA%C3%87%C3%83O%20LINUX.MD#criando-logs-e-enviando-emails)
- [Técnicas de Debug](https://github.com/aldrinreis/MACETARIO-PESSOAL/blob/main/LINUX/PROGRAMA%C3%87%C3%83O%20LINUX.MD#t%C3%A9cnicas-de-debug)

<hr>
<br><br>

> ### **Redirecionamentos de Entrada e Saída.**

- **```cat alunos.txt > alunos-temp.txt``** – Redireciona a saida para um novo arquivo.
- **```cat alunos.txt >> alunos-temp.txt``** – Concatena a saida no final do arquivo.<br>

- **Redirecionamento de erro** **```ls -l alunos.txte3 2>> alunos-temp.txt``** - Saída da Mensagem de erro
- **```ls -l alunos.txt3 >> log.out 2>> log-erro.out``** - Utilizano os dois em conjunto.
- **```ls -l alunos.txt3 >> log.out 2>>&1``** - Utilizano a saída no mesmo arquivo.<br>

- **```ls -l alunos.txttxt 2> /dev/null``** – Joga saida para lugar nenhum. <br>

- **Redirecionamento de entrada** **```tr 'a' 'Z' alunos.txt < alunos.txt``** - Comando para entrada.
<hr>
<br>
<br>
<br>
<br>

> ### **Variáveis no shell.**

- **```env|less```** ou **```set|less```**- Ver variáveis do sistema - O set ver as variaveis locais e exportadas e o env so as exportadas.
- **```echo $HOME```** - Referenciando variáveis. <br>

- **Declarando variável** **```VARIAVEL1=valor```** - sem espaço. **```echo $VARIAVEL1```**<br>
- **Exportando variável** **```export VARIAVEL1```** ou **```export VAR1=valor```**- Torna visível para os processos filhos.<br>

- **Variável Recebendo Comando** **```HORA=`date +%H` ```** - Comando dentro de crases.
- **Variável Recebendo Comando** **```HORA=$(date +%H) ```**

<hr>

- **Variáveis no código**
**```DATAHORA=$(date +%H:%M)```**<br>

**```echo "Exibir data e hora atual: $DATAHORA"```**

<hr>
<br>
<br>
<br>
<br>

> ### **Exit codes**

```echo $?``` - para o último comando.

No script usar o comando ```exit``` ou ```exit 10```


<hr>
<br>
<br>
<br>
<br>

> ### **Aspas no shell.**

- **```"" ou ''```** - Protegem o comando - **""** protege todos os caracteres exceto *$ ` /* as **''** protegem tudo
- **```\```** - Protege o próximo caractere

<hr>

> ### **Scripts**

- **Inicio** ```#!/bin/bash```<br>

- **PATH** ```PATH="$PATH:/home/ricardo/Cursos/ShellScript/Scripts"``` || **Para Ver os PATHS** ```echo $PATH```
- **PATH DEFINITIVO** ```vi ~/.profile```<br>

- **Comentárioss** ```#```

<hr>
<br>
<br>
<br>
<br>

> ### **Recebendo entradas**

#### Atraves do read

Pode ser usardo de duas formar ou usando ```read -p``` ou o echo seguido do read.<br>

```echo -n "informe o curso:" ```
```read CURSO```

Ex: ```read -p "informe seu curso: " CURSO```
Ex2: ```"O nome completo do aluno é: $(grep "$ALUNO" $ARQALUNOS)"```

echo "O nome completo do aluno é: $ALUNOCOMPLETO"

*read -s deixa caracteres ocultos*


#### Através de parâmetros.

```./script Parametro 1 ....```

```bash
#!/bin/bash
# $0 - Nome do Programa
# $# - Quantidade de Parâmetros
# $* - Todos os parâmetros inseridos
# $1-9 - Cada um dos parâmetros

echo "O script $0 recebeu $# parâmetros"

echo "Os parâmetros recebidos foram: $*"

echo ""
echo "Parâmetro \$1 = $1"
echo "Parâmetro \$2 = $2"
echo "Parâmetro \$3 = $3"
echo "Parâmetro \$4 = $4"
```
<hr>
<br>
<br>
<br>
<br>

> ### **Instruções Condicionais**

> #### **Uso DO IF**

```bash
if <comando-condição>
then
    comando 1
    comando 2
    comando 3
fi
```
```bash
if <comando-condição>
then
    comando 1
else
    comando 2
fi
```
```bash
if <comando-condição>
then
    comando 1
elif<comando-condição>
then    
    comando 2
else
    comando 3
fi
```
<br>

Comando test: Utilizado para criar condição
```test <expressão>```

![Testes Numéricos](/LINUX/CURSO%20LINUX/imagens/testevaloresnumericos.png)
<br>

![Testes Strings](/LINUX/CURSO%20LINUX/imagens/testandostrings.png)
<br>

![Teste de Arquivos](/LINUX/CURSO%20LINUX/imagens/testandoarquivos.png)
<br>

![Exemplo do TESTE 1](/LINUX/CURSO%20LINUX/imagens/exemplodetestes1.png)
<br>

Comando Teste pode ser usado tambem entre colchetes:

**Lembrar que é necessário colocar espaço enter os colchetes e as condições. Exemplo:** **```if [ "$HORA" -ge 6 -a "$HORA" -le 12 ]; then```**
<br>
<br>

![Exemplo do TESTE 2](/LINUX/CURSO%20LINUX/imagens/exemplodetestes2.png)
<br>
<br>

**EXEMPLOS**
<br>

![Exemplo IF 1](/LINUX/CURSO%20LINUX/imagens/exemploif1.png)
<br>

![Exemplo IF 2](/LINUX/CURSO%20LINUX/imagens/exemplodetestes2.png)
<br>

![Negação](/LINUX/CURSO%20LINUX/imagens/exemplonegacao.png)
<br>

![And](/LINUX/CURSO%20LINUX/imagens/exemploand.png)
<br>

![OR](/LINUX/CURSO%20LINUX/imagens/exemploou.png)
<br>

````bash
#!/bin/bash
USUARIO=$(grep "$1" /etc/passwd)

if [ -n "$USUARIO" ]
then
	echo "O usuário existe"
else
	echo "O usuário não existe"
fi
````
<hr>
<br>
<br>
<br>
<br>


> #### **Uso do Case**
<br>

![CASE](/LINUX/CURSO%20LINUX/imagens/casedefinicao.png)
<br>

![CASE2](/LINUX/CURSO%20LINUX/imagens/casedefinicao2.png)
<br>

![CASE REGEX](/LINUX/CURSO%20LINUX/imagens/caseregex.png)
<br>

````bash
#!/bin/bash

case "$1" in
	[0-9])
		echo "O parâmetro é um número"
		;;
	[A-Z])
		echo "O parâmetro é uma letra maiúscula"
		;;
	[a-z])
		echo "O parâmetro é uma letra minúscula"
		;;
	*)
		echo "O parâmetro é um caracter especial"
esac
````
<br>
<br>
<br>
<br>

**Exemplo de Menu com Case**

````bash
#!/bin/bash

# Exibição do Menu
clear
echo "Escolha uma Opção do Menu:"
echo
echo "1 - Adicionar"
echo "2 - Remover"
echo "3 - Alterar"
echo "q - sair"
echo
read -p "Opção: " opcao
echo

# Rotinas das Opções
case "$opcao" in
   1) 
	echo "Opcao 1 escolhida."
	echo "Iniciar operação de inclusão..."
	sleep 3
	;;
   2) 
	echo "Opcao 2 escolhida."
	echo "Iniciar operação de remoção..."
	sleep 3
	;;
   3) 
	echo "Opcao 3 escolhida."
	echo "Iniciar operação de alteração..."
	sleep 3
	;;
   q) 
	echo "Saindo..."
	sleep 3
	exit 0
	;;
   *) 
	echo "Opção Inválida"
	exit 2
	;;
esac
````
<br>
<br>
<br>
<br>


> ### **Instruçõs de LOOP - Repetição**

> #### **Uso do FOR**

![FOR Definicao](/LINUX/CURSO%20LINUX/imagens/fordefinicao.png)

<br>

```bash
	for numero in 1 2 3 4 5
	do
		echo "O Número atual é: $numero"
	done
```
<br>

![FOR Definicao 1](/LINUX/CURSO%20LINUX/imagens/fordefinicao1.png)

<br>

![FOR Definicao 2](/LINUX/CURSO%20LINUX/imagens/fordefinicao2.png)
<br>

![FOR Definicao 3](/LINUX/CURSO%20LINUX/imagens/fordefinicao3.png)
<br>

![FOR Definicao 4](/LINUX/CURSO%20LINUX/imagens/fordefinicao4.png)
<br>

![FOR Definicao 5](/LINUX/CURSO%20LINUX/imagens/fordefinicao5.png)
<br>

![FOR Definicao 6](/LINUX/CURSO%20LINUX/imagens/fordefinicao6.png)
<br>

![FOR Definicao 7](/LINUX/CURSO%20LINUX/imagens/fordefinicao7.png)
<br>

```bash
	for ((i=5 ;  i <= 20; i++))
	do
		echo "O numero é $i"
	done
```
<br>

```bash
	for variavel in 1 2 3 4 5;do echo "O valor atual é $variavel"; done
```
<br>

![For COM IF](/LINUX/CURSO%20LINUX/imagens/forcomif.png)
<br>

- **IFS - Separador interno**
	Espaço, tab e quebra de linha são IFS (Internal Field Separator)

	**```set | grep IFS```**

![IFS separator](/LINUX/CURSO%20LINUX/imagens/IFSeparator.png)

<br>
<br>
<br>
<br>

> #### **Uso do WHILE**
<br>

- **Condições de [Teste usados no IF](https://github.com/aldrinreis/MACETARIO-PESSOAL/blob/main/LINUX/PROGRAMA%C3%87%C3%83O%20LINUX.MD#uso-do-if) podem ser usados no while.**

![WHILE DEFNIÇÃO 1](/LINUX/CURSO%20LINUX/imagens/while1.png)
<br>

![WHILE DEFNIÇÃO 2](/LINUX/CURSO%20LINUX/imagens/while2.png)
<br>

![WHILE DEFNIÇÃO 3](/LINUX/CURSO%20LINUX/imagens/while3.png)
<br>

![WHILE DEFNIÇÃO 4](/LINUX/CURSO%20LINUX/imagens/while4.png)
<br>

```bash
#!/bin/bash

clear

read -p "Informe o limite de processos: " MAXIMO

while [ $(ps axu| wc -l) -le $MAXIMO ]
do
        echo "Tudo OK"
        echo "Processos Atuais: $(ps axu|wc -l)"
        sleep 3
        echo
done

echo "Limite de Processos Excedido"
echo "Por favor verifique o Sistema"
```
<br>
<br>
<br>
<br>

> #### **Uso do UNTIL**

- **Oposto do while**
- *While executa uma rotina enquando algo seja verdadeio, until executa até que seja verdadeiro.*

<br>

![UNTIL DEFINICAO 1](/LINUX/CURSO%20LINUX/imagens/unit1.png)
<br>

![UNTIL DEFINICAO 2](/LINUX/CURSO%20LINUX/imagens/until2.png)
<br>

![UNTIL DEFINICAO 3](/LINUX/CURSO%20LINUX/imagens/until3.png)
<br>

![UNTIL DEFINICAO 4](/LINUX/CURSO%20LINUX/imagens/until4.png)
<br>

```bash
#!/bin/bash

clear

until ps axu|grep firefox |grep -v grep > /dev/null
do
	echo Inicie o Firefox
	sleep 3
	echo
done
echo Firefox Iniciado
echo PID: $(pgrep firefox)

```
<br>
<br>
<br>
<br>

> #### **Uso do CONTINUE E BREAK**

- **BREAK - utilizado para sair do loop**
<br>

![Break](/LINUX/CURSO%20LINUX/imagens/break.png)
<br>

- **CONTINUE - utilizado para voltar ao início do loop**
<br>

![Continue](/LINUX/CURSO%20LINUX/imagens/continue.png)


<br>
<br>
<br>
<br>

> #### **Funções**

<br>
<br>

![FUNCAO SINTAXE](/LINUX/CURSO%20LINUX/imagens/funcao1.png)

<br>

![FUNCAO CHAMADA](/LINUX/CURSO%20LINUX/imagens/funcao2.png)

<br>

![FUNCAO VARIAVEL](/LINUX/CURSO%20LINUX/imagens/funcao3.png)
<br>

![FUNCAO RETURNO CODE](/LINUX/CURSO%20LINUX/imagens/funcao4.png)
<br>


```bash
#!/bin/bash

maiuscula () {
local VAR1=$(echo $1 | tr a-z A-Z)
echo $VAR1
}

maiuscula script


```
<br>

```bash
#!/bin/bash

ler () {
	read -p "Informe o Nome: " NOME
	read -p "Informe o Sobrenome: " SOBRENOME
	return 10
}

ler
RETURN_CODE=$?
echo
echo $NOME $SOBRENOME

```
<br>

```bash

adiciona () {
	soma=$(expr $1 + $2)
	echo $soma
}

adiciona 10 20

echo $1 $2

```
<br>
<br>
<br>
<br>


> #### **Criando Logs e Enviando Emails**
<br>

> ##### **Modo 1 - Redirecionamento**
<br>

- **```cat alunos.txt > alunos-temp.txt``** – Redireciona a saida para um novo arquivo.
- **```cat alunos.txt >> alunos-temp.txt``** – Concatena a saida no final do arquivo.<br>

- **Redirecionamento de erro** **```ls -l alunos.txte3 2>> alunos-temp.txt``** - Saída da Mensagem de erro
- **```ls -l alunos.txt3 >> log.out 2>> log-erro.out``** - Utilizano os dois em conjunto.
- **```ls -l alunos.txt3 >> log.out 2>>&1``** - Utilizano a saída no mesmo arquivo.<br>

- **```ls -l alunos.txttxt 2> /dev/null``** – Joga saida para lugar nenhum. <br>
<br>

**Para jogar a saida na tela e para um arquivo de log**

```./PrimeiroScript.sh | tee -a log.out```
<br>

No Script
<br>

```bash
#!/bin/bash

DATAHORA=$(date +%H:%M)
ARQALUNOS="/home/ricardo/Cursos/ShellScript/arquivos/alunos2.txt"

LOG="$HOME/Cursos/ShellScript/Scripts/log_interno.out"
exec 1>> >(tee -a "$LOG")
exec 2>&1

# Funcao de leitura da data e hora

echo "$(date) - Iniciando o Script..." >> $LOG

clear
echo "===== Meu Primeiro Script ======="
echo 
echo "Exibir data e hora atual: $DATAHORA"

# Area de leitura da lista de alunos
echo "================================="
echo "Listagem dos Alunos: "
# sort $ARQALUNOS | tea -a $LOG
sort $ARQALUNOS 

DATAHORA=$(date +%H)
echo "================================="
echo "Nova Hora Atual: $DATAHORA"

echo "$(date) - Fim do Script..." >> $LOG


``` 
<br>
<br>
<br>
<br>

> ##### **Modo 2 - Uso do Exec**

```bash
exec 1>> >(tee -a "$LOG") ou 
exec 1>> $LOG
exec 2>&1
```
<br>
<br>
<br>
<br>

> ##### **Modo 3 - Uso do logger e ryslog**

```bash
echo "Iniciando o Script..." | logger -p local0.warn -t [$0] 
$logger -p local0.warn -t [$0] "Iniciando o Script"
```
<br>

```bash
#!/bin/bash

DATAHORA=$(date +%H:%M)
ARQALUNOS="/home/ricardo/Cursos/ShellScript/arquivos/alunos2.txt"

# Funcao de leitura da data e hora

echo "Iniciando o Script..." | logger -p local0.warn -t [$0] 
$logger -p local0.warn -t [$0] "Iniciando o Script"

clear
echo "===== Meu Primeiro Script ======="
echo 
echo "Exibir data e hora atual: $DATAHORA"

# Area de leitura da lista de alunos
echo "================================="
echo "Listagem dos Alunos: "
sort $ARQALUNOS | tee -a >(logger -p local0.warn -t [$0]) 

DATAHORA=$(date +%H)
echo "================================="
echo "Nova Hora Atual: $DATAHORA"

#echo "$(date) - Fim do Script..." >> $LOG
logger -p local0.warn -t [$0] "Fim do Script"


echo "Script Executado com Sucesso" |mail -s "Relatorio de Execucao do $0" ricardo
```

<br>
<br>
<br>
<br>



> ##### **Enviado emails - comando ```mail```**

<br>

- **[sendEmail - Alternativa para servidores externos](https://github.com/mogaal/sendemail)**
- **[Como configurar o sendEmail](https://www.vivaolinux.com.br/artigo/Enviando-emails-pelo-terminal)**

Instalar o **bsd-mailx**

```bash
DATAHORA=$(date +%H:%M)
ARQALUNOS="/home/ricardo/Cursos/ShellScript/arquivos/alunos2.txt"
ADMIN=ricardo@linuxsemfronteiras.com.br

# Funcao de leitura da data e hora

CONTEUDO="$(date): Iniciando o Script\n"
#echo "$(date): Iniciando o Script" >> /tmp/msg_temp 

clear
echo "===== Meu Primeiro Script ======="
echo 
echo "Exibir data e hora atual: $DATAHORA"
sleep 5
# Area de leitura da lista de alunos
echo "================================="
echo "Listagem dos Alunos: "
sort $ARQALUNOS

DATAHORA=$(date +%H)
echo "================================="
echo "Nova Hora Atual: $DATAHORA"

CONTEUDO="$CONTEUDO$(date): Fim do Script\n"

#echo "$(date): Script Finalizado" >> /tmp/msg_temp
echo -e "$CONTEUDO" |mail -s "Relatorio do Script $0" $ADMIN 

#mail -s "Relatorio de Execucao do $0" $ADMIN < /tmp/msg_temp

#rm -f /tmp/msg_temp


```

<br>
<br>
<br>
<br>


> #### **Técnicas de Debug**
<br>

> ##### **bash e set**

```bash -n``` Verificar a sintaxe de um script em Bash sem realmente executá-lo. Ele verifica o script em busca de erros de sintaxe e é útil para encontrar problemas antes de rodar o script.
<br>

```bash -x``` ativa o modo de depuração, exibindo cada comando e seus argumentos conforme são executados. É útil para entender o fluxo de execução de um script e identificar onde ele pode estar falhando.
<br>

```bash -v```  exibe cada linha do script antes de ser executada, mas não mostra a expansão dos comandos. Isso é útil para ver a estrutura do script à medida que ele é processado.

```bash -xv``` combina as funcionalidades dos modos -x e -v, fornecendo uma visão detalhada do script Bash conforme ele é processado e executado. Essa combinação é útil para depuração completa e análise de scripts complexos.

**SET**

O comando set é usado dentro de um script Bash para controlar a depuração durante a execução. Usar set -x ativa o modo de depuração (similar a bash -x), enquanto set +x desativa o modo de depuração.

```bash
#!/bin/bash

echo "Iniciando script"

set -x  # Ativa a depuração
for i in {1..3}; do
    echo "Contagem: $i"
done
set +x  # Desativa a depuração

echo "Script concluído"

```

> ##### **Passo a Passo**


```bash
#!/bin/bash

echo "Iniciando script"

set -xv   
trap read DEBUG #começa a execução passo a passo

set +xv  
trap "" DEBUG # finaliza

```

