---
title: Data
layout: default
nav_order: 5
parent: Workflow Activities
has_children: false
---

# Data
Allows you to work with data and types in the system

## Data Tables Read
**Description:** Gets a list of all data types. Data types are used as hints on how to render an item in the user interface.

**Category:** Data


**Output Properties:**
- **ReturnResult**: No hint available
- **ReturnId**: No hint available
- **DataTypes**: No hint available

## Create Object Instance
**Description:** Creates a new object of the specified type with the specified values.

**Category:** Data

**Properties:**
- **ObjectType**: The Object Type
- **Values**: The Name field is the Column Name and the Value field is the value to assign to the Objects Column.
- **VariableName**: The Output Variable Name

**Input Properties:**
- **ObjectType**: The Object Type
- **Values**: The Name field is the Column Name and the Value field is the value to assign to the Objects Column.
- **VariableName**: The Output Variable Name

**Output Properties:**
- **Instance**: The object state after being updated by this activity.
- **InstanceId**: The ID of the created object instance.

## Update Object Instance
**Description:** Updates an exisiting object instance.

**Category:** Data

**Properties:**
- **InstanceId**: The Id of the Object to create detail for
- **ClearOmittedFields**: When this option is set (ie: true) any fields defined on the type that are missing from the specified valus are set to null. Otherwise, those fields are not updated. Note: Fields that are set to null are NOT considered missing.
- **Values**: The data to update the object with.
- **VariableName**: The Output Variable Name

**Input Properties:**
- **InstanceId**: The Id of the Object to create detail for
- **ClearOmittedFields**: When this option is set (ie: true) any fields defined on the type that are missing from the specified valus are set to null. Otherwise, those fields are not updated. Note: Fields that are set to null are NOT considered missing.
- **Values**: The data to update the object with.
- **VariableName**: The Output Variable Name

**Output Properties:**
- **Instance**: The object state after being updated by this activity.

## Get Object Instance
**Description:** Gets the detail of an object from a specific state.

**Category:** Data

**Properties:**
- **InstanceId**: The Id of the object instance to retrieve.
- **Expanded**: Retrieve information on related objects.
- **VariableName**: No hint available

**Input Properties:**
- **InstanceId**: The Id of the object instance to retrieve.
- **Expanded**: Retrieve information on related objects.
- **VariableName**: No hint available

**Output Properties:**
- **Instance**: The instance that was found.
- **ExpandedObject**: The Expanded Object if Requested

## List Object Instances
**Description:** Retrieves the object instance list with an optional filter.

**Category:** Data

**Properties:**
- **ObjectType**: The object type to search for instances.
- **Expand**: Expand with details from related Objects.
- **Filter**: An OData filter the specifies the instances that should be returned. City eq 'Paris' or Age gt 5 or City eq 'Paris' and Age le 5. Tip: don't add quotes around date time fields
- **Skip**: The number of instances that would be returned to skip. This is applied AFTER both the Filter and Order By options.
- **Limit**: The maximum number of instances to return. When null all matching instances are returned.
- **OrderBy**: An OData order by clause to control the order that instances are returned.

**Input Properties:**
- **ObjectType**: The object type to search for instances.
- **Expand**: Expand with details from related Objects.
- **Filter**: An OData filter the specifies the instances that should be returned. City eq 'Paris' or Age gt 5 or City eq 'Paris' and Age le 5. Tip: don't add quotes around date time fields
- **Skip**: The number of instances that would be returned to skip. This is applied AFTER both the Filter and Order By options.
- **Limit**: The maximum number of instances to return. When null all matching instances are returned.
- **OrderBy**: An OData order by clause to control the order that instances are returned.

**Output Properties:**
- **Output**: The instances that were found.
- **ExpandedOutput**: The Expanded Object if Requested

## List Object Instance History
**Description:** Retrieves the object instance history list with an optional filter.

**Category:** Data

**Properties:**
- **ObjectType**: The object type to search for instances.
- **Filter**: An OData filter the specifies the instances that should be returned. City eq 'Paris' or Age gt 5 or City eq 'Paris' and 'Age' le 5.
- **Skip**: The number of instances that would be returned to skip. This is applied AFTER both the Filter and Order By options.
- **Limit**: The maximum number of instances to return. When null all matching instances are returned.
- **OrderBy**: An OData order by clause to control the order that instances are returned.
- **InstanceId**: The ID of the Object Instance to retrieve the history for. If this is not specified then the history for all instances is retrieved.

**Input Properties:**
- **ObjectType**: The object type to search for instances.
- **Filter**: An OData filter the specifies the instances that should be returned. City eq 'Paris' or Age gt 5 or City eq 'Paris' and 'Age' le 5.
- **Skip**: The number of instances that would be returned to skip. This is applied AFTER both the Filter and Order By options.
- **Limit**: The maximum number of instances to return. When null all matching instances are returned.
- **OrderBy**: An OData order by clause to control the order that instances are returned.
- **InstanceId**: The ID of the Object Instance to retrieve the history for. If this is not specified then the history for all instances is retrieved.

**Output Properties:**
- **Output**: The instances that were found.

## Column Create
**Description:** Adds a column to a type.

**Category:** Data

**Properties:**
- **ObjectType**: No hint available
- **ColumnName**: The Name of the Column
- **ColumnDisplayName**: The Display Name of the Column
- **ColumnDescription**: The Description of the Column
- **ColumnTypeId**: No hint available
- **PrincipalType**: No hint available
- **DisplayOrder**: The DisplayOrder
- **Visible**: Visible
- **Indexed**: Visible

**Input Properties:**
- **ObjectType**: No hint available
- **ColumnName**: The Name of the Column
- **ColumnDisplayName**: The Display Name of the Column
- **ColumnDescription**: The Description of the Column
- **ColumnTypeId**: No hint available
- **PrincipalType**: No hint available
- **DisplayOrder**: The DisplayOrder
- **Visible**: Visible
- **Indexed**: Visible

**Output Properties:**
- **ColumnId**: The ID of the newly created column.
- **ReturnResult**: No hint available
- **ReturnResultException**: No hint available

## Add Column Index
**Description:** Adds an Index to an Object Type Column.

**Category:** Data

**Properties:**
- **ColumnId**: The Id of the Column

**Input Properties:**
- **ColumnId**: The Id of the Column

**Output Properties:**
- **Output**: No hint available

## Type Create
**Description:** Creates a new Type.

**Category:** Data

**Properties:**
- **TypeName**: The Name of the Type
- **TypeDescription**: The description of the type

**Input Properties:**
- **TypeName**: The Name of the Type
- **TypeDescription**: The description of the type

**Output Properties:**
- **ReturnResult**: No hint available
- **ReturnResultException**: No hint available
- **ReturnId**: No hint available

## Type Delete
**Description:** Deletes a type.

**Category:** Data

**Properties:**
- **TypeId**: The ID of the type.

**Input Properties:**
- **TypeId**: The ID of the type.

## Columns Read by Type
**Description:** Gets the columns for a type.

**Category:** Data

**Properties:**
- **ObjectType**: No hint available
- **VisibleOnly**: Only Return Visible Columns

**Input Properties:**
- **ObjectType**: No hint available
- **VisibleOnly**: Only Return Visible Columns

**Output Properties:**
- **Columns**: No hint available

## Tables Read
**Description:** Gets a List of All Tables.

**Category:** Data


**Output Properties:**
- **Tables**: No hint available

## Type Get Id
**Description:** Gets a Type Id by Name.

**Category:** Data

**Properties:**
- **TypeName**: No hint available

**Input Properties:**
- **TypeName**: No hint available

**Output Properties:**
- **ObjectTypeId**: No hint available
- **ObjectTypeIdOrName**: No hint available

### Remove Column Index
**Description:** Removes an Index from an Object Type Column.

**Category:** Data

**Properties:**
- **ColumnId**: The Column to Remove an Index from.

**Input Properties:**
- **ColumnId**: The Column to Remove an Index from.

**Output Properties:**
- **Output**: No hint available

## JSON Data Insert
**Description:** Quickly inserts the provided data into a specified type and upgrades if required.

**Category:** Data

**Properties:**
- **ObjectType**: The Object Type
- **KeyField**: The Key Field. Use this to update a record based on a field
- **ClearOmittedFields**: When this option is set (ie: true) any fields defined on the type that are missing from the specified valus are set to null. Otherwise, those fields are not updated. Note: Fields that are set to null are NOT considered missing.
- **Values**: The data to save.

**Input Properties:**
- **ObjectType**: The Object Type
- **KeyField**: The Key Field. Use this to update a record based on a field
- **ClearOmittedFields**: When this option is set (ie: true) any fields defined on the type that are missing from the specified valus are set to null. Otherwise, those fields are not updated. Note: Fields that are set to null are NOT considered missing.
- **Values**: The data to save.

**Output Properties:**
- **Output**: The object state after being updated by this activity.

## Delete Object Instance
**Description:** Deletes an object instance.

**Category:** Data

**Properties:**
- **ObjectInstanceId**: The id of the object instance.

**Input Properties:**
- **ObjectInstanceId**: The id of the object instance.

**Output Properties:**
- **FailReason**: No hint available

## Rename Column
**Description:** Renames a column.

**Category:** Data

**Properties:**
- **ObjectType**: No hint available
- **Column**: No hint available
- **ColumnName**: Leave empty to keep Column Name the same
- **ColumnDisplayName**: Leave empty to keep Column Display Name the same

**Input Properties:**
- **ObjectType**: No hint available
- **Column**: No hint available
- **ColumnName**: Leave empty to keep Column Name the same
- **ColumnDisplayName**: Leave empty to keep Column Display Name the same

**Output Properties:**
- **Output**: The Updated Object Type Column

## Remove Column
**Description:** Removes a column.

**Category:** Data

**Properties:**
- **ObjectType**: No hint available
- **Column**: No hint available

**Input Properties:**
- **ObjectType**: No hint available
- **Column**: No hint available

**Output Properties:**
- **FailReason**: The Reason for the failure

## Object Instance Trigger
**Description:** Allow for manually starting/resuming a workflow from an object instance.

**Category:** Data

**Properties:**
- **ObjectTypeId**: The ID of the object type that can be used to trigger this activity.

**Input Properties:**
- **ObjectTypeId**: The ID of the object type that can be used to trigger this activity.

**Output Properties:**
- **InstanceId**: The requested object.
- **Instance**: The requested object.

## Clear Workflow Instances
**Description:** Deletes historical Workflow instances.

**Category:** Data

**Properties:**
- **WorkflowDefinitionName**: Specify the workflow definition name to target or enter 'All' for all workflows.
- **VersionSelection**: Select 'All' to remove instances from all versions, 'Keep current' to retain the instances of the published workflow, or specify 'Custom' to remove of the instances of the specified version.
- **CustomVersion**: Clears the instances of all versions prior to the entered version.
- **InstanceRetention**: Keep the selected number of instances.
- **DateSelection**: Remove all instances before the specified date and time. (Format per regional settings)
- **IncludeIdle**: Select to include Idle instances.
- **IncludeSuspended**: Select to include Suspended instances.
- **IncludeRunning**: Select to include Running instances.

**Input Properties:**
- **WorkflowDefinitionName**: Specify the workflow definition name to target or enter 'All' for all workflows.
- **VersionSelection**: Select 'All' to remove instances from all versions, 'Keep current' to retain the instances of the published workflow, or specify 'Custom' to remove of the instances of the specified version.
- **CustomVersion**: Clears the instances of all versions prior to the entered version.
- **InstanceRetention**: Keep the selected number of instances.
- **DateSelection**: Remove all instances before the specified date and time. (Format per regional settings)
- **IncludeIdle**: Select to include Idle instances.
- **IncludeSuspended**: Select to include Suspended instances.
- **IncludeRunning**: Select to include Running instances.

## Type History Delete
**Description:** Deletes historical records from the specified Type.

**Category:** Data

**Properties:**
- **SelectedType**: The object type to search for instances.
- **RetentionPeriod**: Select the period type (leave blank to ignore).
- **RetentionValue**: Remove records older than x.
- **RecordsRetention**: Keep the selected number of records (-1 to ignore).

**Input Properties:**
- **SelectedType**: The object type to search for instances.
- **RetentionPeriod**: Select the period type (leave blank to ignore).
- **RetentionValue**: Remove records older than x.
- **RecordsRetention**: Keep the selected number of records (-1 to ignore).
