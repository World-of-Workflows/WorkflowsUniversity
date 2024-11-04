**2. Installation and Setup**

Setting up World of Workflows involves selecting the appropriate edition—Personal or Business—and following the corresponding installation procedures.

**2.1 Personal Edition**

The Personal Edition is designed for individual use on a local workstation, providing a full set of features excluding security, multi-user support, and web access.

**2.1.1 Windows Installation**

1. **Prerequisites:**
   - Ensure your system meets the necessary hardware and software requirements.
   - Install .NET 8.0 Runtime, available from the [Microsoft .NET website](https://dotnet.microsoft.com/download/dotnet/8.0).

2. **Download:**
   - Visit the [World of Workflows Releases](https://github.com/World-of-Workflows/WorkflowsUniversity/releases) page.
   - Download the latest Windows installer package (e.g., `WorldOfWorkflowsPE_1.7.539_win-x64.zip`).

3. **Installation:**
   - Extract the downloaded ZIP file to a preferred location on your system.
   - Run the `HubOneWorkflowsApp.Server.exe` file to start the application.

4. **Accessing the Application:**
   - Open a web browser and navigate to `https://localhost:7063/admin` to access the World of Workflows interface.

**2.1.2 Linux Installation**

1. **Prerequisites:**
   - Ensure your system meets the necessary hardware and software requirements.
   - Install .NET 8.0 Runtime by following the instructions specific to your Linux distribution, available on the [Microsoft .NET website](https://dotnet.microsoft.com/download/dotnet/8.0).

2. **Download:**
   - Visit the [World of Workflows Releases](https://github.com/World-of-Workflows/WorkflowsUniversity/releases) page.
   - Download the latest Linux installer package (e.g., `WorldOfWorkflowsPE_1.7.539_linux-x64.zip`).

3. **Installation:**
   - Open a terminal and navigate to the directory where the ZIP file was downloaded.
   - Extract the ZIP file using the command:
     ```bash
     unzip WorldOfWorkflowsPE_1.7.539_linux-x64.zip
     ```
   - Move the extracted files to the desired installation directory, e.g.:
     ```bash
     sudo cp -r . /var/www/WorldOfWorkflows
     ```

4. **Configure as a Service:**
   - Create a new service file:
     ```bash
     sudo nano /etc/systemd/system/kestrel-wow.service
     ```
   - Add the following content:
     ```ini
     [Unit]
     Description=World of Workflows 1.7

     [Service]
     WorkingDirectory=/var/www/WorldOfWorkflows
     ExecStart=/var/www/WorldOfWorkflows/HubOneWorkflowsApp.Server
     Restart=always
     RestartSec=10
     KillSignal=SIGINT
     SyslogIdentifier=world-of-workflows
     User=root
     Environment=ASPNETCORE_ENVIRONMENT=Production
     Environment=DOTNET_NOLOGO=true

     [Install]
     WantedBy=multi-user.target
     ```
   - Start and enable the service:
     ```bash
     sudo systemctl start kestrel-wow
     sudo systemctl enable kestrel-wow
     ```

5. **Accessing the Application:**
   - Open a web browser and navigate to `https://localhost:7063/admin` to access the World of Workflows interface.

**2.2 Business Edition**

The Business Edition is suitable for organisational use, offering multi-user support, enhanced security features, and web access. It can be deployed on any device or cloud platform and utilises Microsoft Entra ID for authentication and access control.

**2.2.1 Azure Installation**

1. **Prerequisites:**
   - An active Azure subscription.
   - Administrative access to Azure Active Directory (Entra ID).

2. **Setup Managed Identity:**
   - Navigate to the Azure Portal and create a User Managed Identity (e.g., `WOWBEInstaller`).
   - Assign the following roles to the managed identity:
     - Owner access to the subscription where World of Workflows will be installed.
     - Application Administrator access in Entra ID.

3. **Deploy World of Workflows:**
   - In the Azure Portal, click on "Create a resource" and search for "World of Workflows."
   - Select the desired plan and click "Create."
   - Fill in the required details:
     - **Project Details:** Select the subscription and create a new Resource Group.
     - **Instance Details:** Choose the region, and specify the Site Name and Server Plan Name.
     - **User Assigned Managed Identity:** Select the managed identity created earlier.
     - **Storage Account:** Create a new storage account configured for File Shares.
     - **Entra ID Applications:** Specify names for the Client and Server applications.
   - Review the configuration and click "Create."

4. **Configure Entra ID Applications:**
   - After deployment, navigate to Entra ID > App Registrations.
   - Locate the Server application and configure API permissions:
     - Add delegated permissions for `email`, `offline_access`, `openid`, and `profile`.
     - Grant admin consent for the permissions.
   - Assign users or groups to the application by navigating to Entra ID > Enterprise Applications, selecting the Server application, and adding users or groups under the "Users and Groups" section.

5. **Accessing the Application:**
   - Navigate to `https://<sitename>.azurewebsites.net` to access the World of Workflows interface.

**2.2.2 High Availability Clusters**

For organisations requiring high availability, World of Workflows can be configured in 