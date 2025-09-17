---
title: Solutions
layout: default
nav_order: 14
parent: Workflow Activities
has_children: false
---

These activities are used by the Solution system. They are not designed for common use

# Solutions Table Create
**Description:** Creates a new Table for Solutions.

**Category:** Solutions


**Output Properties:**
- **ReturnResult**: No hint available
- **CreatedTypeName**: No hint available
- **ReturnResultException**: No hint available
- **ReturnId**: No hint available

# Solutions View Create
**Description:** Creates a View with outcomes required by solutions

**Category:** Solutions

**Properties:**
- **ViewName**: The Name of the View
- **ViewDescription**: The Description of the View
- **ObjectType**: No hint available
- **Projection**: The list of columns to display in the order to display them in.
- **Query**: The Query to filter items
- **Filter**: The Filter to filter items
- **Orderings**: The list of orderings to apply to the instances in the view.
- **ParentId**: The Id of the Parent, null for the top menu

**Input Properties:**
- **ViewName**: The Name of the View
- **ViewDescription**: The Description of the View
- **ObjectType**: No hint available
- **Projection**: The list of columns to display in the order to display them in.
- **Query**: The Query to filter items
- **Filter**: The Filter to filter items
- **Orderings**: The list of orderings to apply to the instances in the view.
- **ParentId**: The Id of the Parent, null for the top menu

**Output Properties:**
- **ViewId**: No hint available
- **View**: No hint available
- **ReturnId**: No hint available
- **ReturnResult**: No hint available
- **ReturnResultException**: No hint available

# Solutions View Update
**Description:** Updates a View with outcomes required by solutions

**Category:** Solutions

**Properties:**
- **ViewName**: The Name of the View
- **ObjectType**: No hint available
- **ParentId**: The Id of the Parent, null for the top menu

**Input Properties:**
- **ViewName**: The Name of the View
- **ObjectType**: No hint available
- **ParentId**: The Id of the Parent, null for the top menu

**Output Properties:**
- **View**: No hint available
- **ReturnId**: No hint available
- **ReturnResult**: No hint available
- **ReturnResultException**: No hint available

# Solutions Column Create
**Description:** Adds a column to a type and returns outcomes required by solutions

**Category:** Solutions

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

# Solutions Column Rename
**Description:** Rename Column in a Solution.

**Category:** Solutions

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

# Solutions Create Object Instance 
**Description:** Creates a new object of the specified type with the specified values for Solutions.

**Category:** Solutions

**Properties:**
- **ObjectType**: The Table
- **Values**: The data to create the new object with.
- **PrincipalTypeColumns**: The Instance Principal Table Columns
- **VariableName**: The Input Variable Name

**Input Properties:**
- **ObjectType**: The Table
- **Values**: The data to create the new object with.
- **PrincipalTypeColumns**: The Instance Principal Table Columns
- **VariableName**: The Input Variable Name

**Output Properties:**
- **Instance**: The object state after being updated by this activity.
- **InstanceId**: The ID of the created object instance.
- **ReturnResult**: No hint available
- **TypeName**: No hint available
- **ReturnResultException**: No hint available
