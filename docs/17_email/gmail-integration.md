---
title: GMAIL Integration
parent: Email
layout: default
nav_order: 18
has_children: false
---

# Gmail Integration

## Overview
Workflows contains a system to send emails witghout using any Plugiuns or HTTP calls. To do this it needs a compatible email server and the appropriate configuration. This document describes how to configure Workflows to send emails via gmail.

## 1. Get an Application Password
To send emails via gmail, you need to get an application password. This is a password that is specific to the application you are using. This is required because gmail has a security feature that prevents applications from sending emails. To get an application password, follow these steps:

1. Go to your [Google Account](https://myaccount.google.com/)
2. Select Security.
3. Under "**Signing in to Google,**" select App Passwords. You may need to sign in.  If you can't see it, use the Search bar to look for `App Passwords`.   If you don’t have this option, it might be because:
   1. 2-Step Verification is not set up for your account.
   2. 2-Step Verification is only set up for security keys.
   3. Your account is through work, school, or other organisation.
   4. You turned on Advanced Protection.
4. At the bottom, choose Select app and choose Other (Custom Name) and then enter "Workflows".
5. Then choose Generate. Copy the Password provided.

## 2. Configuration Workflows
In your Workflows Application Folder, locate a file called appsettings.json

Edit the SMTP section as follows:

```json
"Smtp": {
			"Host": "smtp.gmail.com",
			"Port": "587",
			"DefaultSender": "<YOUR GMAIL ADDRESS>",
			"Username": "<YOUR GMAIL ADDRESS>",
			"Password": "<APPLICATION PASSWORD>",
			"RequireCredentials": true,
		    "SecureSocketOptions": 3,		
			"EnableSSL": true
		},
```

## 3. Restart Workflows

