#!/bin/bash

# Debugar o código (Serve pra debugar as etapas, descomentar para rodar)
#set -x

# Boas vindas ao usuário
echo "Olá!"

# Solicita que o usuário insira um número
echo "Digite um número, por favor:"

# Ler o input do usuário
read numero

# Verifica se o número é 100 e encerra a execução se for o caso
if [ "$numero" -eq 8 ]; then
     echo "Sucesso. O número é 8."

elif [ "$numero" -eq 100 ]; then
    echo "ERRO !!! ENCERRANDO A EXECUÇÃO."
    exit 1 # Encerra a execução

# Verifica se o número é 589
elif [ "$numero" -eq 589 ]; then
    echo "Sucesso: o número é maior que 500!"

        # Solicita o nome do usuário
    echo "Digite seu nome:"

        # Ler o input do usuário
    read nome

        # Exibir uma mensagem ao Usuário
    echo "Parabéns $nome!"

        # Gravar os dados no arquivo delimitando por pipe
    echo "$numero|$nome" >> dados.txt
        
        # Validando o retorno da gravação
    ReturnCode=$?
    if [ "$ReturnCode" -eq 0 ]; then
        echo "Dados gravados com sucesso em dados.txt!"
    else
        echo "Erro ao gravar os dados."
    fi
else 
    echo "Número $numero é diferente de 8, 100 ou 589"
fi
