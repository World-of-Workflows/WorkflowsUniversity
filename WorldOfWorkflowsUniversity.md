# About World of Workflows

Welcome to World of Workflows! World of Workflows is a software solution
that allows anyone to automate business processes, be those simple
processes for yourself or processes that encompass your entire business.

## Overview of World of Workflows

World of Workflows is a powerful software solution designed to
streamline and optimize your business processes by providing an
intuitive platform for creating, managing, and automating both simple
and complex workflows. We consider any process you perform with more
than one step to be considered a workflow. With over 100 activities to
choose from and plugins that extend this functionality, you can easily
tailor workflows to suit your organization's specific needs. By
integrating a rich, dynamic, user-configurable database and an advanced
task management system, World of Workflows enables you to efficiently
manage your projects and tasks, collaborate with your team, and track
progress in real-time.

World of Workflows comes in two key editions:

-   **Personal Edition** or PE runs on your local PC and is for personal
    use or workflow development.
-   **Business Edition** or BE runs on any of the major cloud providers
    or your servers and offers enhanced features such as single sign-on
    and rich permissions and access control.

## Key features and components of World of Workflows

-   Workflow Editor, a core component of World of Workflows, offers a
    flexible and user-friendly interface for building and customizing
    workflows. Some of the key features and components include:
    -   A wide range of pre-built activities that can be easily added,
        edited, and connected within your workflows. These activities
        can be extended using Plugins.
-   A user-configurable database for managing data and integrating with
    external databases or APIs.
-   A robust task management system that enables you to create, assign,
    and track tasks, as well as collaborate with your team members.
-   Workflow templates called Solutions for quickly implementing common
    processes and best practices.
-   Advanced features such as workflow automation with triggers,
    third-party application integration, and the ability to create
    custom activities.
-   Comprehensive security and permissions settings to ensure data
    protection and controlled access *with Business Edition*.
-   Plugins, which extend the capability of the system.
-   OData access which simplifies the process of reporting and
    dashboarding of your data.
-   Credential manager which allows you to securely connect to
    3`<sup>`{=html}rd`</sup>`{=html} party APIs and systems, such as
    ChatGPT, Xero, Office 365 and many, many more.

Our extensible database which can be accessed from the User Interface or
within workflows provides the following features:

-   Extremely high performance
-   Customizable tables (Types), Columns and Relationships
-   Custom views to see filtered and sorted database entries.
-   Flexible import
-   Full Export
-   Inline editing
-   Sort, Filter and paging

Our detailed task system allows for the system to reach out to users and
instruct them where manual tasks are required and includes the following
features:

-   Task Queues
-   Task Details formatted with Markdown
-   Update data in the database directly from a task
-   Custom outcomes that branch the workflow.

## Examples of process automation with World of Workflows.

Our customers have used World of Workflows to automate several business
processes. Here are some examples:

1.  A media company uses World of Workflows integrated with ChatGPT to
    write draft articles on incoming press releases automatically.
2.  A soccer club uses World of Workflows to notify coaches and managers
    when it is their turn to put up or take down nets on a soccer field
    based on the draw in an external system.
3.  An independent school uses World of Workflows to manage its
    enrolment process.
4.  A managed service provider uses World of Workflows to correctly bill
    customers for their telephone voice usage.
5.  A sporting club uses World of Workflows to automatically generate a
    weekly newsletter.
6.  A not-for-profit uses World of Workflows to manage its grant
    application process.

# Versions

This section describes the differences between the `Personal Edition`
and the `Business Edition`.

## Comparison Table

**Core Features**

  Feature                    Personal Edition   Business Edition   
  -------------------------- ------------------ ------------------ --
  SQLLite Support            Yes                Yes                
  SQL Server Support         \-                 \-                 
  Azure SQL Server Support   \-                 \-                 
  Local Installation         Yes                Yes                
  Users                      \-                 Yes                
  Groups                     \-                 Yes                
  Single Sign On             \-                 Yes                
  Azure Active Directory     \-                 Yes                
  Tasks                      Yes                Yes                
  Views                      Yes                Yes                
  Data                       Yes                Yes                
  Workflows                  Yes                Yes                
  Workflows Testing          \-                 Yes                
  Plugins                    Yes                Yes                
  Data Backups               Yes                Yes                
  Data Restore               Yes                Yes                
  Data Export                Yes                Yes                
  Data Import                Yes                Yes                
  Workflows Univeristy       Yes                Yes                
  Self Documentation         Yes                Yes                

**Workflow Features**

  Feature                      Personal Edition   Business Edition   
  ---------------------------- ------------------ ------------------ --
  Compensation                 Yes                Yes                
  Console                      Yes                Yes                
  Flow Control                 Yes                Yes                
  Data                         Yes                Yes                
  Users                        \-                 Yes                
  Email                        Yes                Yes                
  File                         Yes                Yes                
  HTTP                         Yes                Yes                
  Jotform                      Yes                Yes                
  Random Numbers               Yes                Yes                
  Robotic Process Automation   Yes                Yes                
  JavaScript Support           Yes                Yes                
  Liquid Support               Yes                Yes                
  State Machine                Yes                Yes                
  Tasks                        Yes                Yes                
  Timers                       Yes                Yes                
  Views                        Yes                Yes                

> Note in Personal Edition, the database is stored in
> `C:\ProgramData\WorldOfWorkflows` and backups are stored in
> `C:\ProgramData\WorldOfWorkflows\Backup`.

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

# Navigation

## Home Page

![Home Page](../images/03_2024-07-10-09-20-03.png)

The home page has a number of **tiles** that show various statistics of
your World of Workflows installation. You can use these tiles to
navigate to these icons.

The top navigation includes the **Dashboard** or home page. **Tasks**
take you to the task page and Admin is the rest of the navigation.

*This will change when you add **views**.*

## Tasks

![Tasks Page](../images/03_2024-07-10-09-22-21.png)

The tasks page consists of two columns. The left-hand column shows tasks
you have picked and are in your queue. The right-hand column shows the
current available tasks to pick.

## Admin

![Admin Page](../images/03_2024-07-10-09-23-25.png)

The admin page allows you to navigate between the various aspects of the
system and manipulate data, workflows, tasks and more.

The sections of the Admin page are defined below:

### Workflows

This gives you access to the Workflows which allows you to manage all of
the Workflows in the system. Workflows are ways of visually describing
what your process should do and instructing World of Workflows to
perform tasks that you want it to perform.

### Types

Types give you access to the inbuilt database within World of Workflows.
Here you can add, retrieve and manipulate data across the system.

### Views

While Types allows you to manipulate the underlying data, **Views**
allows you to choose what the users of the system see. You can choose
which fields they see and apply filters. Within views, you can easily
set up navigation hierarchies for end users.

### Tasks

World of Workflows has a built-in task management and queuing system
that allows for tasks that not only instruct users but allow them to
manipulate data in task and have multiple options for task completion.
This tab gives administrators access to the entire list of tasks.

### Import

The Import system allows you to import any data from CSV using an
intuitive and powerful import wizard.

### Workflows University

This site is available from within the application at any time.

### Documentor

The documentor automatically creates a document of the database, data
dictionary, workflows and contents of the workflows for your records.

### Privacy Policy

This is the World of Workflows Privacy Policy

### Settings

The Settings area allows you to back up the database, restart the
service and check if the service is running.

### Plugins

Plugins are small applications that extend the Workflows in World of
Workflows to make it easier to work with other systems, such as
Microsoft 365, Xero or OpenAI.

### Solutions

Solutions allow you to import and export your entire configuration (or
part of it) for loading on another World of Workflows system.

### Swagger

This shows API Definitions as it applies to your own World of Workflows
installation. The API extends as you create new Types and publish new
workflows.

### Account

This shows the information on your account, license key and more.

# Getting Started / My First Workflow

In this section, we're going to step you through getting started,
creating a **Type** and **Data**, Creating a **Workflow** and working
with a task.

We're going to start with a customer service example. We're going to
configure World of Workflows with a system to manage sales leads. We'll
be able to categorize these leads and create a system for follow-up and
closing them.

In addition, we'll create several **views** so you can allow your users
to easily navigate the data.

Follow the steps below to complete this exercise.

1.  [Creating a data structure](./create_data_structure.html) - In this
    section, we create the structure for the data we are going to use.
    We commonly create solutions by working with data first.
2.  [Adding data](./adding_data.html) - In this section we add data for
    lead status and add our first lead.
3.  [Create Workflow](./create-workflow.html) - In this section, we
    create a workflow to follow up a lead with a task.
4.  [Try it out](./try_it_out.html) - Try out the workflow and see the
    tasks you created

# Creating a data structure

We're going to create two types:

-   **Lead** contains information on the lead
-   **LeadStatus** contains the status of the lead.

*Note: we use singular names by convention when creating types.*

## Creating Types

1.  Navigate to Admin -\> Types ![Types](../images/04_image.png)
2.  Click **+** to create a New Type ![New
    Lead](../images/04_image-1.png)
3.  Enter the Name as **Lead** and the Description as **A Lead**. Click
    **Save**.
4.  Click **+** to create another new Type
5.  Enter the Name as **LeadStatus** and the Description as **Status of
    a Lead**
6.  Types should look like the screenshot below. If not, use the delete
    or edit buttons to make the relevant amendments. ![Created
    Types](../images/04_image-2.png)

## Creating Columns

1.  Click the ![Edit Type Columns](../images/04_image-3.png) button next
    to the **Lead** Type.
2.  As you can see, we have an existing column, the Title Column. *Title
    columns are important but you can change their name, display name,
    description, display order and whether they are visible.* ![Initial
    Columns](../images/04_image-4.png)
3.  Click **+** to add a new Column ![Add
    Column](../images/04_image-5.png)
4.  Enter details as follows:
    1.  **Column Name:** FullName
    2.  **Display Name:** Full Name
    3.  **Description:** The Full name of the lead
    4.  **DataType:** String
    5.  **Display Order:** Leave Blank
    6.  **Visible:** Checked
    7.  **Indexed:** Not Checked
5.  Click **Save & Add Another**
6.  Enter Details as follows:
    1.  **Column Name:** Email
    2.  **Display Name:** Email
    3.  **Description:** The Email address of the lead
    4.  **DataType:** String
    5.  **Display Order:** Leave Blank
    6.  **Visible:** Checked
    7.  **Indexed:** Not Checked
7.  Click **Save & Add Another**
8.  Enter Details as follows:
    1.  **Column Name:** Description
    2.  **Display Name:** Description
    3.  **Description:** The Description of the lead
    4.  **DataType:** String
    5.  **Display Order:** Leave Blank
    6.  **Visible:** Checked
    7.  **Indexed:** Not Checked
9.  Click **Save & Add Another**
10. Enter Details as follows:
    1.  **Column Name:** Status
    2.  **Display Name:** Status
    3.  **Description:** The status of the lead
    4.  **DataType:** Reference
    5.  **Object Type:** LeadStatus
    6.  **Display Order:** Leave Blank
    7.  **Visible:** Checked
    8.  **Indexed:** Not Checked
11. Click **Save**
12. Your Lead Columns should look like the screenshot below. If not, use
    the edit and delete buttons to fix it. ![Lead
    Columns](../images/04_image-6.png)

You have successfully created the data structure so can go to **[step 2,
adding data](./adding_data.html)**

# Adding Data

## Status

In this section, we are going to add some lead statuses, and our first
couple of leads.

1.  Navigate to **Admin** -\> **Types** -\> **LeadStatus**
    ![LeadStatusClear](../images/04_image-7.png)
2.  Click **+** to add a new Lead Status ![Add Lead
    Status](../images/04_image-8.png)
3.  Add details as follows:
    1.  **Title:** New
4.  Click **Save & Add Another**
5.  Add details as follows:
    1.  **Title:** Qualified
6.  Click **Save & Add Another**
7.  Add details as follows:
    1.  **Title:** Closed
8.  Click **Save**
9.  LeadStatus will look like the screen shot below. Click on the Id of
    items to change or delete them. ![Lead
    Statuses](../images/04_image-9.png)

## Leads

1.  Navigate to **Admin** -\> **Types** -\> **Lead**
    ![LeadsClear](../images/04_image-10.png)
2.  Click **+** to add a new Lead ![Add New
    Lead](../images/04_image-11.png)
3.  Add details as follows:
    1.  **Title:** World of Workflows
    2.  **Full Name:** Nick Beaugeard
    3.  **Email:** nick@worldofworkflows.com
    4.  **Description:** opportunity to sell our product to World of
        Workflows
    5.  **Status:** New
4.  Click **Save**
5.  The list of leads should look like the screen shot below. *Note in
    this case I modified a mistake, so the modified date is greater than
    the created date.* ![Created Lead](../images/04_image-12.png)

You have successfully created the data so can go to **[step 3, create
workflow](./create-workflow.html)**

# Create Workflow

1.  Navigate to **Admin** --\> **Workflows** ![Workflow
    Dashboard](../images/04_image-13.png)
2.  Click **Create Workflow** ![Workflow
    Canvas](../images/04_image-14.png)
3.  Click the ![Cog](../images/04_image-15.png) icon in the top right
    ![Workflow Settings](../images/04_image-16.png)
4.  Make the name **Review Lead** and click **Save**
5.  Click **Add Activity**
6.  On the left, choose **Data** ![Activity
    Picker](../images/04_image-17.png)
7.  Scroll down and choose **Object Instance Trigger** ![Object Instance
    Trigger](../images/04_image-18.png)
8.  Drag the new activity to a position on the left ![Dragged
    Activity](../images/04_image-19.png)
9.  **Right Click** the **Object Instance Trigger** and click **Edit**
    ![OIT Properties](../images/04_image-20.png)
10. Select **Lead** under Object Type Id and Choose the **Common** Tab.
11. Change the **Name** to **LeadTrigger** and the Display Name to
    **Review Lead** ![Common Settings](../images/04_image-21.png)
12. Click **Save**
13. Click **Add Activity**
14. On the left, choose **Tasks** and choose **Task Create**
15. Drag the **Task Create** activity to the right of the **Review
    Lead** Activity ![Two Activities](../images/04_image-22.png)
16. Now using the blue dot to the right of the **Review Lead** activity,
    connect it to the blue circle on the Task Create Activity. It should
    look like the below: ![Connected
    Activities](../images/04_image-23.png)
17. Right Click the **Task Create** activity and choose **Edit** ![Task
    Editor](../images/04_image-24.png)
18. To the right of the Title, click
    ![Elipsis](../images/04_image-25.png) and choose **Liquid**
19. In the Title Type
    `Review Lead #{%raw%}{{Activities.LeadTrigger.InstanceId}}{%endraw%}`
20. In the description, type
    `# Review Lead     It is time to review this lead. Please review it`
21. Leave the Severity, Priority and Due. ![Task
    Editor](../images/04_image-27.png)
22. In the related ObjectId, click ![Elipsis](../images/04_image-25.png)
    and choose **Liquid**
23. Enter `{%raw%}{Activities.LeadTrigger.ObjectId}}{%endraw%}` in the
    Related Object Id
24. In the Data Questions Add `Status` for **Name** and `Status` for
    **Value**
25. In Branches, add the text "Done" and click Enter. ![Task Editor
    2](../images/04_image-28.png)
26. Click **Save**
27. Click **Publish**

**Congratulations.** You have created your first workflow. When you
click the option on a lead it should create a task to update the lead.
You can now [Try it out](./try_it_out.html).

**Note:** The **Liquid** system is a way of reading and writing data
between activities. In World of Workflows, we support Liquid and
JavaScript for this.

# Try it Out

1.  Navigate to **Admin** --\> **Types** --\> **Lead**
    ![Leads](../images/04_image-29.png)
2.  Click the Id for the Lead (In this case 4) ![Lead
    Details](../images/04_image-30.png)
3.  Click the Workflows Tab ![Workflows Tab](../images/04_image-31.png)
4.  Click **Review Lead**
5.  Navigate to **Tasks** ![Tasks](../images/04_image-32.png)
6.  Click **Pick** next to the task. This moves the task from the
    available queue into your queue. ![Picked
    Task](../images/04_image-33.png)
7.  Click the Task in the **My Tasks** queue. ![Review
    Task](../images/04_image-34.png)
8.  Here you can change the status of the lead, click **Done** and
    Submit to save. You can also **Unassign** the lead if you wish.

**Congratulations.** You have now completed our first getting started
guide. You have created a lead management system that allows for
task-based reviews of leads.

# The World of Workflows Integrated Database

The User Configurable Database in World of Workflows is designed to help
you manage your data efficiently and effectively. This chapter will
provide an overview of the database functionality and guide you through
the process of creating and managing tables, importing and exporting
data, searching and filtering records, and integrating with external
databases or APIs.

## Overview of the User Configurable Database functionality

The User Configurable Database offers a flexible and intuitive platform
for managing your data, allowing you to:

-   Create custom *Types* (tables) with user-defined fields, data types,
    and relationships.
-   Import and export data in various formats, such as CSV
-   Search, filter, and sort records to quickly find the information you
    need.
-   Integrate with external databases and APIs for seamless data
    synchronization and access.
-   Use the database directly within workflows and tasks

## Creating and managing tables

To create a new *Type* (table) in the User Configurable Database, follow
these steps:

1.  Navigate to the User Configurable Database section in World of
    Workflows, by going to *Admin* then *Types*
2.  Click on the **Add Types** button.`<br>`{=html} ![Add New
    Type](../images/05a_image.png)
3.  Enter a name for the table and a brief description (optional).
4.  Click **Save** to confirm.

Once your *Type* is created, you can begin adding fields:

1.  In the list of types, identify the type or table you want to work
    with.
2.  Click ![Edit Columns](../images/05a_image-1.png)
3.  Click on the **Add Column** button.`<br>`{=html} ![Add
    Column](../images/05a_image-2.png)
4.  Enter a name for the column and choose the Name, Display Name,
    Column Description and an appropriate data type (e.g., text, number,
    date, etc.).
5.  Configure additional column properties, such as display order,
    visible and indexed.
6.  Click **Save** to confirm or **Save & Add Another** to save and add
    another.

To manage existing tables, you can:

-   Edit table names, descriptions, and field properties by clicking on
    the corresponding ![Edit](../images/05a_image-3.png) button.

-   Delete tables or fields by clicking on the
    ![Delete](../images/05a_image-4.png) button (be cautious, as this
    action is irreversible and is designed to work only if you don't
    have any entries for this *Type*).

## A word about data types

Every time you create a column, it needs to have a data type. This tells
World of Workflows how to display the data and is efficient in how the
data is stored by the database. The list of available data types is
below:

  -----------------------------------------------------------------------
  Name         Description                      Example Uses
  ------------ -------------------------------- -------------------------
  Big Integer  The Big Integer represents an    Commonly used as Id's for
               arbitrarily large integer whose  items where they may grow
               value *in theory* has no upper   large, this is the type
               or lower bounds. Integers are    used as the Id for every
               whole numbers, positive or       object in the system.
               negative.                        

  Reference    Connects two Types together by a The Title column of the
               key field.                       referenced Type will be
                                                used in dropdowns of the
                                                referenced Type's data

  Integer      Whole number, positive or        The integer is a whole
               negative.                        number which commonly is
                                                used to represent a count
                                                of objects, e.g. 3 people
                                                or 5 cats.

  Decimal 2    Number with two decimal places.  This is a number with two
                                                decimal places, commonly
                                                used to represent
                                                currency

  Decimal 5    Number with five decimal places  This is commonly used to
                                                represent the results of
                                                calculations, or distance

  True/False   The Boolean or Bit Type          This is used to represent
                                                where we have a state
                                                that can be true/false,
                                                yes/no or off/on.

  String       A collection of characters       The string can store
                                                words, sentences,
                                                paragraphs, books or any
                                                other data stored as
                                                Base64Encoded.

  DateTime     The Date and Time                Used to store instances
                                                in time, this is stored
                                                in the system as
                                                UTC\[\^1\] and is
                                                presented in the system
                                                in local time.

  Url          Uniform Resource Locator         This is a web link

  Embed        Embed Code                       Not currently used, this
                                                is a string which gets
                                                rendered in the page as
                                                an embed code.
  -----------------------------------------------------------------------

## Relationships

You can create relationships between types in World of Workflows. You do
this by adding a column with the data type **Reference** and choosing
the type you would like to relate to.

Relationships allow you to define how objects are related to each other.

However, World of Workflows offers a single way to create relationships,
but you can implement the three types of relationships by following the
guide below:

Imagine we have Type A and Type B

-   A one-to-one (1:1) relationship is easily established by adding a
    column in Object A with data type Relationship and Type the type of
    Object B.
-   A one-to-many (1:∞) relationship between A and B is established by
    adding a column in Object B with data type reference and Type the
    type of Object A.
-   A many-to-many (∞:∞) relationship between objects A and B is created
    by creating a new type (Type C). This has two columns, one is a
    relationship with the type of Object A and the other is a
    relationship with the type of Object B.

{: .highlight } \> Whilst the first two types will appear in the user
interface, the interface does not understand many to many relationships,
however it is possible to develop a workflow that understands this
structure, and therefore a custom web UI that is able to work with and
manipulate it..

## Editing Columns

To edit a column, Navigate to the type itself by going to *Admin* then
*Types* and then clicking the type.

![Types](../images/05a_image13.png)

You can then click *Columns* to see the list of columns and click
**Edit** to edit each one.

![Columns](../images/05a_image14.png)

## Deleting Types

If you navigate to *Admin* then *Types* you can click **Delete Type**
icon under Actions to delete a type. *Note: this only works if there are
no data instances in the type.*

![Delete Type](../images/05a_image15.png)

Clicking **Delete** will immediately delete the type. If you have done
this in error, you can easily recreate the type.

## Editing Data

World of Workflows offers sorting, filtering, inline editing and bulk
editing of your data. These features make it incredibly simple to
manipulate your data in the system to ensure you have the correct data
ready to work with.

Clicking on *Admin* then *Types* then clicking the name of the type you
want to work with takes you to the data editing screen

![Edit Type](../images/05a_image16.png)

This screen allows you to manipulate your data as follows:

## Columns

Columns can be resized and reordered. You can resize columns by hovering
over the vertical separator between the column headers, clicking and
dragging left and right.

Columns can be re-ordered by clicking a column header and dragging it to
a new location.

## Sort and Filter

To sort your data by column, click the **\^** icon in the column header.
When sorted the **\^** icon in the column header will be highlighted as
shown below:

![Sort](../images/05a_image17.png)

To filter your data, click the ![Filter Icon](../images/05a_image18.png)
icon in any column header. This will bring up the filter window.

![Filter](../images/05a_image19.png)

Either type into the filter window or click the null or not-null radio
buttons to create your filter.

When a column is filtered, the filter button will be shown as
highlighted

![Filtered](../images/05a_image20.png)

To clear all filters, click the
`<img src="../images/05a_image21.png" width="24"/>`{=html} button on the
top of the data table, and to edit filters, click the Filters dropdown
at the top of the table.

## Add Columns

To add a column, click the
`<img src="../images/05a_image23.png" width="24"/>`{=html} button on top
of the data table. You will see the same interface as in add column,
above.

## Edit Columns

To edit columns, click the
`<img src="../images/05a_image24.png" width="24" />`{=html} button on
top of the data table. You will then be navigated to the column editing
screen.

![Edit Columns](../images/05a_image25.png)

## Add Item

To add an item, click the
`<img src="../images/05a_image26.png" width="24" />`{=html} button. The
same slide-in will appear as in *add an item* above.

## Inline edit

Clicking `<img src="../images/05a_image27.png" width="24"/>`{=html} will
change the mode to Inline Edit. From here, you can individually edit all
the items.

![Inline Edit](../images/05a_image28.png)

Click `<img src="../images/05a_image29.png" width="24" />`{=html} to
exit inline edit.

## Bulk Delete

To bulk delete, enter inline edit mode, select several items by clicking
the checkboxes and click the
`<img src="../images/05a_image30.png" width="24"/>`{=html} button.

![Bulk Delete](../images/05a_image31.png)

## Bulk Edit

To bulk Edit, enter inline edit mode, select a number of items and click
`<img src="../images/05a_image32.png" width="24" />`{=html}. By entering
data in the slide-in, you will be able to edit multiple rows at once.

![Bulk Edit](../images/05a_image33.png)

## Refresh data

To refresh the data, click the
`<img src="../images/05a_image34.png" width="24" />`{=html} button on
the top right which will reload the data for you.

## To Choose the number of rows shown

To choose the number of rows shown, click the page size dropdown, bottom
left.

![Page Size](../images/05a_image35.png)

## Move between pages

To move between pages, click the **\<** or **\>** buttons on the bottom
middle of the data editor.

![Page Navigation](../images/05a_image36.png)

## Export

To export your data, click the
`<img src="../images/05a_image22.png" width="24"/>`{=html} button at the
top of the data table. Your browser will automatically download a CSV of
that data. `Export` respects any `Filter` you have applied.

# Importing and exporting data

This chapter focuses on how to move data into and out of World of
Workflows.

World of Workflows admin page supports data import and export in CSV.
Your workflows can of course use any sort of data.

## Export

To export data, follow these steps:

1.  Navigate to *Admin* -\> *Types* and select the desired table.
2.  Click on the
    `<img src="../images/05a_image37.png" width="24" />`{=html} button.
3.  A CSV file will shortly download.
4.  You can also [filter](./working-with-data.html#sort-and-filter) the
    data and the export will only export the filtered data.

## Import

The following section describes how to import data into World of
workflows.

1.  Prepare a CSV with the required data and remove any columns that you
    do not want to import. *Column removal is not mandatory but helps
    speed up the process.*

    Note that this process can be used ***BEFORE*** a data type is
    created: `Import` will create the structure you require in the User
    Configuarable Database.

2.  Navigate to *Admin* -\> *Import*
    ![Import1](../images/05a_image38.png)

3.  Click **Upload a file** and browse to the CSV file you want to
    upload.\
    ![Import2](../images/05a_image39.png)

4.  When you see the correct details for your CSV file, click **Next.**
    ![Import3](../images/05a_image40.png)

5.  If you are creating a new Type with this import, under the **Type**
    dropdown choose **New** and name the new type. If you are importing
    data to an existing *Type*, select the type name in the dropdown and
    click **Next.** ![Import4](../images/05a_image41.png)

6.  The system will automatically suggest fields for your import. You
    can change these and choose:

    1.  **Skip** - This column will be ignored

    2.  **New** - A new Column in your Type will be created in the
        database from the data in your CSV file. You can enter a Name,
        Data Type, Display Name, Description, Display Order, whether the
        column should be Visible and whether it will be a Title column.

        > What is a `Title` column? Every Type has 1 Title column. By
        > default it is called Title, but you can rename it.

        > The 'title' column in a Type typically represents a key
        > attribute or identifier that provides a descriptive or
        > meaningful name for each record or entry within that Type.
        > This column is often used to display a readable and
        > user-friendly name or label for the items, making it easier
        > for users to understand and manage the data associated with
        > that Type.

        > It will be used in the dropdown when another Type uses this
        > Type as a Reference field.

    3.  \<Column name\> -- choose an existing column name and your CSV
        data will be added to this column.

    4.  **Id** - This is the match to the ObjectId or Instance Id and
        will update records with the same Id if they exist in the
        database.

7.  Click **Next** when your fields are correct\
    ![Import5](../images/05a_image42.png)

8.  Click **Import** to copy the data from your CSV file into the
    database. ![Import6](../images/05a_image43.png)

# Setting up database backups

*This section details implementations using SQLite only. Implementations
using SQL Server are expected to perform their own backups.*

World of Workflows can be configured to take a backup of the full
database including all workflows, activities, variables, etc. This is
done using the Backup feature. The backup feature is configured in the
appsettings.json file as follows:

``` json
{
    "Backup": true,
    "BackupToAzureStorage": false,
    "BackupStorageConnectionString": ""
}
```

Setting `Backup` to `true` will configure the system to save a backup
file every time the server is stopped. This creates a date stamped file
in the data folder.

Setting `BackupToAzureStorage` to `true` will configure the system to
save a backup file to Azure Storage every time the server is stopped.
This creates a date stamped file in the Azure Storage account.

Configure the Azure Storage Account using the
`BackupStorageConnectionString` setting.

To recover a backup, obtain the file you want and overwrite the file
`\App`{=tex}\_data`\worldofworkflows`{=tex}.db with the backup file.
