# Configuration
This section details the server configuration file ```appsettings.json```  and what the various items mean.

| File | Description |
| -- | -- |
| {<br/>    "AzureAd": {<br/>"Instance": "https://login.microsoftonline.com/",<br/>		"Domain": "contoso.com",<br/>		"TenantId": "```{AZURE AD TENANT ID}```",<br/>		"ClientId": "```{AZURE AD CLIENT ID}```",<br/>		"Scopes": "Workflows.Access",<br/>		"CallbackPath": "/signin-oidc"<br/> 	}, | Azure AD Security Configuration Information |
| "Logging": {<br/>		"LogLevel": {<br/>			"Default": "Information",<br/>			"Microsoft.AspNetCore": "Warning"<br/>		}<br/>	}, | Sets logging verbosity. Values are Debug, Warning or Information. |
|	"AllowedHosts": "*", | Sets which hosts can access the API |
|	"ConnectionType": "SQLite", | Sets the connection type. Values are ```SQLite``` or ```SQL``` |
| 	"ConnectionStrings": {<br/>		"H1WFSQlite": "Data Source=./App_data/huboneworkflows.db",<br/>		"H1SQL": "Server=.;Database=H1Workflows;Trusted_Connection=True;Encrypt=False;",<br/>		"Tuftware": ""<br/>	}, | Sets the connection strings for SQLite and SQLServer and optionally other connectors if required. |
| 	"Elsa": { | Elsa Configuration Information |
| 		"Features": { | Elsa Feature Configuration Information |
|			"DefaultPersistence": { <br/>				"Enabled": true, <br/>				"Framework": "EntityFrameworkCore", <br/>				"ConnectionStringIdentifier": "Sqlite" <br/>			}, | Persistence configuration settings for Elsa. |
|			"DispatcherHangfire": false, | Enables Hangfire Dispatcher |
|			"Console": true, | Enables or disables Console Activities |
|			"Http": true, | Enables or disables HTTP Activities |
|			"Email": true, | Enables or disables Email Activities |
|			"TemporalQuartz": true, | Enables or disables Quartz Activities |
|			"JavaScriptActivities": true, | Enables or disables JavaScript Activities |
|			"UserTask": true, | Enables or disables Elsa User Tasks |
|			"Conductor": true, | Enables or disbales the Conductor |
|			"Telnyx": true, | Enables or disables Telnyx Activities |
|			"File": true, | Enables or disbables File Activities |
|			"Azure": {<br/>				"ServiceBus": {<br/>					"Enabled": false,<br/>					"ConnectionStringName": "AzureServiceBus"<br/>				}<br/>			},| Configures Azure Service Bus |
|			"Webhooks": {<br/>				"Enabled": true,<br/>				"Framework": "EntityFrameworkCore",<br/>				"ConnectionStringIdentifier": "Sqlite"<br/>			}, | Configures WebHooks |
|			"WorkflowSettings": {<br/>				"Enabled": true,<br/>				"Framework": "EntityFrameworkCore",<br/>				"ConnectionStringIdentifier": "Sqlite"<br/>			}, | Configures Workflow Settings |
|			"RabbitMq": {<br/>				"Enabled": false,<br/>				"ConnectionStringIdentifier": "RabbitMq"<br/>			}, | Configures RabbitMQ |
| 			"Mqtt": {<br/>				"Enabled": false<br/>			}, | Configures MQTT |
| 			"ExecuteSqlServerQuery": {<br/>				"Enabled": true<br/>			}, | Enables SQL Query Activities |
|			"Secrets": {<br/>				"Enabled": true,<br/>				"Framework": "EntityFrameworkCore",<br/>				"ConnectionStringIdentifier": "Sqlite"<br/>			}<br/>		}, | Configures Elsa Secrets |
| 		"WorkflowChannels": {<br/>			"Channels": [<br/>				"High",<br/>				"Normal",<br/>				"Low"<br/>			],<br/>			"Default": "Normal"<br/>		}, | Configures Workflow Channels |
|		"Smtp": {<br/>			"Host": "localhost",<br/>			"Port": "2525",<br/>			"DefaultSender": "noreply@acme.com"<br/>		}, | Configures SMTP Settings for Email Activities|
|		"Retention": {<br/>			"SweepInterval": "1:00:00:00",<br/>			"TimeToLive": "30:00:00:00",<br/>			"BatchSize": "10"<br/>		}<br/>	}, | Configures Retention to enable automatic clean up |
|	"MicrosoftGraph": {<br/>		"Scopes": "user.read",<br/>		"BaseUrl": "https://graph.microsoft.com/v1.0"<br/>	}, | Configures Microsoft Graph |
|	"DownstreamApi": {<br/>		"Scopes": "user.read",<br/>		"BaseUrl": "BaseUrl"<br/>	}, | Configures a Downstream API for future use |
|	"AuthorizationUrl": "https://login.microsoftonline.com/d15db61c-9b7a-472e-8f75-b38630bb554c/oauth2/v2.0/authorize", | Configures the OAuth2 Authorization URL |
|	"TokenUrl": "https://login.microsoftonline.com/d15db61c-9b7a-472e-8f75-b38630bb554c/oauth2/v2.0/token", | Configures the OAuth2 Token URL |
|	"ApiScope": "api://b819262a-6ed7-41a3-830d-86fe3eaee869/Workflows.Access", | Configures the Api Scope |
|	"OpenIdClientId": "dd9949f5-1784-452e-8a77-833f9e5b28b9" | Configures the Open Id Client Id

