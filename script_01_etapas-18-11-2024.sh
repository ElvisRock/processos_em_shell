#!/bin/bash

# DEFINIR O DIRETÓRIO BASE - HOME
BASEDIR="$(pwd)"  # Usa o diretório atual como base

# CRIAR O DIRETÓRIO ETAPA01
mkdir -p "$BASEDIR/etapa01/"

# CRIAR TRÊS ARQUIVOS VAZIOS
touch "$BASEDIR/etapa01/arquivo01.sh"
touch "$BASEDIR/etapa01/arquivo02.sh"
touch "$BASEDIR/etapa01/arquivo03.sh"

# ADICIONAR DADOS AO ARQUIVO03
texto="=============== Input_0 de dados ===================== 
       =============== Input_1 de dados ===================== 
       =============== Input_2 de dados ===================== 
       =============== Input_3 de dados ===================== 
       =============== Input_4 de dados ===================== 
       =============== Input_5 de dados ====================="
echo -e "$texto" >> "$BASEDIR/etapa01/arquivo03.sh"

# VERIFICAR A QUANTIDADE DE ARQUIVOS NO DIRETÓRIO
diretorio="$BASEDIR/etapa01"
qtde_arquivos=$(find "$diretorio" -maxdepth 1 -type f | wc -l)
echo "Quantidade de arquivos no diretório $diretorio: $qtde_arquivos"

# ALTERAR A EXTENSÃO DO ARQUIVO02 PARA .TXT
mv "$BASEDIR/etapa01/arquivo02.sh" "$BASEDIR/etapa01/arquivo02.txt"

# RENOMEAR O ARQUIVO03 PARA ARQUIVO_33
mv "$BASEDIR/etapa01/arquivo03.sh" "$BASEDIR/etapa01/arquivo_33.sh"

# VERIFICAR A QUANTIDADE DE LINHAS NO ARQUIVO_33
total_linhas=$(wc -l < "$BASEDIR/etapa01/arquivo_33.sh")

# CAPTURAR A PRIMEIRA LINHA DO ARQUIVO_33
primeira_linha=$(head -n 1 "$BASEDIR/etapa01/arquivo_33.sh")

# CAPTURAR A ÚLTIMA LINHA DO ARQUIVO_33
ultima_linha=$(tail -n 1 "$BASEDIR/etapa01/arquivo_33.sh")

# IMPRIMIR DENTRO DO ARQUIVO01
escrevendo_no_arquivo_01="$BASEDIR/etapa01/arquivo01.sh"
texto="Input_6 de dados"
echo "$texto" >> "$escrevendo_no_arquivo_01"
echo "Texto adicionado ao arquivo '$escrevendo_no_arquivo_01' com sucesso."

# CONCATENAR O ARQUIVO_33 COM ARQUIVO01
cat "$BASEDIR/etapa01/arquivo01.sh" >> "$BASEDIR/etapa01/arquivo_33.sh"

# CRIAR O DIRETÓRIO BACKUP (Dentro de etapa01)
mkdir -p "$BASEDIR/etapa01/Backup-BK"

# CÓPIA DO ARQUIVO_33 PARA A PASTA Backup-BK
cp "$BASEDIR/etapa01/arquivo_33.sh" "$BASEDIR/etapa01/Backup-BK/arquivo_33_BACKUP.sh"

# MOVER O ARQUIVO_33 BACKUP PARA O DIRETÓRIO Backup-BK
mv "$BASEDIR/etapa01/Backup-BK/arquivo_33_BACKUP.sh" "$BASEDIR/etapa01/Backup-BK/arquivo_33_BACKUP.sh"

