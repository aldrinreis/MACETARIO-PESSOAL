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
pjsip show **


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

<br>

> ### **Conceitos do PJSIP**

TIPOS DE CONTEXTO PJSIP:

- **endpoint:** Representa um terminal SIP: pode ser um ramal,um softphone, uma operadora, etc.
- **aor:** Significa Address of Record. Define onde e como contatar o endpoint (ex: IP, host, quantidade de Contatos).
- **auth:** Define credenciais (usuário e senha) para autenticação SIP.
- **registration:** Usado quando o Asterisk precisa se registrar em outro servidor SIP (como numa operadora).
- **transport:** Define as opções de transporte: UDP, TCP, TLS, WebSocket, etc.
- **identify:** Liga um IP remoto a um endpoint (para chamadas entrantes).
- **global:** Parâmetros globais da stack PJSIP.
- **system:** É usado para ajustar performance do core do PJSIP.
- **acl:** É utilizado para regra gerais de entrada de trafego no Asterisk, independentemente da camada.
- **domain_alias:** Ele faz um alias (um link) entre 2 dominios e pode ser usado para referenciar em buscas do AoR.

<br>

> ### **Pjsip Ramais**

Exemplo:

```bash
[global]
type=global
user_agent=Asterisk
endpoint_identifier_order=username,ip,anonymous

[transport-udp-nat]
type=transport
protocol=udp
bind=0.0.0.0:5060

[1000]
type=auth
auth_type=userpass
username=1000
password=123123

[1001]
type=auth
auth_type=userpass
username=1001
password=123123

[1000]
type=aor
max_contacts=2

[1001]
type=aor
max_contacts=2 # Quantidade Máxima de "registros"

[1000]
type=endpoint
aors=1000
auth=1000
context=ramais
disallow=all
allow=alaw,ulaw

rewrite_contact=yes # Permite que o cabeçalho sip seja reescrito.

rtp_symmetric=yes # Quando ativado, o Asterisk ignora o IP/porta informados no SDP do outro lado e passa a enviar o RTP exatamente para o mesmo IP e porta de onde ele recebeu o áudio.

force_rport=yes # força porta randômica “Ignore a porta SIP anunciada pelo endpoint e responda para a mesma IP/porta de onde o SIP veio.”

direct_media=no #“Não tire o Asterisk do caminho do áudio. Todo o RTP passa por ele.”

transport=transport-udp-nat

[1001]
type=endpoint
aors=1001
auth=1001
context=ramais
disallow=all
allow=alaw,ulaw
rewrite_contact=yes
rtp_symmetric=yes
force_rport=yes
direct_media=no
transport=transport-udp-nat

```
<br><br>

> ### **PJsip Troncos**

1. Tronco por IP

```bash
[global]
type=global
user_agent=Asterisk
endpoint_identifier_order=username,ip,anonymous

[transport-udp-nat]
type=transport
protocol=udp
bind=0.0.0.0:5060

[1000]
type=auth
auth_type=userpass
username=1000
password=123123

[1001]
type=auth
auth_type=userpass
username=1001
password=123123

[1000]
type=aor
max_contacts=2

[1001]
type=aor
max_contacts=2

[1000]
type=endpoint
aors=1000
auth=1000
context=ramais
disallow=all
allow=alaw,ulaw
rewrite_contact=yes
rtp_symmetric=yes
force_rport=yes
direct_media=no
transport=transport-udp-nat

[1001]
type=endpoint
aors=1001
auth=1001
context=ramais
disallow=all
allow=alaw,ulaw
rewrite_contact=yes
rtp_symmetric=yes
force_rport=yes
direct_media=no
transport=transport-udp-nat

#############

[operadoravoip]
type=endpoint
context=incoming
disallow=all
allow=alaw,ulaw
transport=transport-udp-nat
aors=operadoravoip
direct_media=no
force_rport=yes

[operadoravoip]
type=aor
contact=sip:sip.operadora.net:5060

[operadoravoip]
type=identify
endpoint=operadoravoip
match=sip.operadora.net
```
<br>

2. Tronco por Usuário e Senha:

```bash
# Tronco por usuario e senha
[operadoravoip]
type=endpoint
context=incoming
disallow=all
allow=alaw,ulaw
transport=transport-udp-nat
aors=operadoravoip
direct_media=no
force_rport=yes
####
auth=operadoravoip #autenticação no recebimento
outbound_auth=operadoravoip #autenticação na saída
from_user=cliente

[operadoravoip]
type=aor
#
contact=sip:cliente@sip.operadora.net:5060

[operadoravoip]
type=identify
endpoint=operadoravoip
match=sip.operadora.net

################################
[operadoravoip]
type=auth
auth_type=userpass
username=cliente
password=FHn8PWQU
```
<br>

3. Tronco por usuário,senha e registro.

```bash


[operadoravoip]
type=endpoint
context=incoming
disallow=all
allow=alaw,ulaw
transport=transport-udp-nat
aors=operadoravoip
direct_media=no
force_rport=yes
auth=operadoravoip
outbound_auth=operadoravoip
from_user=cliente

[operadoravoip]
type=auth
auth_type=userpass
username=cliente
password=uLG6TtBF

[operadoravoip]
type=aor
contact=sip:cliente@sip.operadora.net:5060

[operadoravoip]
type=identify
endpoint=operadoravoip
match=sip.operadora.net

#####################################
[operadoravoip]
type=registration
transport=transport-udp-nat
outbound_auth=operadoravoip
server_uri=sip:IP_DO_SERVER:5060
client_uri=sip:cliente@IP_DO_SERVER:5060
retry_interval=60
forbidden_retry_interval=600
expiration=3600
endpoint=operadoravoip
line=yes

```
<br>
<br>

<hr>

> ### **Legacy-Chan_sip-Ramais**

