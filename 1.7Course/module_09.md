# 8. Working with Data in Workflows

Effectively managing data within workflows is crucial for automating business processes using the World of Workflows platform. This module covers accessing, displaying, modifying, removing, and importing data within workflows.

## 8.1 Listing and Retrieving Data

To access and display data records within a workflow, utilise the `ObjectInstanceList` and `ObjectInstanceGet` activities.

### 8.1.1 Listing Data Records

The `ObjectInstanceList` activity retrieves multiple records based on specified criteria.

*Steps to List Data:*

1. **Add the `ObjectInstanceList` Activity:**
   - Drag and drop the `ObjectInstanceList` activity into your workflow.

2. **Configure the Activity:**
   - Set the *Type* to specify the data type to retrieve.
   - Define filtering criteria using OData syntax (e.g., `Status eq 'Active'`).
   - Specify sorting options and the number of records to retrieve.

3. **Access the Output:**
   - Use JavaScript to access the output: `activities.ListContacts.Output()`.

For detailed guidance, refer to the [Listing Data](https://world-of-workflows.github.io/WorkflowsUniversity/docs/08_handling%20_the_data/listingData.html) section.

### 8.1.2 Retrieving a Single Data Record

The `ObjectInstanceGet` activity retrieves a single record by its unique identifier.

*Steps to Retrieve Data:*

1. **Add the `ObjectInstanceGet` Activity:**
   - Include the `ObjectInstanceGet` activity in your workflow.

2. **Configure the Activity:**
   - Set the *InstanceId* to the unique identifier of the record.
   - Optionally, assign the output to a variable for further use.

3. **Access the Output:**
   - Use JavaScript to access the output: `activities.GetContact.Output()`.

For more information, see the [Getting Data Records](https://world-of-workflows.github.io/WorkflowsUniversity/docs/08_handling%20_the_data/gettingDataRecords.html) section.

## 8.2 Updating and Deleting Data

Modifying and removing data entries within workflows is accomplished using the `ObjectInstanceUpdate` and `ObjectInstanceDelete` activities.

### 8.2.1 Updating Data Entries

The `ObjectInstanceUpdate` activity modifies fields in an existing record.

*Steps to Update Data:*

1. **Add the `ObjectInstanceUpdate` Activity:**
   - Insert the `ObjectInstanceUpdate` activity into your workflow.

2. **Configure the Activity:**
   - Set the *InstanceId* to the unique identifier of the record to update.
   - Define the fields and their new values using JSON.

   *Example JSON:*
   ```json
   {
     "APIKey": "123456"
   }
   ```

3. **Execute the Update:**
   - Upon execution, the specified fields in the record are updated accordingly.

For comprehensive instructions, consult the [Updating Data](https://world-of-workflows.github.io/WorkflowsUniversity/docs/08_handling%20_the_data/updatingData.html) section.

### 8.2.2 Deleting Data Entries

The `ObjectInstanceDelete` activity removes a record from the database.

*Steps to Delete Data:*

1. **Add the `ObjectInstanceDelete` Activity:**
   - Include the `ObjectInstanceDelete` activity in your workflow.

2. **Configure the Activity:**
   - Set the *InstanceId* to the unique identifier of the record to delete.

3. **Execute the Deletion:**
   - Upon execution, the specified record is permanently removed from the database.

For detailed guidance, refer to the [Deleting Data](https://world-of-workflows.github.io/WorkflowsUniversity/docs/08_handling%20_the_data/deletingData.html) section.

## 8.3 Importing Data

Incorporating external data into workflows is facilitated through the `JSON Data Insert` activity.

*Steps to Import Data:*

1. **Add the `JSON Data Insert` Activity:**
   - Insert the `JSON Data Insert` activity into your workflow.

2. **Configure the Activity:**
   - Provide the JSON data to be inserted.
   - The activity will create any missing fields in the database to accommodate the new data.

3. **Execute the Import:**
   - Upon execution, the data is imported into the specified data type.

For comprehensive instructions, consult the [Importing Data](https://world-of-workflows.github.io/WorkflowsUniversity/docs/08_handling%20_the_data/importingData.html) section.

By mastering these data management activities within workflows, you can effectively automate complex business processes and maintain data integrity within the World of Workflows platform. 