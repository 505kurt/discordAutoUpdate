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
5. **Automatic updates scheduling**

After the first execution, the script automatically schedules itself to run on system boot and every 5 hours.  
This means Discord will be checked for updates automatically without any manual intervention:
- **On boot:** The script runs once every time the system starts.
- **Every 5 hours:** The script runs at 0:00, 5:00, 10:00, 15:00, and 20:00, ensuring your Discord is always up-to-date.

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
5. Após a primeira execução, o script se agenda automaticamente para rodar no boot do sistema e a cada 5 horas.  
Isso significa que o Discord será verificado para atualizações automaticamente, sem necessidade de intervenção manual:
- **No boot:** O script é executado uma vez a cada inicialização do sistema.
- **A cada 5 horas:** O script é executado às 0:00, 5:00, 10:00, 15:00 e 20:00, garantindo que o Discord esteja sempre atualizado.

**Observação:** 
O script adiciona automaticamente um link simbólico para `/usr/local/bin/discord-update`, para permitir a execução simplificada pelo terminal.
