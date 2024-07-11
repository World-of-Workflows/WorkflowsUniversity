---
title: Working with Data
layout: default
nav_order: 9
has_children: true
---

# Working with Data

World of Workflows provides robust capabilities for working with data stored in its database. This includes creating, listing, retrieving, updating, and deleting data as part of your workflows. Here’s a guide on how to work with data using activities in workflows.

## Relevant Activities

When you want manipulate data in the User Configurtable Database in World of Workflows you will use the `Data` activities.  Here are the most commonly used:  
![Data activities](2024-07-10-15-37-54.png)


## Considerations for Data Activities 

When integrating data activities into your workflows, consider the following best practices:

1. **Sequencing:** Ensure that data activities are properly sequenced to maintain data integrity. For example, create records before listing or retrieving them.
2. **Error Handling:** Implement error handling to manage cases where data activities fail, such as when a record cannot be found or an update fails.
3. **Data Validation:** Validate data before performing create or update operations to ensure it meets your business rules and constraints.
4. **Security:** Secure access to data activities to ensure that only authorized users can perform certain operations, such as updating or deleting records.

By following these steps and best practices, you can effectively work with data in the database of World of Workflows, ensuring your workflows are robust, efficient, and reliable.

## Worked example

Go to `Admin` -> `Workflows` -> `Create Workflow`  
Click the arrow beside Publish and import this workflow file:  <a href="./working-with-data-examples.json" download>Example workflow file</a>

<img src="2024-07-11-13-09-11.png" alt="Import button graphic" style="width: 250px; height: auto; border-radius: 10px; box-shadow: 2px 2px 5px grey;" />

