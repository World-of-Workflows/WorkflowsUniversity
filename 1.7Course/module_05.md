# 5. Building Your First Workflow

Creating workflows in World of Workflows allows you to automate business processes efficiently. This module guides you through the steps to build your first workflow, including creating a workflow, adding activities, configuring flow control, and publishing the workflow.

## 5.1 Understanding Workflows

A workflow in World of Workflows is a series of steps, known as activities, connected to achieve a specific business objective. These activities can include tasks such as sending emails, reading data, or writing and saving files. The platform provides a simple graphical interface to design these workflows.

## 5.2 Creating a New Workflow

1. **Access the Workflow Dashboard:**
   - Navigate to the *Admin* section and select *Workflows* to open the Workflow Dashboard.

2. **Initiate Workflow Creation:**
   - Click the *Create Workflow* button.

3. **Configure Workflow Settings:**
   - Click the *Settings* (cog) icon in the top right corner.
   - Enter a *Name* for the workflow (e.g., "Review Lead").
   - Provide a *Display Name* and a *Description* (optional).
   - Click *Save* to confirm the settings.

## 5.3 Adding Activities

Activities are the building blocks of workflows. To add activities:

1. **Add an Activity:**
   - Click the *Add Activity* button.

2. **Select Activity Type:**
   - From the left panel, choose the appropriate category (e.g., *Data*, *Tasks*).
   - Select the desired activity (e.g., *Object Instance Trigger*).

3. **Position the Activity:**
   - Drag the activity onto the canvas to the desired position.

4. **Configure Activity Properties:**
   - Right-click the activity and select *Edit*.
   - Set the necessary properties, such as *Object Type Id* and *Common* settings.
   - Click *Save* to apply the changes.

## 5.4 Implementing Flow Control

Flow control structures manage the execution path of the workflow. Common flow control activities include:

- **If/Else:** Executes activities based on a condition.
- **For Each:** Iterates over a collection of items.
- **While:** Repeats activities while a condition is true.
- **Fork:** Creates parallel branches in the workflow, running the branches one at a time. The workflow continues once all branches have completed. citeturn0search22

To add flow control:

1. **Add a Flow Control Activity:**
   - Click *Add Activity*.
   - Select *Control Flow* from the left panel.
   - Choose the desired flow control activity (e.g., *If/Else*).

2. **Configure the Activity:**
   - Right-click the activity and select *Edit*.
   - Define the conditions and branches as required.
   - Click *Save* to apply the settings.

## 5.5 Connecting Activities

To establish the sequence of execution:

1. **Connect Activities:**
   - Click the blue dot on the right side of an activity.
   - Drag the connector to the blue circle on the subsequent activity.

2. **Verify Connections:**
   - Ensure all activities are connected appropriately to reflect the desired workflow logic.

## 5.6 Publishing the Workflow

After designing and configuring the workflow:

1. **Publish the Workflow:**
   - Click the *Publish* button to make the workflow active.

2. **Test the Workflow:**
   - Initiate the workflow to verify its functionality and ensure it performs as intended.

By following these steps, you can create and deploy workflows to automate various business processes within the World of Workflows platform. 