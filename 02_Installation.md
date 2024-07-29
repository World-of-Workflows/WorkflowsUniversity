# Installation/Setup

This section contains instructions on how to install and configure World
of Workflows on your machine.

## Windows Installation

1.  Navigate to the [latest
    release](https://github.com/World-of-Workflows/WorkflowsUniversity/releases)
2.  Download the Windows Version of PE for either ARM or X64 \>There is
    an ARM version to run on ARM processors, and x64 version to run on
    Intel processors. The ARM versin will also run well in a VM on MacOS
    on an M1 or later porocessor.
3.  Run the downloaded application ![WOW PE Installer Screen
    1](../images/02_image.png)
4.  Click **Next \>** ![WOW PE Installer Screen
    2](../images/02_image-1.png)
5.  Accept or change the folder and click **Next \>** ![WOW PE Installer
    Screen 3](../images/02_image-2.png)
6.  Click **Install** ![WOW PE Installer Screen
    4](../images/02_image-3.png)
7.  Click **Finish**

**World of Workflows PE (Windows Installation)** is complete

To run World of Workflows, go to
<https://localhost:7063/admin>{:target="\_blank"}

## Linux Installation

1.  Install dotnet 8 on your version of linux using the link
    [here](https://dotnet.microsoft.com/en-us/download)

2.  Open a terminal window on your linux device

3.  navigate to `~` `bash       cd ~`

4.  Create a new folder for World of Workflows

    ``` bash
    mkdir WoW
    cd WoW
    ```

5.  In your browser, navigate to the [latest release
    folder](https://github.com/World-of-Workflows/WorkflowsUniversity/releases)

6.  Right Click **WorldOfWorkflowsxPE_xxx_linux_x64.zip**

7.  Download to your linux pc using a command like the one below:

    ``` bash
    wget  https://github.com/World-of-Workflows/WorkflowsUniversity/releases/download/1.7.539/WorldOfWorkflowsPE_1.7.539_linux-x64.zip
    ```

8.  Extract World of Workflows using the following command

    ``` bash
    unzip WorldOfWorkflowsPE_1.7.539_linux-x64.zip
    rm WorldOfWorkflowsPE_1.7.539_linux-x64.zip
    ```

9.  copy the files to their production location

``` bash
sudo cp -r . /var/www/WorldOfWorkflows
```

10. Create a new Service file
    `sudo nano /etc/systemd/system/kestrel-wow.service`

11. Enter the following information

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

12. Start the service with the following command
    `bash     sudo systemctl start kestrel-wow`

13. Check the service is running with
    `bash     sudo systemctl status kestrel-wow`

14. You should see the following
    `● kestrel-wow.service - World of Workflows 1.7       Loaded: loaded (/etc/systemd/system/kestrel-wow.service; enabled; preset: disabled)       Active: active (running) since Thu 2024-02-29 12:44:42 AEDT; 26min ago       Main PID: 177798 (HubOneWorkflows)       Tasks: 24 (limit: 48864)       Memory: 342.5M       CPU: 10.471s       CGroup: /system.slice/kestrel-wow.service              └─177798 /var/www/WorldofWorkflows/HubOneWorkflowsApp.Server`

15. If the service is not running, try the following steps:

    1.  Change the permissions on the executable
        `bash     sudo chmod 777 /var/www/WorldofWorkflows/HubOneWorkflowsApp.Server     sudo systemctl start kestrel-wow`

    2.  Change the SELinux policy. *Note, Changing SEinux policies can
        be complex and depends on your specific setup. The step belwo
        sets the file to a permissive tyope to test if SELinux is the
        issue*

        ``` bash
        sudo chcon -t bin_t /var/www/WorldofWorkflows/HubOneWorkflowsApp.Server
        ```

16. Finally, to connect to World of Workflows using https, you need to
    trust the dotnet certificate. You do this using the following
    command: `bash     dotnet dev-certs https --trust`

17. You may need to trust the certificate. To do this, follow the
    instructions below:

    1.  Export the certificate to a file
        `bash     dotnet dev-certs https -ep ${HOME}/.aspnet/https/aspnetapp.pfx -p <password>`

    2.  Convert to PEM Format

        ``` bash
        openssl pkcs12 -in ${HOME}/.aspnet/https/aspnetapp.pfx -out ${HOME}/.aspnet/https/aspnetapp.pem -nodes -password pass:<password>
        ```

    3.  Add to trusted stores

        1.  Ubuntu/Debian

            ``` bash
            sudo cp ${HOME}/.aspnet/https/aspnetapp.pem /usr/local/share/ca-certificates/aspnetapp.crt
            sudo update-ca-certificates
            ```

        2.  Fedora/RedHat

            ``` bash
            sudo cp ${HOME}/.aspnet/https/aspnetapp.pem /etc/pki/ca-trust/source/anchors/
            sudo update-ca-trust
            ```

To run World of Workflows, go to
<https://localhost:7063/admin>{:target="\_blank"}

# World of Workflows Business Edition

World of Workflows Business Edition is available on the Azure
Marketplace here:

[Azure
Marketplace](https://azuremarketplace.microsoft.com/en-us/marketplace/apps/worldofworkflows.wowbe?tab=Overview)

## Installation Instructions

### Installing Pre-requisites

1.  Navigate to the [Azure Portal](https://portal.azure.com/#home)
    ![Azure Portal](../images/02_image-7.png)
2.  Click **[+ Create a
    resource](https://portal.azure.com/#create/hub)** ![Create
    Resource](../images/02_image-8.png)
3.  Search for **User Managed Identity**. ![User Managed
    Identity](../images/02_image-9.png)
4.  Under User Managed Identity, click **Create**
5.  Create or choose a **Resource Group**, Set the Region to be your
    local region and give the Identity a name. We commonly use
    **WOWBEInstaller**. ![Create Managed
    Identity](../images/02_image-10.png)
6.  Click **Review + Create**
7.  Give your managed Identity Permissions as follows:
    -   for the subscription where you will install World of Workflows,
        make the managed Identity an **Owner**.
    -   In Entra Id, in the directory you will install World of
        Workflows, make the managed Identity an **Application
        Administrator**

**Note: ** *The managed identity can be deleted after deployment is
complete.*

### Installing World of Workflows

1.  Navigate to the [Azure Portal](https://portal.azure.com/#home)
    ![Azure Portal](../images/02_image-7.png)
2.  Click **[+ Create a
    resource](https://portal.azure.com/#create/hub)** ![Create
    Resource](../images/02_image-8.png)
3.  Search for **User World of Workflows** or click the link to the
    [Azure
    Marketplace](https://azuremarketplace.microsoft.com/en-us/marketplace/apps/worldofworkflows.wowbe?tab=Overview).
4.  Choose your plan and click **Create**
5.  Complete the form as follows:
    1.  **Project Details** ![Project
        Details](../images/02_image-11.png)
        -   Enter the subscription where you would like to install world
            of Workflows and create a new **Resource Group** by clicking
            **Create new**
    2.  **Instance Details** ![Instance
        details](../images/02_image-12.png)
        -   Choose the region where you want to install Wold of
            Workflows and choose a **Site Name** and **Server Plan
            Name**.
        -   **Site Name**: This is the name of the application. It can
            be anything you want, must be unique and will become
            `https://<sitename>.azurewebsites.net` when deployment is
            complete.
        -   **Server Plan Name**: This can be anything you want and is
            the plan the server sits under. You use this for scaling
            your instance up and down.
    3.  **User assigned managed identity** ![User Assigned Managed
        Identity](../images/02_image-13.png)
        -   Choose the user assigned managed identity created in
            pre-requisites above. Identities need Owner Access to the
            subscription and Application Administrator access to Entra
            Id. This identity can be deleted after deployment is
            complete.
    4.  **Single Selector** ![Single
        Selector](../images/02_image-14.png)
        -   Create a new **storage account** for World of Workflows by
            clicking **Create New**. ![Storage
            Account](../images/02_image-15.png)
        -   Ensure the storage account has a unique name and is
            configured for **File Shares** as the account kind. When
            done click **Ok**
        -   Enter the name for the Client Application and Server
            Application in Entra Id. This will create the applications
            we will use to assign permissions and access the World of
            Workflows API from other applications.
    5.  **Managed Application Details** ![Managed Application
        Details](../images/02_image-16.png)
        -   Enter the Application Name (for example **World of
            Workflows**)
        -   Edit the Managed Resource Group if required .
6.  Click **Review and Create**
7.  Accept the Terms and Conditions and click **Create**

After about 15 minutes, navigate to
`https://<sitename>.azurewebsites.net`

### Granting Permissions

Granting permissions in World of Workflows requires you first to
configure the Server Entra Id Application and then assign permissions.

**Important:** Wait until deployment is complete before performing the
tasks below.

1.  **Setting up Server Application**
    1.  You only need perform this once
    2.  Navigate to [Azure Portal --\> Entra Id --\> App
        Registrations](https://portal.azure.com/#view/Microsoft_AAD_IAM/ActiveDirectoryMenuBlade/~/RegisteredApps)
    3.  Click **All Applications**
    4.  Search for the Server application configured in step iv. above.
    5.  Click **API Permissions** ![API
        Permissions](../images/02_image-17.png)
    6.  Click **Add a permission**
    7.  Click **Microsoft Graph**
    8.  Click **Delegated Permissions**
    9.  Select **email, offline_access, openid and profile**
    10. Click **Add Permissions**
    11. Click **Grant Admin Consent**
    12. Click **Yes**
2.  **Granting Permissions**
    1.  Navigate to [Azure Portal --\> Entra Id --\> Enteprrise
        Applications](https://portal.azure.com/#view/Microsoft_AAD_IAM/StartboardApplicationsMenuBlade/~/AppAppsPreview/menuId~/null)
    2.  Click **X** next to Application type == Enteprrise Applications.
        ![Search Apps](../images/02_image-18.png)
    3.  Search for and select the server applcation congfigured in step
        iv above.
    4.  Under **Manage**, choose **Users and Groups** ![Users and
        Groups](../images/02_image-19.png)
    5.  Click **Add user/group** ![Add
        Assignment](../images/02_image-20.png)
    6.  Click **None Selected**
    7.  Search for and select the User you want to grant permissions to
        ![Seelct User](../images/02_image-21.png)
    8.  Click **Select**
    9.  Click **Assign**. *Administrator is the only role available in
        this version*

Now you can navigate to your new server and login.

# Setting up High Availability Clusters

In order to support high performance and high avaiability scenarios,
World of Workflows can operate in a cluster, with multiple servers
providing the interface for the customer.

Configuration is performed by installing and configuring four additional
components and altering the world of workflows configuration file.

Contact your account manager or support@worldofworkflows.com for
assistance setting up clusters.

# Changing Azure Directory

Authentication in World of Workflows is performed using Azure Active
Directory and this ensures security both through the client application
and at the server side. To Change the directory for the application is
simple yet slightly involved.

In Order to change the Directory you will follow three steps:

1.  Register the application in Azure AD
2.  Change the configuration for the Server
3.  Change the configuration for the client.

When you have registered the application in Azure AD, you should be able
to complete the table below:

  -----------------------------------------------------------------------
  Item                    Variable                Value
  ----------------------- ----------------------- -----------------------
  Client Id               `{CLIENT_ID}`           The Client Id of the
                                                  application

  Tenant Id               `{TENANT_ID}`           The Tenant Id of the
                                                  application

  Scope                   `{SCOPE}`               The Scope of the
                                                  application

  Scope URL               `{SCOPE_URL}`           The Full Url of the
                                                  Scope

  Domain Name             `{DOMAIN_NAME}`         The Domain Name of the
                                                  Tenant Directory
  -----------------------------------------------------------------------

## Register the application in Azure Ad

### Create a tenant

Follow the guidance in Quickstart: [Set up a tenant to create a tenant
in
AAD](https://learn.microsoft.com/en-us/azure/active-directory/develop/quickstart-create-new-tenant).

### Register a server API app

#### Register an AAD app for the Server API app:

1.  Navigate to Azure Active Directory in the Azure portal. Select **App
    registrations** in the sidebar. Select the **New registration**
    button.
2.  Provide a Name for the app (for example, World of Workflows).
3.  Choose a Supported account type. You may select **Accounts in this
    organizational directory only (single tenant)** for this experience.
4.  The app does require a Redirect URI, make this the URI of your
    application when running locally, e.g. https://localhost:7063. It
    may ask what type of application. In this case, use SPA.
5.  If you're using an unverified publisher domain, clear the
    Permissions \> Grant admin consent to openid and offline_access
    permissions checkbox. If the publisher domain is verified, this
    checkbox isn't present. \> **Note: If the application doesn't have a
    scope, azure will prompt you to create an application ID URI**
6.  Select Register. Record the following information:

-   Client ID (for example, `41451fa7-82d9-4673-8fa5-69eff5a761fd`)
-   Tenant Id (for example, `e86c78e2-8bb4-4c41-aefd-918e0565a45e`)
-   Domain Name (for example, `contoso.onmicrosoft.com`): The domain is
    available as the Publisher domain in the Branding blade of the Azure
    portal for the registered app.

In Expose an API:

1.  Select Add a scope.
2.  Select Save and continue.
3.  Provide a Scope name (for example, API.Access).
4.  Provide an Admin consent display name (for example, Access API).
5.  Provide an Admin consent description (for example, Allows the app to
    access server app API endpoints).
6.  Confirm that the State is set to Enabled.
7.  Select Add scope.

Record the following information:

1.  Scope Url (for example,
    `api://41451fa7-82d9-4673-8fa5-69eff5a761fd/API.Access`)
2.  Scope (for example, API.Access)

In Authentication \> Platform configurations \> Single-page application
(SPA):

1.  Confirm the Redirect URI of
    https://localhost:7063/authentication/login-callback is present. (
    or the URL your application uses)
2.  In the Implicit grant section, ensure that the checkboxes for Access
    tokens and ID tokens are not selected.
3.  The remaining defaults for the app are acceptable for this
    experience.
4.  Select the Save button.

## Change the configuration for the Server

This file, `appsettings.json` resides in the root folder of the
application.

``` json
    "AzureAd": {
        "Instance": "https://login.microsoftonline.com/",
        "Domain": "{DOMAIN_NAME}",
        "TenantId": "{TENANT_ID}",
        "ClientId": "{CLIENT_ID}",
        "Scopes": "{SCOPE}",
        "CallbackPath": "/signin-oidc"
    },
    "AuthorizationUrl": "https://login.microsoftonline.com/{TENANT_ID}}/oauth2/v2.0/authorize",
    "TokenUrl": "https://login.microsoftonline.com/{TENANT_ID}/oauth2/v2.0/token",
    "ApiScope": "{SCOPE_URL}",
    "OpenIdClientId": "{CLIENT_ID}"
```

## Change the configuration for the client

This file, `appsettings.json` resides in the wwwroot folder of the
published application. Make sure you also remove appsettings.json.br and
appsettings.json.gz.

``` json
 "AzureAdCli": {
    "Authority": "https://login.microsoftonline.com/{TENANT_ID}}",
    "ClientId": "{CLIENT_ID}",
    "ValidateAuthority": true
  }
```

# Authentication with Microsoft Entra ID for External users

Each person who accesses your application needs permission. 1. You can
invite an **external user** in Micorosft Entra ID:

``` sh
https://portal.azure.com/#view/Microsoft_AAD_UsersAndTenants/UserManagementMenuBlade/~/AllUsers
```

![image](https://github.com/World-of-Workflows/WorkflowsUniversity/assets/10161221/d7bc0758-efb5-47c0-b9d3-8ea3ca9c9077)

2.  You can set up a Dynamic Group in MS Entra ID to provide access to
    these users:

``` sh
https://portal.azure.com/#view/Microsoft_AAD_IAM/GroupsManagementMenuBlade/~/AllGroups
```

![image](https://github.com/World-of-Workflows/WorkflowsUniversity/assets/10161221/a4826b35-e6c0-4878-afec-2a67d0d388c5)

One way to dynamically add external users to the group is using a
dynamic rule, such as this:

``` sh
(user.userPrincipalName -contains "#EXT#")
```

![image](https://github.com/World-of-Workflows/WorkflowsUniversity/assets/10161221/853ac7de-7a4f-4a63-9c5d-be7cdcbad175)

3.  Give the group access to your application
4.  Find your application name in the App registrations page

``` sh
https://portal.azure.com/#view/Microsoft_AAD_IAM/ActiveDirectoryMenuBlade/~/RegisteredApps
```

Look in All Applications, using your ClientID
![image](https://github.com/World-of-Workflows/WorkflowsUniversity/assets/10161221/36b5dbe0-79c1-4237-b9c6-ddcdfb7460ff)

Then go to Enterprise Applications

``` sh
https://portal.azure.com/#view/Microsoft_AAD_IAM/StartboardApplicationsMenuBlade/~/AppAppsPreview/menuId~/null
```

First, remove the 'Enterprise Applications' filter
![image](https://github.com/World-of-Workflows/WorkflowsUniversity/assets/10161221/eb924419-a92e-473e-81e4-394227600570)
And add the group:

![image](https://github.com/World-of-Workflows/WorkflowsUniversity/assets/10161221/5540f26a-e1cf-402b-800c-0694db81be6b)

![image](https://github.com/World-of-Workflows/WorkflowsUniversity/assets/10161221/c8a81e3a-3d74-4d86-ac97-b24f2794d6c6)

Click 'None Selected' to begin

![image](https://github.com/World-of-Workflows/WorkflowsUniversity/assets/10161221/e72e4599-6bb4-44ba-b02f-a52cbe61e066)

4.  Provide cross-domain collaboration rights to the user's domain

``` sh
https://portal.azure.com/#view/Microsoft_AAD_IAM/CompanyRelationshipsMenuBlade/~/Settings
```

Add the domain name, or select one of the other radio buttons

![image](https://github.com/World-of-Workflows/WorkflowsUniversity/assets/10161221/2c497387-65a1-41e0-a685-09d10f7aa115)
