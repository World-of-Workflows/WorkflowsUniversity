# Changing Directory

Authentication in HubOne Workflows is performed using Azure Active Directory and this ensures security both through the client application and at the server side. To Change the directory for the application is simple yet slightly involved.

In Order to change the Directory you will follow three steps:

1. Register the application in Azure AD
2. Change the configuration for the Server
3. Change the configuration for the client.

When you have registered the application in Azure AD, you should be able to complete the table below:

| Item | Variable | Value |
| --- | --- | --- |
| Client Id | ```{CLIENT_ID}``` | The Client Id of the application |
| Tenant Id | ```{TENANT_ID}``` | The Tenant Id of the application |
| Scope | ```{SCOPE}``` | The Scope of the application |
| Scope URL | ```{SCOPE_URL}``` | The Full Url of the Scope |
| Domain Name | ```{DOMAIN_NAME}``` | The Domain Name of the Tenant Directory |

## Register the application in Azure Ad

### Create a tenant
Follow the guidance in Quickstart: [Set up a tenant to create a tenant in AAD](https://learn.microsoft.com/en-us/azure/active-directory/develop/quickstart-create-new-tenant).

### Register a server API app
#### Register an AAD app for the Server API app:

1. Navigate to Azure Active Directory in the Azure portal. Select **App registrations** in the sidebar. Select the **New registration** button.
2. Provide a Name for the app (for example, HubOne Workflows).
3. Choose a Supported account types. You may select **Accounts in this organizational directory only (single tenant)** for this experience.
4. The app does require a Redirect URI, make this the URI of your application when running locally, e.g. https://localhost:7063.
5. If you're using an unverified publisher domain, clear the Permissions > Grant admin consent to openid and offline_access permissions checkbox. If the publisher domain is verified, this checkbox isn't present.
   > **Note: If the application doesn't have a scope, azure will prompt you to create an application ID URI**
6. Select Register.
Record the following information:

- Client ID (for example, ```41451fa7-82d9-4673-8fa5-69eff5a761fd```)
- Tenant Id (for example, ```e86c78e2-8bb4-4c41-aefd-918e0565a45e```)
- Domain Name (for example, ```contoso.onmicrosoft.com```): The domain is available as the Publisher domain in the Branding blade of the Azure portal for the registered app.

In Expose an API:

1. Select Add a scope.
2. Select Save and continue.
3. Provide a Scope name (for example, API.Access).
4. Provide an Admin consent display name (for example, Access API).
5. Provide an Admin consent description (for example, Allows the app to access server app API endpoints.).
6. Confirm that the State is set to Enabled.
7. Select Add scope.

Record the following information:

1. Scope Url (for example, ```api://41451fa7-82d9-4673-8fa5-69eff5a761fd/API.Access```)
2. Scope (for example, API.Access)

In Authentication > Platform configurations > Single-page application (SPA):

1. Confirm the Redirect URI of https://localhost:7063/authentication/login-callback is present.
2. In the Implicit grant section, ensure that the checkboxes for Access tokens and ID tokens are not selected.
3. The remaining defaults for the app are acceptable for this experience.
4. Select the Save button.



## Change the configuration for the Server
This file, ```appsettings.json``` resides in the root folder of the application.

```json
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
This file, ```appsettings.json``` resides in the wwwroot folder of the publiches application. Make sure you also remove appsettings.json.br and appsettings.json.gz.
```json
 "AzureAdCli": {
    "Authority": "https://login.microsoftonline.com/{TENANT_ID}}",
    "ClientId": "{CLIENT_ID}",
    "ValidateAuthority": true
  }
```