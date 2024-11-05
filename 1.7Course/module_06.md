# 6. Managing Workflows

Effective management of workflows is essential for maintaining and optimising automated processes within the World of Workflows platform. This module covers initiating workflows, managing workflow files, and editing or reverting workflows.

## 6.1 Starting Workflows

Workflows can be initiated manually or automatically, depending on the desired trigger mechanism.

### 6.1.1 Manual Initiation

Manual initiation allows users to start workflows as needed.

*Steps to Manually Start a Workflow:*

1. **Access the Workflow Dashboard:**
   - Navigate to the *Admin* section and select *Workflows*.

2. **Select the Workflow:**
   - Click on the desired workflow to open its details.

3. **Initiate the Workflow:**
   - Click the *Start* button to run the workflow immediately.

### 6.1.2 Automatic Initiation

Automatic initiation enables workflows to start based on specific triggers. Common triggers include:

- **Timer-Based Triggers:** Utilise the scheduling system to run workflows at predetermined times.
- **HTTP-Based Triggers:** Start workflows via HTTP requests to a specified URL.
- **Data Instance-Based Triggers:** Initiate workflows when specific data instances are created or modified.

*Configuring Automatic Triggers:*

1. **Timer-Based Workflow:**
   - Add a *Cron* activity to the workflow.
   - Configure the cron expression to define the schedule.

2. **HTTP-Based Workflow:**
   - Add an *HTTP Endpoint* activity.
   - Specify the path and method (e.g., GET, POST).

3. **Data Instance-Based Workflow:**
   - Add an *Object Instance Trigger* activity.
   - Select the data type and configure the trigger conditions.

For detailed instructions, refer to the [Starting Workflows](https://world-of-workflows.github.io/WorkflowsUniversity/docs/07_basic_workflows/04-starting-workflows.html) section.

## 6.2 Importing, Exporting, and Duplicating Workflows

Managing workflow files effectively allows for reuse and sharing across different environments.

### 6.2.1 Exporting a Workflow

Exporting a workflow creates a JSON file representing the workflow's structure.

*Steps to Export a Workflow:*

1. **Access the Workflow:**
   - Navigate to *Admin* > *Workflows* and select the desired workflow.

2. **Export the Workflow:**
   - Click the *Publish/Unpublish* button's arrow to reveal the submenu.
   - Select *Export*.
   - A JSON file will download to your browser's default location.

### 6.2.2 Importing a Workflow

Importing allows you to add a previously exported workflow into the platform.

*Steps to Import a Workflow:*

1. **Create a New Workflow:**
   - Navigate to *Admin* > *Workflows*.
   - Click *Create Workflow*.

2. **Import the Workflow:**
   - Click the *Publish/Unpublish* button's arrow to reveal the submenu.
   - Select *Import*.
   - Choose the JSON file to import.

3. **Configure the Imported Workflow:**
   - Click the *Settings* (cog) icon.
   - Update the *Name* and other properties as needed.
   - Click *Save*.

### 6.2.3 Duplicating a Workflow

To create a copy of an existing workflow:

1. **Export the Original Workflow:**
   - Follow the export steps outlined above.

2. **Import as a New Workflow:**
   - Import the JSON file as a new workflow.

3. **Rename and Modify:**
   - Update the workflow's name and make necessary modifications.

Detailed guidance is available in the [Import, Export, and Copy Workflow](https://world-of-workflows.github.io/WorkflowsUniversity/docs/04_getting_started/importexportWorkflow.html) section.

## 6.3 Editing and Reverting Workflows

Modifying workflows and restoring previous versions are essential for maintaining workflow integrity.

### 6.3.1 Editing a Workflow

*Steps to Edit a Workflow:*

1. **Access the Workflow:**
   - Navigate to *Admin* > *Workflows* and select the workflow to edit.

2. **Modify Activities:**
   - Add, remove, or adjust activities as needed.

3. **Save Changes:**
   - Click *Save* to apply the modifications.

### 6.3.2 Reverting to a Previous Version

World of Workflows maintains version history for workflows, allowing you to revert to earlier versions.

*Steps to Revert a Workflow:*

1. **Access Workflow Versions:**
   - Within the workflow editor, click the *Versions* tab.

2. **Select a Version:**
   - Review the list of versions and select the desired one.

3. **Revert to Selected Version:**
   - Click *Revert* to restore the workflow to the selected version.

By mastering these management techniques, you can ensure that your workflows remain efficient, adaptable, and aligned with your business processes. 