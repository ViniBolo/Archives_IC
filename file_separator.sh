#!/bin/bash

#script by chatgpt

# Registrar o tempo de início em milissegundos
inicio=$(date +%s%3N)

# Diretório onde os arquivos estão localizados
diretorio_origem="./VirusShare_00485"

# Diretório onde os arquivos serão organizados
diretorio_destino="./VirusShare_00485_classification"

# Verifica se o diretório destino existe, se não, cria
mkdir -p "$diretorio_destino"
echo "Diretório destino '$diretorio_destino' verificado ou criado."

# Contagem de arquivos processados
contador=0

# Total de arquivos a processar
total_arquivos=$(find "$diretorio_origem" -type f | wc -l)
echo "Total de arquivos a processar: $total_arquivos"

# Loop para processar cada arquivo no diretório de origem
find "$diretorio_origem" -type f | while read arquivo; do
    # Incrementa contador
    ((contador++))
    
    # Exibe progresso
    echo "Processando arquivo $contador de $total_arquivos: $arquivo"
    
    # Obtém a assinatura do arquivo (tipo MIME)
    assinatura=$(file --mime-type -b "$arquivo")
    echo "Assinatura detectada: $assinatura"
    
    # Cria um nome de diretório baseado na assinatura do arquivo
    subdir=$(echo $assinatura | tr '/' '_')
    
    # Cria o diretório se ele não existir
    if [ ! -d "$diretorio_destino/$subdir" ]; then
        mkdir -p "$diretorio_destino/$subdir"
        echo "Diretório criado: $diretorio_destino/$subdir"
    fi
    
    # Move o arquivo para o diretório correspondente
    mv "$arquivo" "$diretorio_destino/$subdir/"
    echo "Arquivo movido para $diretorio_destino/$subdir/"
done

echo "Organização de arquivos por assinatura concluída."

# Registrar o tempo de término em milissegundos
fim=$(date +%s%3N)

# Calcular e exibir a duração do script em milissegundos
duracao=$((fim - inicio))
echo "Tempo de execução do script: $duracao milissegundos."