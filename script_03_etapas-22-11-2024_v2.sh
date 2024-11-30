#!/bin/bash

# Boas vindas ao usuário
echo "Olá"

# Capturar o nome de um arquivo ou diretório
echo "Digite um nome de um arquivo ou diretório:"
read nome

# Verificar se o nome existe para um arquivo ou diretório
# -e == >> Se existe algo / Arquivo ou diretório
# -f == >> Se existe e se é um arquivo 
# -s == >> Se existe um arquivo e se o arquivo está vazio
# -d == >> Se o arquivo existe e se é um diretório 
#-eq == >> igual a

if [ -e "$nome" ]; then
    # Se for um arquivo
    if [ -f "$nome" ]; then
        if [ -s "$nome" ]; then
            echo "$nome é um arquivo que possui dados."
        else
            echo "$nome é um arquivo vazio."
        fi
    # Se for um diretório
    elif [ -d "$nome" ]; then
        echo "$nome é um diretório."
        echo "Conteúdo do diretório:"
        ls "$nome"
    else 

         echo  "nÃO é arquivo nem diretorio"
    fi
else
    # Caso o arquivo ou diretório não exista
    echo "$nome não existe."
    echo "Deseja criar:"
    echo "1 - Um arquivo vazio"
    echo "2 - Um diretório"

    read escolha
 
    if [ "$escolha" -eq "1" ]; then
        # Criar um arquivo vazio
        touch "$nome"
        
        # Validar se foi criado o arquivo antes de imprimir a msg
        returncode=$?
        if [ $returncode -eq 0 ]; then 
            echo "Arquivo vazio $nome criado."
        else 
            echo "Arquivo não criado"
        fi

    elif [ "$escolha" -eq "2" ]; then

        # Criar um diretório
        mkdir "$nome";
        # Validar se foi criado o diretório antes de imprimir a msg
        returncode2=$?
        if [ $returncode2 -eq 0 ]; then
            echo "Diretório $nome criado."
            ls  "$nome"
        else 
            echo "Diretório $nome Falha ao criar diretório"
        fi
    else
        echo "Opção inválida. Nenhuma ação realizada."
    fi 
fi
