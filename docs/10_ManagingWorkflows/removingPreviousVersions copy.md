---
title: Removing Previous Versions of a workflow
parent: Managing Workflows
grand_parent: Beginner's Guide to Workflows
layout: default
nav_order: 5
has_children: false
---


# Removing previous versions

Each time a workflow is Published, a new copy is created in the database.  This provides the ability to roll back to previous versions.  To remove old versions you can Export a workflow, delete the workflow and reimport it.  
This should be a regular task you perform when developing new workflows to maintain the performance of your World of Workflows instance.

## Procedure:  

At the top of every workflow there is a `Publish` button.  use the arrow beside the button to expose this menu  
<img src="../images/2024-07-11-13-09-11.png" alt="Import button graphic" style="width: 250px; height: auto; border-radius: 10px; box-shadow: 2px 2px 5px grey;" />
1. Save your worklflow to disk by Exporting it  
   This creates a `<workflowname>.json` file in your browser's downloads folder 
2. Delete your workflow.  

   > Don't worry: all your work is saved in the `<workflowname>.json` file!


3. Create a new workflow  
<img src="../images/2024-07-11-12-59-23.png" alt="Import button graphic" style="width: 150px; height: auto; border-radius: 10px; box-shadow: 2px 2px 5px grey;" /> 
4. Import the workflow from disk
   Click the arrow beside Publish again, click Import and find the `<workflowname>.json` file from step 1
5. Publish the new workflow.  
   It will be an exact copy of the original workflow, but it will have no previous versions.

