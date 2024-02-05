#!/bin/bash

echo "Criando diretórios..."

mkdir /publico
mkdir /adm
mkdir /ven
mkdir /sec

echo "Criando grupos..."

groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC

echo "Usuarios e Setores"
useradd carlos -m -s /bin/bash -p $(openssl passwd  Senha1234) -G GRP_ADM
passwd carlos -e
useradd maria -m -s /bin/bash -p $(openssl passwd  Senha1234) -G GRP_ADM
passwd maria -e
useradd joao -m -s /bin/bash -p $(openssl passwd  Senha1234) -G GRP_ADM
passwd joao -e

useradd debora -m -s /bin/bash -p $(openssl passwd  Senha1234) -G GRP_VEN
passwd debora -e
useradd sebastiana -m -s /bin/bash -p $(openssl passwd  Senha1234) -G GRP_VEN
passwd sebastiana -e
useradd roberto -m -s /bin/bash -p $(openssl passwd  Senha1234) -G GRP_VEN
passwd reberto -e

useradd josefina -m -s /bin/bash -p $(openssl passwd Senha1234) -G GRP_SEC
passwd josefina -e
useradd amanda -m -s /bin/bash -p $(openssl passwd  Senha1234) -G GRP_SEC
passwd amanda -e
useradd rogerio -m -s /bin/bash -p $(openssl passwd Senha1234) -G GRP_SEC
passwd rogerio -e
echo "Cada novo usuário deverá realizar alteração da senha padrão no primeiro acesso"


echo "Atribuindo permissões..."

chown root:GRP_ADM /adm
chown root:GRP_VEN /ven
chown root:GRP_SEC /sec

chmod 777 /publico
chmod 770 /adm
chmod 770 /ven
chmod 770 /sec

echo "Finalizado"