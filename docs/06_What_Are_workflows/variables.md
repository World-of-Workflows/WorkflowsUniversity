---
title: Variables
parent: Beginner's Guide to Workflows
layout: default
nav_order: 7
has_children: false
---

# Variables

Variables are temporary places to store information. It’s common to want to store information and retrieve and work with it later. With Workflows, we can define both variables and transient variables which can store all types of data and information.

Variables are created with the *Set Variable* activity. They can also be created in *JavaScript* using a *SetVariable()* command. Variables are read using a *JavaScript* command *GetVariable()* or with *Liquid* using a command such as ``` { { Variables.variableName } } ```

> *Variables exist only while the workflow is running.* To keep the data permanently you will need to write variable to a field in a Table using an activity such as `Create Object Instance` or `Update Object Instance`  



## Set Variable

The `Set Variable` activity is used to create or update a variable within the workflow. It allows you to define a name and assign a value to the variable. Variables created using this activity persist throughout the entire workflow execution.

## Set Transient Variable

The `Set Transient Variable` activity is similar to the Set Variable activity but creates variables that exist only for the current iteration of a loop. This can be useful for managing temporary data within loop structures, such as For, For Each, or While loops. Each time the loop executes the Transient Variable will be empty/null.

By using these core activities in Workflows, you can create powerful and flexible workflows that model your business processes effectively and efficiently in World of Workflows. Understanding these core activities will help you better design and optimize your workflows to meet the unique requirements of your organization.
