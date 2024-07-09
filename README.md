# Repositório de Utilitários para Iniciação Científica em Segurança da Informação

Scroll down for english

Este repositório contém utilitários desenvolvidos durante minha iniciação científica na área de segurança da informação.

## Utilitários Disponíveis

### Separador de Arquivos (file_separator.sh)

Este script em Bash permite separar arquivos automaticamente entre diretórios de origem e destino especificados pelo usuário.

#### Pré-requisitos
Antes de executar o script, é necessário modificar no código as variáveis que definem os caminhos dos diretórios de origem e destino dos arquivos.

#### Como Usar
1. Abra o terminal na pasta onde o script está localizado.
2. Acesse o modo super usuário com o comando:
sudo su

3. Execute o script com o comando: bash file_separator.sh


O script irá iniciar e exibir no terminal as ações que estão sendo realizadas, incluindo o progresso através do número de arquivos movidos.
![Progresso do script](https://github.com/ViniBolo/Archives_IC/assets/50275359/4fb4f9fd-a270-4b77-aa2b-2581ed2899f4)

#### Funcionamento
O script cria automaticamente o diretório de destino se ele não existir juntamente com todas as subpastas necessárias. Ao final da execução, a o diretório de origem estará vazio, e o de destino estará parecido com o exemplo abaixo:

![Exemplo de funcionamento do script](https://github.com/ViniBolo/Archives_IC/assets/50275359/d2870c48-64a4-43d8-8867-744b4cdb8432)


# Repository of Utilities for Scientific Initiation in Information Security

This repository contains utilities developed during my scientific initiation in the field of information security.

## Available Utilities

### File Separator (file_separator.sh)

This Bash script allows for automatic separation of files between specified source and destination directories.

#### Prerequisites
Before running the script, it is necessary to modify the variables in the code that define the paths of the source and destination directories for the files.

#### Operation
The script automatically creates the destination directory if it does not exist, along with all necessary subfolders. Here is an example of how the script operates:
![Example of script operation](https://github.com/ViniBolo/Archives_IC/assets/50275359/d2870c48-64a4-43d8-8867-744b4cdb8432)

#### How to Use
1. Open the terminal in the folder where the script is located.
2. Access super user mode with the command: sudo su
3. Run the script with the command: bash file_separator.sh


The script will start and display in the terminal the actions being performed (in portuguese), including progress by the number of files moved.
![Script progress](https://github.com/ViniBolo/Archives_IC/assets/50275359/4fb4f9fd-a270-4b77-aa2b-2581ed2899f4)


