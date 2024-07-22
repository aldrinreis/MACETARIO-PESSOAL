> **Comandos**
<br>

- Mostrar kernel: <br>

```echo $0```
``````echo $SHELL``````
```tail /etc/passwd```
<br>


> ##### **Permissão Arquivos/Diretórios :**

- **```chown```** – Modifica os donos de arquivos e diretórios
- **```chmod```** – Modifica as permissões dos arquivos e diretórios
- **```umask```** – Visualiza e muda a máscara padrão de permissões
<br>

> ##### **Administração Arquivos :**

- **```sort```** – Ordena um arquivo alfabeticamente
- **```uniq```** – Elimina linhas repetidas
- **```grep```** – **-r recursirvo** Procura texto e expressões dentro de um arquivo/diretório/comando - *Aceita Expressões Regulares* 
- **```egrep```** – Aceita expressões regulares simples.
- **```egrep```** – Não aceita expressões regulares.
- **```paste```** – Combina arquivos em um só
- **```cut```** – Separa um arquivo por campos e imprime apenas partes especificadas
- **```tr```** – Transforma caracteres  ```tr '[:lower:]' '[:upper:]')```
- **```sed```** – Filtragem e Transformação de Conteúdo
- **```find```** – Procura arquivos ```find ./ name alunos* -exec ls -l {} \;```
- **```ln```** – Cria links entre arquivos
- **```head```**  **```tail```** – Mostra o começo e fim de um arquivo
- **```more```** **```less```** – Visualiza arquivos por páginas
- **```file```** – Indica o tipo de arquivo
- **```touch```** – Muda timestamps
- **```cat```** - Imprime arquivo na tela
- **```tac```** - Imprime arquivo na tela debaixo pra cima
- **```diff```** - Compara arquivos e diretórios **```dif -r```**
- **```seq```** - Realiza sequencias
- **```expr```** - Realiza contas
- **```wc```** - Conta linhas palavras e caracteres <br>

Usar um comando como entrada e outro ex: ```tail -n5 aluno.txt|wc -w```
<br>

> ##### **Administração S.O :**

- **```pwd```** – Exibe o diretório atual
- **```cd```** – Navegando entre diretórios
- **```cd ..``` ou ```cd ../../```** - Voltar Diretórios
- **```cd -```** - Voltar pro Diretório Anterior
- **```ls```** – Listar arquivos
- **```mkdir```** – Cria um diretório ou **```mkdir -p```** para criar a árvore completa
- **```rmdir```** – Remove um diretório vazio
- **```cp```** – Cópia de arquivos e diretórios
- **```mv```** – Move ou renomeia arquivos e diretórios
- **```rm```** – Remove arquivos e diretórios
- **```sleep```** - Espera
- **```whatis```** - Exibe uma descrição breve do comando
- **```which```** - É utilizado para localizar o caminho completo de um executável 
<br>

- **Execução de comandos sequenciais ```;``` ou ```&&``` ou ```||```** Usando o && caso algum comando falhe o próximo não é executado. O || só executa o próximo se o primeiro tiver falhado.


<br>

<br>

> #### **File Globing** e **REGEX**

- **File Globing**

- **```ls -l aula[12]```** arquivos terminados com 1 ou 2 **||** **```ls -l {aula,AULA}```** lista aquivos aula e AULA
- **```ls -l aula1*```** Pode ou não  ter um caractere após o 1
- **```ls -l aula1?```** Exige  ter um caractere após o 1 **```ls -l aula1??```** - para dois caracteres.
<br>

- **REGEX**

- **```egrep "[Ll]inux" texto.txt```** - [Ll]inux=Linux, linux
- **```egrep "b[aei]g" texto.txt```** - b[aei]g = bag beg big
- **```egrep "b[a-o]g" texto.txt```** - b[a-o]g = bag beg big bog .....
- **```egrep "^Linux" texto.txt```** - Primeira palavra da linha seja Linux
- **```egrep "Linux$" texto.txt```** - Indica o final da linha. O caractere deve estar do lado direito da expressão.
- **```egrep -v "^$" texto.txt```** - **Não mostra linhas em branco**
- **```egrep "b[a-i]g*" texto.txt```** - o *g* pode não existir ou existir  varias vezes.
- **```egrep "b[a-i]g+" texto.txt```** - Uma ou várias ocorrências do caractere anterior.
- **```egrep "b[a-i]g?" texto.txt```** - Nenhuma ou apenas uma ocorrência do caractere anterior.
- **```egrep "o.Linux" texto.txt```** - Indica qualquer caractere único




> ##### **Dados S.O/Hardware :**

- **```dmesg```** – Mensagens de inicialização
- **```id```** – Mostra o usuário atual
- **```man```** – Ajuda sobre algum comando, assunto ou arquivo de configuração
- **```info```** – Ajuda sobre algum comando, assunto ou arquivo de configuração
- **```date```** – Mostra a data e hora do sistema ```date +%H```
- **```cal```** – Mostra um calendário amigável
- **```df```** – Mostra informações de espaço em disco
- **```du```** – Mostra espaço em disco usado por diretórios
- **```fdisk```** **```sfdisk```** – Informações sobre partições
- **```hdparm```** – Informações detalhadas sobre HDs
- **```free```** – Informações sobre memória
- **```swapon```** – Informações sobre memória virtual (swap)
- **```cat /proc/cpuinfo```** – Informações sobre o processador
- **```uname```** – Informações de versão do kernel, arquitetura e outros
- **```lspci```** – Mostra informações sobre dispositivos PCI
- **```lsusb```** – Mostra informações sobre dispositivos USB
<br>

> ##### **Dados Processos :**

- **```ps```** – Listar processos
- **```top```** – Lista processos em tempo real
- **```pstree```** – Mostra processos em forma de árvore hierárquica
- **```kill```** **```killall```** – Envia um sinal ao processo (MATA!)
- **```Prioridades de Processos```** – Como os comandos podem ter prioridades no sistema
- **```nice```** **```renice```** – Configura prioridades de CPU de um comando ou processo
- **```lsof```** – Listar arquivos abertos por processos
- **```ps axo lstart,pid,args```** - Lista processos que morreram recentemente
- **```echo `ps axo pmem|sed 's/,/./g'|awk '{sum+=$1} END {print sum}'` % ``** - Consumo da soma dos processos







> **Ubuntu:**
* Listar pacotes: ```sudo dpkg  -l | grep (nome_Pacote)```

* Instalar pacote: ```sudo apt-get install (nome_Pacote)```







<hr>
<br><br><br><br>



