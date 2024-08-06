---
title: Updating data
parent: Working with Data
layout: default
nav_order: 7
has_children: false
---
# Updating Data

To update existing data in the database, you can use the `ObjectInstanceUpdate` activity. This activity modifies fields in an existing record based on specified criteria. Use JSON to define the fields and their new values.

1. **Add the `ObjectInstanceUpdate` Activity:**
   - Drag and drop the `ObjectInstanceUpdate` activity into your workflow.
   - Specify the table or collection where the record exists.
   - Define the unique identifier or criteria for selecting the record to update.
   - Specify the fields and their new values using JSON.

2. **Example JSON:**
   ```json
   {
       "APIKey": "123456"
   }
   ```

Using default for Values
![](../images/2024-07-11-09-26-00.png)

Using JSON representation for Values
![](../images/2024-07-11-09-26-58.png)

Using JavaScript for Values
![](../images/2024-07-11-09-28-00.png)

Using Liquid for the Instance Id
![](../images/2024-07-11-09-30-34.png)

## Adding JSON data 

The `JSON Data Insert` activity is another way to add data to the database.  This activity is especially useful when the data might contain more fields than exist in the database: `JSON Data Insert` will create any missing fields. 

![](../images/2024-07-11-09-35-28.png)

