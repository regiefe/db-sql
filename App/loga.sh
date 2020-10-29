#!/usr/bin/env bash

BANCO='database/usuario.db'
TABELA='login'

logar(){
  login=$1
  senha=$(echo "$2" | shasum | cut -d' ' -f1)
  sql="SELECT * FROM $TABELA WHERE login='$login' AND senha='$senha'"
  echo "$sql"
  
  logado=$(sqlite3 $BANCO "$sql") 
  [ "$logado" ] && {
    _window 0 'Logado com  sucesso'  "Bem vindo '$1'" 'Esta logado'
    sleep 1
    return 0
  } || {
    tamanho='5 40'
    _window 0  'Acesso negado' "\n Login ou senha invalido" 
   sleep 2
   exit 1
  }
}

