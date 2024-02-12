---
title: Access The Graph API
layout: default
parent: Developer Reference
nav_order: 2
---

# Access the Graph API

In order to access the Microsoft Graph API, you will need to create an application in Microsoft Entra ID and configure it to work with your copy of World of Workflows.

## Prerequisites

Before you start, you will need:
-  a user account with the ability to register and configure applications in Entra Id.
- The URL of your World of Workflows Server (```https://localhost:7063``` for PE).

## Procedure

1. Open the Microsoft Entra Id Poral [here](https://portal.azure.com/#view/Microsoft_AAD_IAM/ActiveDirectoryMenuBlade/~/Overview).
2. Navigate to **App Regitstrations** or click [here](https://portal.azure.com/#view/Microsoft_AAD_IAM/ActiveDirectoryMenuBlade/~/RegisteredApps).
3. Click **+ New registration**
4. Type the Name, e.g. **World of Workflows**
5. Ensure the supported account types is set to **Accounts in this organizational directory only**.
6. Select **Web** for the redirect URI and set the URL to be ```<<Server-Name>>/v1/oauth2/callback``` where ```<<Server-URL>>``` is the URL for the World of Workflows Server.
7. Click **Register**

## Required Information

Complete the following table:
| Item | Example | Value |
| -- | -- | -- |
| Authorization Endpoint | ```https://login.microsoftonline.com/6a7e7118-0425-44ee-9f06-e11f0c970cda/oauth2/v2.0/authorize``` | |
| Token Endpoint | ```https://login.microsoftonline.com/6a7e7118-0425-44ee-9f06-e11f0c970cda/oauth2/v2.0/token``` | |
|  Client Id | ```63ec3b9b-3ec4-490f-baf9-9f4154c48f2f``` | |
| Secret | ```B.T8Q~14WmaJ7N45e7DXVEuE5KbL0mX2C0mnvaJM``` | |
| Scope | ```offline_access user.read mail.readwrite mail.readwrite.shared mail.send.shared``` | |

## Gathering Required Information

### Autorization and Token Endpoints

1. In the application registration, Navigate to **Overview** and click **Endpoints**.
2. The **OAuth 2.0 authorization endpoint (v2)** is the Authorization endpoint
3. The **OAuth 2.0 token endpoint (v2)** is the Token Endpoint.

### Client Id

1. In the Application registration, navigate to **Overview**
2. The **Client Id** is the **Application (client) ID**

### Secret

1. In th application registration, navigate to **Certificates and Secrets**
2. Click **+ New Client Secret**
3. Give your secret a name and choose and expiry date.
4. Copy the **Value**. This is the Secret

### Scope
The Scope determines what you want to perform in Office 365. Scopes are documented [here](https://learn.microsoft.com/en-us/graph/permissions-reference).