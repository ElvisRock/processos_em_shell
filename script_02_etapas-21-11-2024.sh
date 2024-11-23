#!/bin/bash

# Boas Vindas ao Usuário
echo "
 _   _      _ _         
| | | | ___| | | ___    
| |_| |/ _ \ | |/ _ \   
|  _  |  __/ | | (_) |  
|_| |_|\___|_|_|\___( ) 
                    |/  

"
echo ""

# Pedindo o nome de um arquivo
echo "Me informe o nome de um arquivo ou o Caminho Absoluto:"
echo ""

# Ler o nome do arquivo e transformar em uma variável 
read nome_do_arquivo
echo "..."
echo "... Verificando se este arquivo $nome_do_arquivo existe."

# Fazer a busca do arquivo em todo o computador ou no diretório absoluto ! 
# Se o arquivo existir informe ao usuário, 
# Se o arquivo NÃO existir crie o arquivo na pasta onde está o script caso não tenha informado ao usuário o diretório absoluto e informe ao usuário.
# Imprimir o nome do arquivo e o caminho que ele está.

if [ -f "$nome_do_arquivo" ]; then 
    echo "O arquivo '$nome_do_arquivo' já existe."
else 
    touch "$nome_do_arquivo"
    
    returncode=$?

    if [ $returncode -eq 0 ]; then 
        echo "Não foi encontrado o $nome_do_arquivo"
        echo "Arquivo  $nome_do_arquivo criado com sucesso!"
        echo ""
        ls  "$nome_do_arquivo"
    else 
        echo " arquivo $nome_do_arquivo sem sucesso"
    fi
fi



















