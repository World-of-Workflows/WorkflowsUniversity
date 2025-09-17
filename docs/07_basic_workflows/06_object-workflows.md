---
title: Data Instance based workflows example
layout: default
parent: Building Workflows
grand_parent: Beginner's Guide to Workflows
---

# Data Instance based workflows example

This guide shows how to create a workflow that can be executed from within the Object Editor Screen.

The process is as follows:
1. Create a Table. 
2. Create an Instance
3. Create a Workflow with the Object Instance Trigger activity
4. Execute and test the workflow

The instructions below show how to do this:

## 1. Create a Table
1. Go To Workflows
2. Login
3. Navigate to `Admin` ->`Tables`
4. Click **Add Table**  
5. Table the *Name* and *Description* and click **Save**  
   ![](../images/2022-11-08-07-11-38.png)
6. The example below shows the new type. Make note of the Title of your Table, in my case ```MyNewType```
   ![](../images/2022-11-08-07-13-03.png)

## 2. Create an Instance
1. Click the Title of the Table you created above
2. Click **Add**
3. Enter the attributes of the new instance (in my case, this is just the title) and click **Save**
   ![](../images/2022-11-08-07-14-16.png)
4. The example below shows the new instance.
   ![](../images/2022-11-08-07-15-04.png)

## 3. Create a Workflow with the Object Instance Trigger activity
1. Navigate to Workflows - Workflow Definitions
2. Click **Create Workflow**
3. Click the Cog and enter details as follows:
   1. Enter an appropriate name name for the workflow, such as ```TypeName_Workflowname``` where the type name was chosen in step 1 above, in our case ```MyNewType``` Our name could be ```MyNewType_FirstWorkflow```
   2. DisplayName is what you want to appear in the user interface. In our case I will use ```First Workflow for Testing```
      ![](../images/2024-01-11-143010.png)
   3. Click **Save**
4. Click **Start** and add the Activity **Object Instance Trigger** from the **Data** Section
   1. In the `Object Type Id` drop down, select the Table we have just created, in our case ```MyNewType```
      ![](../images/2024-01-11-142209.png)
   2. In the **Common** tab, give the Activity a friendly name, in our case we will give it the same name as the workflow ```First Workflow for Testing```
      ![](../images/2024-01-11-145318.png)
   3. Click **Save**
5. Add a new activity `List Object Instances` from the **Data** Section
   1. Select our object type from the `Object Type` drop down, in our case ```MyNewType```
   2. Set the Limit to 1
      ![](../images/2024-01-11-143843.png)
   3. In the **Common** tab, give the activity a name, in our case ```FirstObject```
      ![](../images/2024-01-11-143928.png)
   4. Click **Save**
   5. Add a link it to the `Object Instance Trigger` activity
      ![](../images/2024-01-11-144255.png)
6. Click **Publish**

## 4. Execute and Test Workflow
1. Navigate to `Admin` -> `Tables`
2. Click the Name of the New Table created in Step 1
3. Open the Object by clicking on the link in the first column.  This is a unique number for that object.
4. Click Workflows, and click the Play icon
   ![](../images/2024-01-11-145856.png)

## 5. See the Instance Log
1. Navigate to Admin -> Workflows -> Workflow Instances
3. The first entry will be the instance log of your workflow that just ran.  Click the number under the ID (first) column.
4. Click the **List Object Instances** Activity
   ![](../images/2024-01-11-150632.png)
5. Click **Journal** and scroll down to **List Object Instances**
   ![](../images/2024-01-11-150837.png)
6. Ensure the details reflect the object you chose

> Congratulations, you have created a workflow that can be executed from within the Object Editor Screen.