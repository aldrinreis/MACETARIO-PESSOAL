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

![alt text](image.png)
<br>

![alt text](image-1.png)
<br>

![alt text](image-2.png)
<br>

![alt text](image-3.png)
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

![alt text](image-4.png)
<br>

![alt text](image-5.png)
<br>

![alt text](image-6.png)
<br>

![alt text](image-7.png)
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

![alt text](image-8.png)
<br>

- **CONTINUE - utilizado para voltar ao início do loop**
<br>

![alt text](image-9.png)