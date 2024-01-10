---
title: Workflow Development
layout: default
nav_order: 6
has_children: true
---

# Workflow Development

In order to work effectively with workflow development World of Workflows, it's important to understand its terminology. Below is a list of words that represent important concepts used in Elsa.

## Workflow

A workflow consists of a series of steps called **activities** that are connected to one another. A workflow maintains all sorts of information, such as the following:

- Which activity is currently executing?
- What variables are set?
- What activities are blocking further execution?

Once an activity is done executing, the workflow checks its outcome and if there's another activity connected to it. If so, that activity is scheduled for execution.

This goes on until there are either no more activities to execute or an activity is encountered that instructs the workflow runner to suspend the workflow.

## Activity

An activity is an atomic building block that represents a single executable step on the workflow. Activities can do all sorts of things and take input from you and provide output.

## Starting Activity
An activity that is the starting point of the workflow and does not have any inbound connections. They are the entry points to the workflow.

## Blocking Activity
When an activity runs, it returns an activity execution result. There are various possible results that can be returned, but the most commonly used ones are Done, Outcomes and Suspend.

When Suspend is returned (as is typically the case with blocking activities), the workflow will enter the Suspended state and the activity will be registered as a blocking activity.

## Suspended Workflow

Suspended workflows are blocked by one or more blocking activities. The only way to resume such a workflow is to trigger it with the name of one of the blocking activities.

## Connection

A connection represents a connection between two activities. This is how the workflow runner knows what activities to execute next. A connection between two activities holds 3 pieces of information:

- The source activity ID.
- The source outcome name (e.g. Done).
- The target activity ID.

For each possible outcome of a given activity, a connection can be established from that outcome to another activity.

For example, let's say we have a workflow with three activities called Activity A, Activity B and Activity C. Activity A has 2 outcomes called Done and Failed, and we wish to connect the Done outcome to Activity B and Failed to Activity C.

This means we need the following two connections:

**Connection 1**

- Source: Activity A
- Outcome: Done
- Destination: Activity B

**Connection 2**

- Source: Activity A
- Outcome: Failed
- Destination: Activity C

Visually, this would look like this:

![](2023-02-02-09-27-03.png)

## Long Running Workflows

A long-running workflow is a workflow that doesn't run from start to end in one go. Instead, it might have one or more blocking activities that will instruct the workflow engine to suspend the workflow until it receives the appropriate stimulus to resume execution.

## Short Running Workflows

A short-running workflow is a workflow that, in contrast to long-running workflows, does run from start to end in one go.

## Burst of Execution

A burst of execution refers to the execution of a sequence of activities one after another until either one of the following occurs:

- No more activities were scheduled (the end of the workflow was reached), or
- A blocking activity was encountered.

# Workflow Variables
Every workflow instance can have a set of workflow variables.

A workflow variable is a simple key/value pair stored as part of the workflow instance and is useful to store information that can later be used by other activities.

## Default Variables
Although variables can be created on the fly within a workflow as it executes, you can declare variables up-front on the workflow definition itself.
