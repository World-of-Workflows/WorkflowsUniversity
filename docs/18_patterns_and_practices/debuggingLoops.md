---
title: Debugging Variables in a Loop
parent: Patterns & Practices
layout: default
nav_order: 50
has_children: false
---

## Debugging within a `For Each`  loop

the Instance log shows 2 areas to assist with debugging a workflow:
1. Journal tab  
   The Journal will show the sequence of execution of the activities in your workflow, and some of the data retrieved or written.  

2. Variables tab  
  The Variables tab show the value of each variable in the order in which it was created in the workflow.

{: .key }
When a loop has played out to the end, the Variables tab will show the value of the variables at the end of the loop.  If you want to know what happens inside a loop, you can use these two practices:

### Add a temporary `Break` activity

You can stop a loop using the `Break` activity.  This will mean that the values shown in the Variables tab will be as they were when you stopped the loop.

The rest of the workflow continues to execute, and so could alter the values of these variables.

### Add a temporary `Fault` activity

You can stop a loop using the `Fault` activity.  This will halt the workflow at that point, and you can review the variables as at the Fault.  You can also set a custom fault message to assist with your debugging.  

### Add variables with loop-based names

Variables can be created with a name that is unique for each iteration of the loop.  

For example, imagine a loop through a list of Companies.  If you need to know why there is a logic error in your code you could set a variable inside the loop.  This JavaScript will create a variable name based on the ObjectId of each company.  Give this variable the data that will help you debug your workflow.

```js

    setVariable("DebugCompany_"+getVariable("Company").Objectid, getVariable("theDebugVariable"))
```

When you look in the Variables tab of the workflow instance log you will see something like:

```json
    ...
    "DebugCompany_134234":"this is good",
    "DebugCompany_176764":"this is good",
    "DebugCompany_238764":"error: no APIKey",
    "DebugCompany_232374":"this is good",
    ...    
``` 

This allows you to focus on company with the ***238764*** ObjectId to find your logic error.

