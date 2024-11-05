# 4. Getting Started with Data Management

Effective data management is crucial for automating business processes within the World of Workflows platform. This module guides you through creating data structures, adding and editing data, importing and exporting data, and setting up database backups.

## 4.1 Creating Data Structures

In World of Workflows, data structures are defined as *Types*, which function similarly to tables in a traditional database. Each Type comprises user-defined fields that store specific data attributes.

**Steps to Create a New Type:**

1. **Access the User Configurable Database:**
   - Navigate to the *Admin* section and select *Types*.

2. **Add a New Type:**
   - Click on the *Add Types* button.
   - Enter a name for the Type and provide a brief description (optional).

3. **Define Fields:**
   - After creating the Type, add fields by specifying the field name, data type (e.g., text, number, date), and any additional properties such as default values or validation rules.

4. **Save the Type:**
   - Click *Save* to create the Type with the defined fields.

For detailed instructions, refer to the [Creating and Managing Tables](https://world-of-workflows.github.io/WorkflowsUniversity/docs/05_database/Creating-and-Managing-Types.html) section.

## 4.2 Adding and Editing Data

Once Types are established, you can add and manage data records within them.

**Adding Data:**

1. **Select the Type:**
   - In the *Admin* section, click on *Types* and choose the desired Type.

2. **Add a New Record:**
   - Click the *Add Item* button.
   - Fill in the fields with the appropriate data.
   - Click *Save* to add the record.

**Editing Data:**

1. **Access the Data Editor:**
   - Navigate to the specific Type containing the data.

2. **Edit Records:**
   - Use inline editing by clicking on a field within a record to modify its value.
   - For bulk editing, select multiple records and click the *Bulk Edit* button.

3. **Save Changes:**
   - After making edits, click *Save* to apply the changes.

Detailed guidance is available in the [Adding and Editing Data](https://world-of-workflows.github.io/WorkflowsUniversity/docs/05_database/working-with-data.html) section.

## 4.3 Importing and Exporting Data

World of Workflows supports data import and export in various formats, facilitating integration with external systems.

**Importing Data:**

1. **Prepare the Data File:**
   - Ensure the data file (e.g., CSV) matches the structure of the target Type.

2. **Import Process:**
   - Within the desired Type, click the *Import* button.
   - Upload the data file and map the file columns to the Type fields.
   - Click *Import* to add the data.

**Exporting Data:**

1. **Select the Type:**
   - Navigate to the Type containing the data to export.

2. **Export Process:**
   - Click the *Export* button.
   - Choose the desired format (e.g., CSV) and click *Export*.

For comprehensive instructions, consult the [Importing and Exporting Data](https://world-of-workflows.github.io/WorkflowsUniversity/docs/05_database/working-with-data.html) section.

## 4.4 Setting Up Database Backups

Regular backups are essential to safeguard your data. World of Workflows offers options for local and Azure Storage backups.

**Configuring Backups:**

1. **Access Configuration Settings:**
   - Navigate to the *Settings* section.

2. **Enable Backups:**
   - Set the *Backup* option to *true* to enable local backups upon server shutdown.
   - To store backups in Azure Storage, set *BackupToAzureStorage* to *true*.

3. **Specify Backup Locations:**
   - For local backups, backups are saved in the data folder with date-stamped filenames.
   - For Azure Storage, ensure the storage account is configured correctly to receive backups.

Detailed configuration steps are provided in the [Setting Up Database Backups](https://world-of-workflows.github.io/WorkflowsUniversity/docs/05_database/backup.html) section.

By mastering these data management fundamentals, you can effectively organise and maintain the information necessary for your automated workflows within the World of Workflows platform. 