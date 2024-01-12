---
title: Starting Workflows
layout: default
parent: Workflow Development
---
# Starting Workflows

There are three main ways to start a workflow:

1. Timer based workflow - World of Workflows comes with a comprehensive scheduling system allowing you to run workflows at times that suit you.
2. Http Based Workflow - Using the Http Activity, you can start a workflow by calling a URL that you create.
3. Data Instance based workflow - Using the Object Instance Trigger activity, you can start a workflow from the Object Edit Screen.

These are described below:

## Timer Based Workflow

1. Create a New Workflow
2. Click Start and choose the **Timers** category and the **Cron** activity.
   ![](2023-02-02-11-10-30.png)
3. Configure the Cron activity to run at the time you want the workflow to run. This is done using a Cron Expression. You can find examples of these [here](https://www.freeformatter.com/cron-expression-generator-quartz.html)
   ![](2023-02-02-11-12-01.png)
4. Click **Save**

Now your workflow will run at the time you specify.

## Http Based Workflow

1. Create a new Workflow.
2. Click Start and choose the **HTTP** category and the **HTTP Endpoint** activity.
   ![](2023-02-02-11-13-06.png)
3. Give the activity a path, and select a method (you should use GET if you wish to run the workflow from a desktop shortcut). Select **Read Content** if you wish to use data sent as a part of this request later in your workflow.
   ![](2023-02-02-11-15-11.png)
4. Click **Save**

Now, whenever you navigate to the URL you specified, the workflow will run.

> **Note**: In Personal Edition, you will need to run this from a new *InPrivate* or *Incognito* session in your browser.
## Data Instance based workflow

1. Create a new Workflow.
2. Click **Add Activity** and choose the **Data** category and the **Object Instance Trigger** activity
3. Right Click and Choose Edit
   ![](2023-04-06-09-44-20.png)
4. Select the type you wish to trigger the workflow from
5. Click **Save**

Now, whenever you navigate to a specific instance of the type specified, this workflow will appear in the workflow tabs.

Admin -> Types -> [Type Name] -> [Instance Name] -> Workflows

![](2023-02-02-11-18-18.png)
