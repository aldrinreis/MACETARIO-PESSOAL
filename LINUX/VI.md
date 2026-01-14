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
