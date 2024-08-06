---
title: Access The Graph API
layout: default
parent: Reference
nav_order: 2
---

# Access the Graph API from Business Edition running on Azure

World of Workflows Business Edition running in an Azure Subscription is already set up for you to integrate with the MS Graph API.

Continue [here](#required-information)
  


# Access the Graph API from Personal Edition, or Business Edition not running on Azure

If you do not have an Azure App Registration you will need to create one.  In order to access the Microsoft Graph API, you will need to create an application in Microsoft Entra ID and configure it to work with your copy of World of Workflows.

## Prerequisites

Before you start, you will need:
-  a user account with the ability to register and configure applications in Entra Id.
- The URL of your World of Workflows Server (```https://localhost:7063``` for PE).

## Procedure

1. Open the Microsoft Entra Id Poral [here](https://portal.azure.com/#view/Microsoft_AAD_IAM/ActiveDirectoryMenuBlade/~/Overview){:target="_blank"}.
2. Navigate to **App Registrations** or click [here](https://portal.azure.com/#view/Microsoft_AAD_IAM/ActiveDirectoryMenuBlade/~/RegisteredApps){:target="_blank"}.
3. Click **+ New registration**
4. Type the Name, e.g. **World of Workflows**
5. Ensure the supported account types is set to **Accounts in this organizational directory only**.
6. Select **Web** for the redirect URI and set the URL to be ```<<Server-Name>>/v1/oauth2/callback``` where ```<<Server-URL>>``` is the URL for the World of Workflows Server.
7. Click **Register**

## Required Information

1. Open the Microsoft Entra Id Portal [here](https://portal.azure.com/#view/Microsoft_AAD_IAM/ActiveDirectoryMenuBlade/~/Overview){:target="_blank"}.
2. Navigate to **App Registrations** or click [here](https://portal.azure.com/#view/Microsoft_AAD_IAM/ActiveDirectoryMenuBlade/~/RegisteredApps){:target="_blank"}.
3. Click `All Applications`
4. Search for `World of Workflows`
5. Select the `Server` app registration
Complete the following table:

| Item | Example | Value |
| -- | -- | -- |
| Authorization Endpoint | ```https://login.microsoftonline.com/6a7e7118-0425-44ee-9f06-e11f0c970cda/oauth2/v2.0/authorize``` | |
| Token Endpoint | ```https://login.microsoftonline.com/6a7e7118-0425-44ee-9f06-e11f0c970cda/oauth2/v2.0/token``` | |
|  Client Id | ```63ec3b9b-3ec4-490f-baf9-9f4154c48f2f``` | |
| Secret | ```B.T8Q~14WmaJ7N45e7DXVEuE5KbL0mX2C0mnvaJM``` | |
| Scope | ```offline_access user.read mail.readwrite mail.readwrite.shared mail.send.shared``` | |

## Gathering Required Information

### Authorization and Token Endpoints

1. In the application registration, Navigate to **Overview** and click **Endpoints**.
 ![](../images/2024-08-06-14-31-00.png)
2. The **OAuth 2.0 authorization endpoint (v2)** is the Authorization endpoint
3. The **OAuth 2.0 token endpoint (v2)** is the Token Endpoint.

### Client Id

1. In the Application registration, navigate to **Overview**
2. The **Client Id** is the **Application (client) ID**
![](../images/2024-08-06-14-31-46.png)

### Secret

1. In the application registration, navigate to **Certificates and Secrets**
2. Click **+ New Client Secret**
3. Give your secret a name and choose and expiry date.
![](../images/2024-08-06-14-32-12.png)
4. Copy the **Value**. This is the Secret
![](../images/2024-08-06-14-32-28.png)

{: .key }
You will only get once chance to save this secret.  If you later need the secret value, you will need to create another secret.

### Scope
The Scope determines what you want to perform in Office 365. Scopes are documented [here](https://learn.microsoft.com/en-us/graph/permissions-reference).