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

#### Aspas no shell.

- **```"" ou ''```** - Protegem o comando - **""** protege todos os caracteres exceto *$ ` /* as **''** protegem tudo
- **```\```** - Protege o próximo caractere


> #### Scripts

- **Inicio** ```#!/bin/bash```<br>

- **PATH** ```PATH="$PATH:/home/ricardo/Cursos/ShellScript/Scripts"``` || **Para Ver os PATHS** ```echo $PATH```
- **PATH DEFINITIVO** ```vi ~/.profile```<br>

- **Comentárioss** ```#```