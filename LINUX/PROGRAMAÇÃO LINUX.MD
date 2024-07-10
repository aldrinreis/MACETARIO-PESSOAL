#### Redirecionamentos de Entrada e Saída.

- **```cat alunos.txt > alunos-temp.txt``** – Redireciona a saida para um novo arquivo.
- **```cat alunos.txt >> alunos-temp.txt``** – Concatena a saida no final do arquivo.<br>

- **Redirecionamento de erro** **```ls -l alunos.txte3 2>> alunos-temp.txt``** - Saída da Mensagem de erro
- **```ls -l alunos.txt3 >> log.out 2>> log-erro.out``** - Utilizano os dois em conjunto.
- **```ls -l alunos.txt3 >> log.out 2>>&1``** - Utilizano a saída no mesmo arquivo.<br>

- **```ls -l alunos.txttxt 2> /dev/null``** – Joga saida para lugar nenhum. <br>

- **Redirecionamento de entrada** **```tr 'a' 'Z' alunos.txt < alunos.txt``** - Comando para entrada.<hr>

#### Variáveis no shell.

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


#### Exit codes

```echo $?``` - para o último comando.

No script usar o comando ```exit``` ou ```exit 10```




#### Aspas no shell.

- **```"" ou ''```** - Protegem o comando - **""** protege todos os caracteres exceto *$ ` /* as **''** protegem tudo
- **```\```** - Protege o próximo caractere


> #### Scripts

- **Inicio** ```#!/bin/bash```<br>

- **PATH** ```PATH="$PATH:/home/ricardo/Cursos/ShellScript/Scripts"``` || **Para Ver os PATHS** ```echo $PATH```
- **PATH DEFINITIVO** ```vi ~/.profile```<br>

- **Comentárioss** ```#```


#### Recebendo entradas

###### Atraves do read

Pode ser usardo de duas formar ou usando ```read -p``` ou o echo seguido do read.<br>

```echo -n "informe o curso:" ```
```read CURSO```

Ex: ```read -p "informe seu curso: " CURSO```
Ex2: ```"O nome completo do aluno é: $(grep "$ALUNO" $ARQALUNOS)"```

echo "O nome completo do aluno é: $ALUNOCOMPLETO"

*read -s deixa caracteres ocultos*


###### Através de parâmetros.

```./script Parametro 1 ....```

```
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

#### Instruções Condicionais

###### Uso DO IF

```
if <comando-condição>
then
    comando 1
    comando 2
    comando 3
fi
```
```
if <comando-condição>
then
    comando 1
else
    comando 2
fi
```
```
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

![alt text](image.png)
<br>

![alt text](image-1.png)
<br>

![alt text](image-2.png)
<br>

![alt text](image-3.png)
<br>

Comando Teste pode ser usado tambem entre colchetes:
<br>
<br>

![alt text](image-4.png)
<br>
<br>

**EXEMPLOS**
![alt text](image-5.png)
<br>

![alt text](image-6.png)
<br>

![Negação](image-7.png)
<br>

![And](image-8.png)
<br>

![OR](image-9.png)
<br>

````
#!/bin/bash
USUARIO=$(grep "$1" /etc/passwd)

if [ -n "$USUARIO" ]
then
	echo "O usuário existe"
else
	echo "O usuário não existe"
fi
````

###### Uso do Case
<br>

![alt text](image-10.png)
<br>

![alt text](image-11.png)
<br>

![alt text](image-12.png)
<br>

````
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

**Exemplo de Menu com Case**

````
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


