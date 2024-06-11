#### Redirecionamentos de Entrada e Saída.

- **```cat alunos.txt > alunos-temp.txt``** – Redireciona a saida para um novo arquivo.
- **```cat alunos.txt >> alunos-temp.txt``** – Concatena a saida no final do arquivo.<br>

- **Redirecionamento de erro** **```ls -l alunos.txte3 2>> alunos-temp.txt``** - Saída da Mensagem de erro
- **```ls -l alunos.txt3 >> log.out 2>> log-erro.out``** - Utilizano os dois em conjunto.
- **```ls -l alunos.txt3 >> log.out 2>>&1``** - Utilizano a saída no mesmo arquivo.<br>

- **```ls -l alunos.txttxt 2> /dev/null``** – Joga saida para lugar nenhum. <br>

- **Redirecionamento de entrada** **```tr 'a' 'Z' alunos.txt < alunos.txt``** - Comando para entrada.

