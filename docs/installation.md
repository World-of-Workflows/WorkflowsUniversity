---
title: Installation/Setup
layout: default
nav_order: 3
---

# Installation/Setup
This document contains instructions on how to install and configure World of Workflows on your machine.



## World of Workflows Personal Edition

### Windows Installation

1. Navigate to the [latest release](https://github.com/World-of-Workflows/WorkflowsUniversity/releases)
2. Download the Windows Version of PE [WorldOfWorkflowsPE_1.xxx_win-x64.exe](https://github.com/World-of-Workflows/WorkflowsUniversity/releases/download/1.7.461/WorldOfWorkflowsPE_1.7.461_win-x64.exe)
3. Run the downloaded application
   ![WOW PE Installer Screen 1](image-5.png)
4. Click **I agree to the License terms and conditions**
5. Click **Install**
   ![WOW PE Installer Screen 2](image-6.png)
6. Click **Finish**

**World of Workflows PE (Windows Installation)** is complete

### Apple M1 or M2 Installation

*Coming Soon*

### Linux Installation

1. Install dotnet 8 on your version of linux using the link [here](https://dotnet.microsoft.com/en-us/download)
2. Open a terminal window on your linux device
3. navigate to ```~```
4. Create a new folder for World of Workflows
   ```bash
   mkdir WoW
   cd WoW
   ```
5. In your browser, navigate to the [latest release folder](https://github.com/World-of-Workflows/WorkflowsUniversity/releases)
6. Right Click **WorldOfWorkflowsxPE_xxx_linux_x64.zip**
7. Download to your linux pc using a command like the one below:
   ```bash
   wget  https://github.com/World-of-Workflows/WorkflowsUniversity/releases/download/1.7.539/WorldOfWorkflowsPE_1.7.539_linux-x64.zip
   ```
8. Extract World of Workflows using the following command
   ```bash
   unzip WorldOfWorkflowsPE_1.7.539_linux-x64.zip
   rm WorldOfWorkflowsPE_1.7.539_linux-x64.zip
   ```
9. copy the files to their production location
   ```bash
   sudo cp -r . /var/www/WorldOfWorkflows
   ```
10. Create a new Service file
    ```
    sudo nano /etc/systemd/system/kestrel-wow.service
    ```
11. Enter the following information
    ```
    [Unit]
    Description=World of Workflows 1.7

    [Service]
    WorkingDirectory=/var/www/WorldofWorkflows
    ExecStart=/var/www/WorldofWorkflows/HubOneWorkflowsApp.Server
    Restart=always
    # Restart service after 10 seconds if the dotnet service crashes:
    RestartSec=10
    KillSignal=SIGINT
    SyslogIdentifier=world-of-workflows
    User=root
    Environment=ASPNETCORE_ENVIRONMENT=Production
    Environment=DOTNET_NOLOGO=true

    [Install]
    WantedBy=multi-user.target
    ```
12. Start the service with the following command
    ```bash
    sudo systemctl start kestrel-wow
    ```
13. Check the service is running with
    ```bash
    sudo systemctl status kestrel-wow
    ```
14. You should see the following
    ```
    ● kestrel-wow.service - World of Workflows 1.7
      Loaded: loaded (/etc/systemd/system/kestrel-wow.service; enabled; preset: disabled)
      Active: active (running) since Thu 2024-02-29 12:44:42 AEDT; 26min ago
      Main PID: 177798 (HubOneWorkflows)
      Tasks: 24 (limit: 48864)
      Memory: 342.5M
      CPU: 10.471s
      CGroup: /system.slice/kestrel-wow.service
             └─177798 /var/www/WorldofWorkflows/HubOneWorkflowsApp.Server
    ```
15. If the service is not running, try the following steps:
    1.  Change the permissions on the executable
        ```bash
        sudo chmod 777 /var/www/WorldofWorkflows/HubOneWorkflowsApp.Server
        sudo systemctl start kestrel-wow
        ```
    2. Change the SELinux policy. *Note, Changing SEinux policies can be complex and depends on your specific setup. The step belwo sets the file to a permissive tyope to test if SELinux is the issue*
       ```bash
       sudo chcon -t bin_t /var/www/WorldofWorkflows/HubOneWorkflowsApp.Server
       ```
16. Finally, to connect to World of Workflows using https, you need to trust the dotnet certificate. You do this using the following command:
    ```bash
    dotnet dev-certs https --trust
    ```
17. You may need to trust the certificate. To do this, follow the instructions below:
    1. Export the certificate to a file
        ```bash
        dotnet dev-certs https -ep ${HOME}/.aspnet/https/aspnetapp.pfx -p <password>
        ```
    2. Convert to PEM Format
       ```bash
       openssl pkcs12 -in ${HOME}/.aspnet/https/aspnetapp.pfx -out ${HOME}/.aspnet/https/aspnetapp.pem -nodes -password pass:<password>
       ```
    3. Add to trusted stores
       1. Ubuntu/Debian
          ```bash
          sudo cp ${HOME}/.aspnet/https/aspnetapp.pem /usr/local/share/ca-certificates/aspnetapp.crt
          sudo update-ca-certificates
          ```
       2. Fedora/RedHat
          ```bash
          sudo cp ${HOME}/.aspnet/https/aspnetapp.pem /etc/pki/ca-trust/source/anchors/
          sudo update-ca-trust
          ```




## World of Workflows Business Edition

World of Workflows Business Edition is available on the Azure Marketplace here:

[Azure Marketplace](https://azuremarketplace.microsoft.com/en-us/marketplace/apps/worldofworkflows.wowbe?tab=Overview)

