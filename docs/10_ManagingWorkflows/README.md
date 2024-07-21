---
title: Managing Workflows
layout: default
nav_order: 10
has_children: true
---

# Managing Workflows

The World of Workflows graphical interface allows you to build workflows simply with drag and drop.

The workflows interface provides for the ability to `Publish`, `Export`, `Delete` and `Import` individual workflows.

A workflow is not usable by the World of Workflows engine until it is published.  

## Removing previous versions

Each time a workflow is Published, a new copy is created in the database.  This provides the ability to roll back to previous versions.  To remove old versions you can Export a workflow, delete the workflow and reimport it.  
This should be a regular task you perform when developing new workflows to maintain the performance of your World of Workflows instance.

### Procedure:  

At the bottomn of every workflow there is a `Publish` button.  use the arrow beside the button to expose this menu  
<img src="2024-07-11-13-09-11.png" alt="Import button graphic" style="width: 250px; height: auto; border-radius: 10px; box-shadow: 2px 2px 5px grey;" />
1. Save your worklflow to disk by Exporting it  
   This creates a `<workflowname>.json` file in your browser's downloads folder 
2. Delete your workflow.  
>   Don't worry: all your work is saved in the `<workflowname>.json` file!
3. Create a new workflow  
<img src="2024-07-11-12-59-23.png" alt="Import button graphic" style="width: 150px; height: auto; border-radius: 10px; box-shadow: 2px 2px 5px grey;" />
   
4. Import the workflow from disk
   Click the arrow beside Publish again, click Import and find the `<workflowname>.json` file from step 1
5. Publish the new workflow.  
   It will be an exact copy of the original workflow, but it will have no previous versions.




## Duplicating Workflows

To make a copy of your workflow, follow this procedure:

### Procedure:  

At the bottomn of every workflow there is a `Publish` button.  use the arrow beside the button to expose this menu  
<img src="2024-07-11-13-09-11.png" alt="Import button graphic" style="width: 250px; height: auto; border-radius: 10px; box-shadow: 2px 2px 5px grey;" />
1. Save your worklflow to disk by Exporting it  
   This creates a `<workflowname>.json` file in your browser's downloads folder 
2. Navigate to Admin -> Workflows
3. Create a new workflow  
<img src="2024-07-11-12-59-23.png" alt="Import button graphic" style="width: 150px; height: auto; border-radius: 10px; box-shadow: 2px 2px 5px grey;" />
   
4. Import the workflow from disk
   Click the arrow beside Publish again, click Import and find the `<workflowname>.json` file from step 1
5. Click the cog icon <img src="2024-07-11-13-36-53.png" alt="Import button graphic" style="width: 70px; height: auto; border-radius: 10px; box-shadow: 2px 2px 5px grey; vertical-align: middle;" /> and rename the workflow.  Change both the `Name` and the `Display Name`.
6. Make any desired changes
7. Publish the new workflow.

## Copying between instances

Copying workflows between instances, such as from `Personal Edition` to `Business Edition` is a similar process.

### Procedure:  

At the bottomn of every workflow there is a `Publish` button.  use the arrow beside the button to expose this menu  
<img src="2024-07-11-13-09-11.png" alt="Import button graphic" style="width: 250px; height: auto; border-radius: 10px; box-shadow: 2px 2px 5px grey;" />
1. Save your worklflow to disk by Exporting it  
   This creates a `<workflowname>.json` file in your browser's downloads folder 
3. Navigate to Admin -> Workflows in the other World of Workflows instance.
4. Create a new workflow  
<img src="2024-07-11-12-59-23.png" alt="Import button graphic" style="width: 150px; height: auto; border-radius: 10px; box-shadow: 2px 2px 5px grey;" />  
5. Import the workflow from disk
   Click the arrow beside Publish again, click Import and find the `<workflowname>.json` file from step 1
6. Publish the new workflow.

