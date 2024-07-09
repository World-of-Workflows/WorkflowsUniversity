---
title: Views
layout: default
nav_order: 13
parent: Workflow Activities
has_children: false
---

# Views Read
**Description:** Gets the list of views.

**Category:** Views


**Output Properties:**
- **Output**: An array of all the current views

# View Create
**Description:** Creates a View.

**Category:** Views

**Properties:**
- **ViewName**: The Name of the View
- **ViewDescription**: The Description of the View
- **ObjectType**: No hint available
- **Projection**: The list of columns to display in the order to display them in.
- **Query**: The Query to filter items
- **Orderings**: The list of orderings to apply to the instances in the view.
- **ParentId**: The Id of the Parent, null for the top menu

**Input Properties:**
- **ViewName**: The Name of the View
- **ViewDescription**: The Description of the View
- **ObjectType**: No hint available
- **Projection**: The list of columns to display in the order to display them in.
- **Query**: The Query to filter items
- **Orderings**: The list of orderings to apply to the instances in the view.
- **ParentId**: The Id of the Parent, null for the top menu

**Output Properties:**
- **ViewId**: No hint available
- **View**: No hint available
- **ReturnId**: No hint available
- **ReturnResult**: No hint available
- **ReturnResultException**: No hint available

# Views Get Data
**Description:** Gets the data within a view.

**Category:** Views

**Properties:**
- **ViewName**: The Name of the View
- **Expanded**: Expands to get details on related Types

**Input Properties:**
- **ViewName**: The Name of the View
- **Expanded**: Expands to get details on related Types

**Output Properties:**
- **Output**: No hint available
