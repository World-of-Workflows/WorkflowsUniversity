---
title: Tasks in Workflows
layout: default
nav_order: 5
parent: Tasks
grand_parent: Getting Started
---

# Tasks in Workflows

Creating workflows to work with tasks commonly involves working with the **Task Create** Activity.

This activity takes the following information

- **Title** - This is the title of the task and is the information shown to the user in the task lists. It can be created using plain text, JavaScript or Liquid.
- **Task Description** - This is the description of the task and contains instructions for the user on how to perform the task. It can be formatted using [markdown](../24_reference/04-markdown/README.html) - a simple and easy to use language you can use to format almost any document.
- **Severity** - This is the severity of the task and is used to manage the default order in task lists.
- **Priority** - This is the priority of the task and is used to manage the default order in task lists.
- **Due** - This is the number of days from the date the task was created for the task to be overdue
- **Related Object InstanceId** - This determines the object that the user can manipulate in the task. Tasks have the ability to allow a user to update chosen fields of an object of choice from the database. This is really useful when asking an end user to enter data into the system.
- **Data Questions** - This chooses the fields that the user is going to use to update data. You choose the display label for the user in the Name location and the field name in the Value location.
- **Variable Name** - If the user updates an object, place the object into the variable name you choose.
- **Branches** - Here you can choose to add branches to the workflow. These appear as action buttons for the end user.

The workflow will wait once a task has been created for a user to complete it.

Here is an example task:
![](../images/2024-07-09-14-01-31.png)

Once the workflow generates the task, it is available for a user to pick.

![](../images/2024-07-09-14-07-55.png)

Once a user PICKs the task, they can display it and perform the requested action:
![](../images/2024-07-09-14-06-58.png)

## Direct access to a task via URL

Tasks can also be accessed directly via a URL.  The format of the URL will be:  

{% raw %}

`<servername>/tasks/{id}`  

For example   
`https://localhost:7063/tasks/1234`

This will present the task in the browser window.  If not yet assigned to someone, it will first Pick (assign) the task.  

The {id} is the number of the task, as displayed in the `Tasks -> Available Tasks` window.  

The user can then process the task as if they were in the World of Workflows native user interface, and the workflow will resume.  

The URl can also contain a `returnurl` parameter to direct the user to a specific URL when the task is completed.  

`<servername>/tasks/{id}?returnurl={url}`

For example  
`https://localhost:7063/tasks/1234?returnurl=admin`   

will present task number 1234 to the user and then return the user to the 'admin' page when the task is completed.

{% endraw %}