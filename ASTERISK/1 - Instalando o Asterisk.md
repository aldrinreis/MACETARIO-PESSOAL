# **Instalando o Asterisk**

<br>

> ### **Instalando o asterisk no Alma Linux**

<br>

- **Instalar utilitários de rede.**

```bash
apt install network-manager
apt install net-tools
```

<br>

- **Desativando o se-linux**

```bash
/etc/sysconfig/selinux
SELINUX=disabled

#rebootar a máquina
```

<br>

- **Ativar repositório CRB**

```bash
dnf config-manager --set-enable crb 

yum install epel-release 

yum install wget tar chkconfig initscripts
```

<br>

- **Instalando o Asterisk**

```bash
cd /usr/src 

wget -c https://downloads.asterisk.org/pub/telephony/asterisk/asterisk-22-current.tar.gz

tar xfvz asterisk-22-current.tar.gz

cd asterisk-22.7.0/

```

<br>

**Script de Instalação**

```bash
cd asterisk-22.7.0/

sh contrib/scripts/install_prereq_install

./configure
```

<br>

```bash
make menuselect #para selecionar os módulos que serão compilados.


make

make install

make samples

make config # (adiciona  asterisk no systemctl, para iniciar com o sistema)
systemctl daemon-reload

systemctl start asterisk
```

<br>
<hr>
<br>

>### **Intalando no Debia**

```sql


cd /usr/src/

/*Baixando o asterisk*/

wget -c https://downloads.asterisk.org/pub/telephony/asterisk/asterisk-22-current.tar.gz

/*
Salvando em: “asterisk-22-current.tar.gz”

asterisk-22-current.tar.gz             100%[============================================================================>]  25,24M  4,07MB/s    em 15s

2026-01-20 21:47:14 (1,64 MB/s) - “asterisk-22-current.tar.gz” salvo [26465168/26465168]

*/

/* Listando o pacote

root@asterisk:/usr/src# ls -ltr
total 25848
-rw-r--r-- 1 root root 26465168 nov 20 17:00 asterisk-22-current.tar.gz
root@asterisk:/usr/src#

*/

/*Descompactando o Pacote*/

tar xfvz asterisk-22-current.tar.gz

/*
root@asterisk:/usr/src# ls -ltr
total 25852
drwxrwxr-x 32 root root     4096 nov 20 17:00 asterisk-22.7.0
-rw-r--r--  1 root root 26465168 nov 20 17:00 asterisk-22-current.tar.gz
root@asterisk:/usr/src#

*/

/*Script de Preparação*/

root@asterisk:/usr/src# cd asterisk-22.7.0/
root@asterisk:/usr/src/asterisk-22.7.0# sh contrib/scripts/install_prereq install

/*
Retorno da contrib

#############################################
## install completed successfully
#############################################


*/

root@asterisk:/usr/src/asterisk-22.7.0# ./configure


root@asterisk:/usr/src/asterisk-22.7.0# make menuselect /*para selecionar os módulos que serão compilados.*/


make

make install

make samples

make config (adiciona  asterisk no systemctl, para iniciar com o systema)

systemctl start asterisk

```