---
title: Send html email using Office 365
parent: Sample Workflows
grand_parent: Patterns & Practices
layout: default
nav_order: 10
has_children: false
---

# Send html email using Office 365

World of Workflows can easily send HTML Email using Office 365 with a simple workflow, as follows:

*Please esure you have established Office 365 credentials. See [here](../../20_solutions/sample solutions/AIProspector/register-office365-application.html)*

## Step 1:
> Activity: **SetVariable**

Save the HTML Email to a Variable, called ```EmailBase```

![](2023-03-09-08-37-55.png)

## Step 2:
> Activity: **SetVariable**

Use Javascript to "Stringify" the email, and save this in a new variable, called ```Email```

![](2023-03-09-08-38-55.png)

## Step 3:
> Activity: **Send HTTP Request**

Send an Http request to Microsoft Graph to Send the email

- Url: ```https://graph.microsoft.com/v1.0/me/sendMail```
- Method: ```POST```
- Content:

    ```json
    {
    "message": {
        "subject": "EmailSubject",
        "body": {
            "contentType": "HTML",
            "content": {{ Variables.Email | markup }}
        },
        "toRecipients": [
            {
                "emailAddress": {
                    "address": "<RECIPIENT EMAIL>"
                }
            }
        ],
        "ccRecipients": [
            {
                "emailAddress": {
                    "address": "<CC EMAIL>"
                }
            }
        ]
    },
    "saveToSentItems": "true"
    }
    ```

Content Type: ```application/json```

Read Content: ```Checked```

Response Content Parser: ```Auto Select```

Supported Status Codes: ```202```

On the ```Advanced``` tab, select the M365 credentials under ```Authorization```
