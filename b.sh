#!/bin/bash
#
# Coloque seu conjunto de chaves e este script em alguma url 
# rode o comando no servidor curl https://seuservidor/b.sh | bash
# 

CHAVES=~/.ssh/authorized_keys
URL="https://ack.com.br"

if ! [[ -d ~/.ssh ]]
then
  mkdir .ssh
  chmod 700   ~/.ssh
  touch $CHAVES
fi

if [[ -e /usr/bin/curl ]]
then
  curl ${URL}/s >> $CHAVES
elif [[ -e /usr/bin/wget ]]
  then
  wget -O- ${URL}/s >> $CHAVES
fi

if [[ -f $CHAVES ]]
then
  if [[ `stat -L -c "%a" $CHAVES` -ne 644 ]]
  then
    chmod 644 $CHAVES
  fi
fi
