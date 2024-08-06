---
title: Tasks
parent: Getting Started
layout: default
nav_order: 6
has_children: true
---

# Tasks

The Task system is a fundamental component of World of Workflows and may be the only part of the platform visible to your users.

Automating a business process often requires human involvement. A `Task` can be created within your workflow to provide essential information to a human at the appropriate point in the process, waiting for their confirmation before resuming. Additionally, a task can request details from a human and record them into the database. This seamless integration of human and machine is a key differentiator for World of Workflows, as few other automation engines offer this feature.

The ultimate goal of a workflow is often to achieve full automation of a business process. However, complete automation may be unrealistic or too costly, making it sensible to involve a human in certain steps. In such cases, a `Task` can be used to handle those steps.

A `Task` can also serve as a useful intermediate step in automating a business process. It allows a workflow to be implemented without requiring 100% automation from the start. Future revisions of the workflow can replace one or more tasks with automated steps. This means that no `Task` will appear for someone to complete, simplifying Change Management.


## Available Tasks

The task queue is a place where all the available tasks for end users are displayed. This is filtered by the Users' capabilities and ensures they only see tasks configured for staff with their capabilities. Users **pick** tasks from the task queue to enter their own to-do list and proceed to work through their to-do list.

## My Tasks

The My Task Pane shows the details of a task:

- Title
- Description, including the task ID


# Working with Tasks

End users are expected to use the task system as an advanced to-do list. They pick tasks from the task queue and work through them. The task pane shows the details of the task and allows them to enter data and perform actions.

A `task` may contain this information:

- Title
- Description
- Data Entry
- Default Actions
- Custom Actions
- Additional Information
  
See the contents below to work with tasks in more detail.
