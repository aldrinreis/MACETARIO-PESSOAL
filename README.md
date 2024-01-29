# Troca de SSD FXS

<br>

**Procedimento realizado no [RAC 42086/2023](https://intranet.digitro.com.br/sac/sac-rac.php3?pCD_RAC=42086&pCD_ANO=2023).**


**Ainda na Dígitro, quando o novo SSD é disponibilizado para análise pela GFA, é preciso:**

<br>

1. **Restaurar o backup via conf (conf > 5 > 9 > caminhoDoBackup).**

<br>

2. **Nesse caso foi preciso criar o diretório sirco em /axs/cfg:**

 
``` 
    mkdir /axs/cfg/sirco
```

**Conteudo do Arquivo**
```
        [root@fxsalmt02 cfg]# cat sirco.json5
        {
            // O campo tipo, define como o sirco ira trabalhar
            // valores possiveis: "servidor" e "cliente"
            // Ex: tipo: "servidor",
            tipo: "cliente",
        
            // Porta que o processo deve utilizar para as conexoes HTTP e WS
            porta: "2018",
        
            // diretorio onde estaram as configuracao dos ip e arquivo de cada servidor
            // que o client deve copiar
            cfgPath: "/axs/cfg/sirco",
        
            // Campo debug valores validos: none, error, warn, info, debug
            // Ex: debug : "debug",
            debug: "debug",
        }

      
```
<br>

**Após editar o arquivo sirco.json5 executar:**

``` systemctl restart digitro-srco.service```

<br>

3. **Criar o diretório /axs/cfg/raposa/jsons/fxsalmt02 (utilizando o hostname da máquina):**
   ```mkdir /axs/cfg/raposa/jsons/fxsalmt02```
    
    **Inserir no Diretório os seguintes arquivos:**
```
        -rw-r--r-- 1 root root    109 Dez  8 15:58 atag-platform.cfg
        -rw-r--r-- 1 root root    564 Dez  8 15:58 atag-basicsettings.json
        -rw-r--r-- 1 root root 441272 Dez  8 16:03 atag-voipsettings.json
```
**_Estes aquivos  podem ser encontrados no pabx central no mesmo diretório ou no FXS do cliente, caso ainda tenha acesso._**

<br>

4. **Alterar as interfaces de rede com os mesmos MACs e IPs da máquina que está no cliente:**

    **/etc/sysconfig/network-scripts ajustar:** 
    
    ````IPADDR```` 
    ````NETMASK```` 
    ````HWADDR```` 
    

<br>

5. **Caso no primeiro passo não tenha alterado o GW default restaurando o backup via conf, deverá ser configurado agora com o mesmo GW da máquina que está em produção!**
<br>

6. **No caso deste chamado, foi preciso adicionar pelo menos uma máquina na topologia do liberação de redes. Talvez seja necessário que o CT desative o liberação caso não seja possível dar SSH para a máquina:**

```
        [root@fxsalmt02 ~]# cat /axs/cfg/rede_corporativa/.acls/arquivos/arquivo-topologia.txt |tail -3
        REDE_DIGITRO 172.2.0.10/32 #_LR: pbxipalmt01
        REDE_DIGITRO 172.2.0.9/32 #_LR: pbxipalmt00
```
**Caso não tenha acesso SSH:**

````systemctl stop dgt-liberacao_redes.service````

<br>

7. **Salvar as configurações na flash via conf.**

<br>

#### Fazendo essas configurações a princípio só será preciso plugar o SSD e ele já estará operando.
