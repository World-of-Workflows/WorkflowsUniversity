---
title: Azure Administration (WIP)
layout: default
parent: Plugins
grand_parent: Getting Started
nav_order: 8
---

# Azure Administration - Work in progress
This plugin library provides activities for working with Azure Resource Group.

{: .key}
This plugin is in development.  Contact us for details.

## Getting Started
To Get started, you will need to generate some authentication values for your azure environment.

To do this:

1. Setup the Azure CLI
2. using az login, login to the appropriate subscription
3. run: az ad sp create-for-rbac --name "ElsaAzureAdmin" --role contributor --scopes /subscriptions/xxxxxxxx-xxxx-xxxx-xxxx-xxxxxxxxxxxx --sdk-auth > azureauth.json
   *Where xxx-xxx-xxx* is the id of your subscription  you want to manage.*
4. Create a workflow to talk to Azure
5. Use the Create Arm Client Activity using the information from azureauth.json created in step 3 above
6. Name this activity ```CreateClient```
7. In each following activity, set the Client Parameter to Javascript and enter the following code:
   ```activities.ClientCreate.Output()```

## Activities
The following activities are available in this plugin:

### Create Client
Creates a new Authenticated client to communicate with Azure

### Create Resource Group
Creates a new Resource Group.