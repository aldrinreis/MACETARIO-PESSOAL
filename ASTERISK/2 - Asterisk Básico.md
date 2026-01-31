# **Asterisk Básico**
<br>

> ### **Estrutura de diretórios**

```sql
1 - /etc/asterisk - Fala do diretorio de configuração do asterisk e dos samples


2- /usr/lib/asterisk - diretorio de modulos, /*raramente se mexe, apenas qdo add modulos - ex: add codec mas é bom pra ver se o modulo de existe*/

3- /var/log/asterisk - pasta de logs

4 /var/lib/asterisk/

4.1 - /var/lib/asterisk/agi-bin - scripts de agi - asterisk

5 - /var/lib/asterisk/sounds - arquivos de audios /* bom colocar os audios da ura aqui como boa pratica*/

6 - /var/spool/asterisk

monitor -> arquivo de gravação de chamadas
outgoing -> diretorio de disparo callfile
voicemail -> arquivo com as mensagens da caixa postal
recording -> gravação de arquivos com o record de forma dinamico


7 - Como mudar os diretorios
/etc/asterisk/asterisk.conf

```
<br>
<br>

> ### **Cli do Asterisk**

```txt
O asterisk é um serviço que roda em background e voce pode acessar a console desse serviço

Existem duas formas:

asterisk -r ou rasterisk

ctrl+c nao mata, exceto se voce nao subir como background

Como subir na mão: asterisk -vvvvvcf

mostrar o auto-complete

core show channels

core show uptime

module reload 

Atalhos:
sip reload
queue reload

reload reinicia todos


Comandos mais usados:
core show channels
core show channel
core show uptime
core set verbose X
dialplan show
sip show peers
pjsip show *


```

<br>

> ### **Canais do asterisk**

![alt text](image.png)
<br>

> ### **Contexto de Configuração**

Os blocos de configurações no Asterisk tem uma particularidade que é sempre iniciar com colchetes:

Um contexto termina quando o outro contexto inicia:

```sql
[contextodeconfi]
info1=1
info2=2

[contexto1]
...configs do contexto1...
[contexto2]
...configs do contexto2...
```

Ou seja, todo bloco de configuração pode ser denominado um contexto de configuração e o que vai mudar de um caso para o outro é o conteúdo do contexto.

