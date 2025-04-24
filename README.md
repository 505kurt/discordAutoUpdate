# Discord Updater for Linux
## 🇺🇸 Description (English)

This script automates the process of updating Discord on Debian-based systems. It downloads the latest version of Discord directly from the official website, removes the previous version, and installs the new one while keeping your settings intact.

---

##  Requirements

- Debian-based distribution (such as Ubuntu, Linux Mint, etc)
- Internet connection
- Superuser privileges (sudo)

---

##  How to use

1. Clone or download this repository.
2. In the terminal, navigate to the repository folder:
 ```bash 
 cd path/to/repository 
 ```
3. Make the script executable and run it as superuser (the script will perform an automatic update of Discord if an update is available):
 ```bash
 chmod +x discord-updater.sh
 sudo ./discord-updater.sh
 ```
4. After the initial installation, you can run the script at any time by typing:
```bash
discord-update
```
**Note:** 
The script automatically adds a symbolic link to `/usr/local/bin/discord-update`, allowing simplified execution from the terminal.

---
## 🇧🇷 Descrição (Português)

Este script automatiza o processo de atualização do Discord em sistemas baseados no Debian. Ele baixa a versão mais recente do Discord diretamente do site oficial, remove a versão anterior e instala a nova, mantendo suas configurações intactas.

---

##  Requisitos

- Distribuição baseada em Debian (como Ubuntu, Linux Mint, etc)
- Conexão com a internet
- Permissão de superusuário (sudo)

---

##  Como usar

1. Clone ou baixe este repositório.
2. No terminal, navegue até a pasta do repositório:
 ```bash 
 cd caminho/para/o/repositorio 
 ```
3. Torne o script executável e execute-o como superusuário (o script irá realizar a atualização automática do Discord, se disponível):
 ```bash
 chmod +x discord-updater.sh
 sudo ./discord-updater.sh
 ```
4. Após a instalação inicial, você poderá executar o script a qual momento digitando o comando:
```bash
discord-update
```
**Observação:** 
O script adiciona automaticamente um link simbólico para `/usr/local/bin/discord-update`, para permitir a execução simplificada pelo terminal.
