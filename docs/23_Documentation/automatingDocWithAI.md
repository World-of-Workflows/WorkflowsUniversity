---
title: Automating documentation with OpenAi
parent: Documentor
layout: default
nav_order: 10
has_children: true
---

# Automating the Extended Documentation with OpenAI

World of Workflows makes integrating with OpenAI very easy.  When you have multiple workflows to document, you might consider writing a workflow to do this.  


## Sample workflow

We have written this 
<a href="./documentExtendedWorkflowAI.json" download>sample workflow </a> for you to implement.  There are a few minor editing steps needed to make it work in your environment.

### Prerequisites  

This sample workflow uses these [Plugins](../19_plugins/README.md)
- OpenAI
- Utilities
  
Additionally, you need 
- Credentials to your World of Workflows instance  
See [here](./automatingDocCredentials.html) for details
- Credentials for ChatGPT
- several  <a href="./Settings-AutomatedDocumentor.csv" download>Settings </a> created

## Implement the sample workflow

1. Install the plugins and restart your instance
2. Import the <a href="./documentExtendedWorkflowAI.json" download>sample workflow </a>.  See [here](../10_ManagingWorkflows/copyingWorkflowsBetweenInstances.html) for instructions.
3. Import the <a href="./Settings-AutomatedDocumentor.csv" download>Settings </a>  and update for your environment.
   - WFDocumentorChatCredentialName => the name of your ChatGPT credentials
   - WFDocumentorHost => Your fully-qualified host name, such as `https://wowcrm.worldofworkflows.com`
   - WFDocumentorOutputLocation => where you want the intermediate markdown files created on your server.  eg `/data/docs`

