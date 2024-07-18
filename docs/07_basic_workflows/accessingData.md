---
title: Accessing data
parent: Basic Workflows
layout: default
nav_order: 20
has_children: false
---


## Accessing data 

Workflows need to create, read, update and delete data.  Temporary data is held in variables.  Variables exist only while the workflow is running.

To store data outside of the context of a workflow we use the [User Configurable Database](..\05_Database\README.html).  This allows you to store data ( `object instances`) in tables (`Types`).

Use [List Object Instances](..\12_workflow_activities/04_data/README.html#list-object-instances), [Get Object Instance](..\12_workflow_activities/04_data/README.html#get-object-instance), [Update Object Instance](..\12_workflow_activities/04_data/README.html#update-object-instance), [Delete Object Instance](..\12_workflow_activities/04_data/README.html#delete-object-instance) to interact with the User Configurable Database.

> **Remember**: `Get Object Instance` accesses the data record in the database at that moment in time.  You will then treat that data as a `variable` in your workflow. If your workflow then changes the `variable` you might want to write that change back to the database, using `Update Object Instance`.

For more details, see [Working with Data](..\08_handling%20_the_data/README.html)

