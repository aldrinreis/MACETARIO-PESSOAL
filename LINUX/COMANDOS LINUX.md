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
- **```grep```** – Procura texto e expressões dentro de um arquivo/diretório/comando
- **```paste```** – Combina arquivos em um só
- **```cut```** – Separa um arquivo por campos e imprime apenas partes especificadas
- **```tr```** – Transforma caracteres
- **```sed```** – Filtragem e Transformação de Conteúdo
- **```find```** – Procura arquivos
- **```ln```** – Cria links entre arquivos
- **```head```**  **```tail```** – Mostra o começo e fim de um arquivo
- **```more```** **```less```** – Visualiza arquivos por páginas
- **```file```** – Indica o tipo de arquivo
- **```touch```** – Muda timestamps
- **```cat```** - Imprime arquivo na tela
- **```tac```** - Imprime arquivo na tela debaixo pra cima
- **```wc``** - Conta linhas palavras e caracteres <br>

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
- **```sleep``** - Espera


<br>


> ##### **Dados S.O/Hardware :**

- **```dmesg```** – Mensagens de inicialização
- **```id```** – Mostra o usuário atual
- **```man```** – Ajuda sobre algum comando, assunto ou arquivo de configuração
- **```info```** – Ajuda sobre algum comando, assunto ou arquivo de configuração
- **```date```** – Mostra a data e hora do sistema
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



> ## **Comandos VI** 

> _**( Realize um backup do arquivo antes de Editar ) :**_

<br>

> ##### **Inserção de caracteres :**

- **```i```** - insere texto antes do caracter atual.
- **```I```** - insere texto no início da linha atual.
- **```a```** - insere texto após o caracter atual.
- **```A```** - insere texto no final da linha atual.
- **```o```** - insere texto no início da próxima linha (inserindo uma nova linha).
- **```O ```**- insere texto no início da linha anterior (inserindo uma nova linha).
- **```U```** - desfaz as alterações realizadas após ter salvo o texto.
- **OBS:** Para sair do modo de inserção de caracteres, digite **```ESC```**.

<br>

> ##### **Apagar caracteres:**

- **```DEL```** - deleta a letra anterior ao cursor (depende da configuração).
- **```x```** - deleta a letra do cursor
- **```nx```** - deleta as próximas n letras
- **```dw```** - deleta o restante da palavra atual
- **```ndw```** - deleta as n próximas palavras
- **```u```** - undelete (restaura o que foi apagado por último ou apaga o que foi inserido por último).
- **```dd```** - deleta a linha atual
- **```ndd```** - deleta n linhas a partir da atual
<br>

> ##### **Substituição de caracteres:**

- **```s```** - substitui a letra atual (e entra no modo de inserção).
- **```S```** - substitui a linha atual (e entra no modo de inserção).
- **```r```** - substitui a letra atual (não entra no modo de inserção).
- **```R```** - entra no modo de substituição (sai com <ESC>).
- **```~```** - substitui maiúsculo/minúsculo.
- **```.```** - repete o último comando.
<br>

> ##### **Movimentação de cursor :**

(em algumas situações as setas funcionam):
- **```j```** - uma linha para baixo
- **```k```** - uma linha para cima
- **```h```** - um caracter para a esquerda
- **```l```** - um caracter para a direita
- **```b```** - volta para o início da palavra.
- **```w```** - adianta para a próxima palavra.
- **```0```** - início da linha
- **```$```** - fim da linha
- **```: numb```** - vai para a linha de número numb.
- **```numb + G```** - vai para a linha de número igual a numb.
- **```nG```** - vai para a linha n (0G ou G vai para a ultima linha).
- **```%```** - usado em parênteses para achar o par.
- **```+n```** - vai + n linhas para baixo.
- **```-n```** - vai n linhas para cima.
<br>

> ##### **Busca de palavras :**

- **```/palavra```** - procura palavra a partir da atual.
- **```/palavra1\|palavra2```** - filtro para duas Strings
- **```?palavra```** - procura palavra a partir da atual (voltando para o início do arquivo).
- **```n```** - procura próxima ocorrência (na mesma direção de busca).
- **```#```** - destaca todas as ocorrências iguais a palavra onde o cursor esta posicionado.
<br>

> ##### **Operações com buffers :**

- **```yy```** - Copia a linha inteira
- **```nyy```** - coloca n linhas no buffer (copiar).
- **```nY```** - coloca n linhas no buffer (copiar).
- **```ndd```** - deleta as n linhas (a partir da atual) e coloca no buffer (copiar).
- **```p```** - retira o conteúdo do buffer (colar) e coloca após a linha atual.
- **```P```** - retira o conteúdo do buffer (colar) e coloca antes da linha atual.
<br>

> ##### **Operações de bloco :**

- **```ml```** - marca a linha l (mx marca a linha x, etc usando o alfabeto).
- **```a```** - vai para a linha marcada a.

_**Para ler ou escrever o arquivo (ou parte dele) usa-se os comandos:**_

- **```:r```** arquivo - ler o arquivo para dentro do arquivo atual, a partir do local atual.
- **```:w```** - salva alterações
- **```:w```** abc - Grava arquivo com o nome 'abc'
- **```:q```** - sai sem modificar o arquivo (se foi alterado tem que usar :q!).
- **```:wq```** - sai, salvando o arquivo editado.
- **```ZZ```**- sai, salvando o arquivo editado.
- **```:'a,'b[operação]```** - realiza a operação no bloco contido entre as marcas a e b.
- **```:d```** - deleta a linha atual (útil como operação de blocos).
- **```:1,10 comando```** - executa o comando da linha 1 até a linha 10.
- **```>>```** - movimenta a linha para a direita.
- **```<<```** - movimenta a linha para a esquerda.
- **```:%s/string1/string2/```** - substitui o string1 por string2

<br>
<hr>
