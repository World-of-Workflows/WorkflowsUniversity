---
title: Task Management Activities
parent: Beginner's Guide to Workflows
layout: default
nav_order: 10
has_children: false
---

# Task Management Activities

Task Management activities in *Workflows* enable the creation, deletion, modification, and retrieval of *Tasks* within your workflows. This chapter will focus on *Task Create, Task Delete, Task Detail Create, Task Update,* and *Task Details Read* activities, with an emphasis on the core *Task Create* activity.

## Task Create

The `Task Create` activity is the central component for creating tasks in Workflows. It allows you to configure various properties for the task, including Title, Description, Severity, Priority, Due Date, Related Object ID, Data Questions, Variable Name, and Branches.  See [here](../05_tasks/task-workflows.html#) for a worked example of using `Task Create`.

- **Title**: The task's title, providing a brief and informative description.

- **Description**: A detailed and formatted description of the task, written in *Markdown*. *Markdown* is a lightweight markup language that allows you to create formatted text using a simple syntax. It supports formatting elements such as headings, bold, italics, lists, links, and more. For a quick guide on Markdown syntax, you can refer to this [Markdown Cheatsheet](https://github.com/adam-p/markdown-here/wiki/Markdown-Cheatsheet).

- **Severity**: A numerical value representing the task's severity or importance.

- **Priority**: A numerical value indicating the task's priority level.

- **Due Date**: The number of days from when the task is created to when the task is due.

- **Related Object ID**: A reference to a row in any **Table** within the *User Configurable Database*.

- **Data Questions**: Allows you to add fields from the **Table** of the *Related Object ID* and prompt the user to complete them within the task.

- **Variable Name**: Assigns the updated row to a *Variable* for further use within the workflow.

- **Branches**: Correspond to *Buttons* in the *Task*, which can send the workflow down different branches based on the user’s actions.

## Task Delete

The `Task Delete` activity allows you to remove a task from the system. It requires the task's unique identifier as input and permanently deletes the specified task.

## Task Detail Create

The `Task Detail Create` activity enables you to add additional information or properties to an existing task. This can be useful for providing more context, instructions, or metadata for the task. It requires the task's unique identifier as input and saves the new details to the task.

## Task Update

The `Task Update` activity allows you to modify an existing task's properties, such as its **<span class="smallcaps">title, description, severity, priority, due date,</span>** and **<span class="smallcaps">related object ID</span>**. It requires the *Task's* unique identifier as input and saves the updated properties to the *Task*.

## Task Details Read

The `Task Details Read` activity retrieves the details of a task, including its **<span class="smallcaps">title, description, severity, priority, due date, related object ID,</span>** and **<span class="smallcaps">data questions</span>**. It requires the task's unique identifier as input and outputs the task details as *Variables*, which can be used later in the workflow.

By using these Task Management activities in Workflows, you can seamlessly integrate task-related operations into your business processes, ensuring that your team stays organized and efficient. Understanding these activities will help you better design your workflows and effectively manage tasks in World of Workflows.

