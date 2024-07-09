---
title: Tasks
layout: default
nav_order: 12
parent: Workflow Activities
has_children: false
---

# Task Create
**Description:** Creates a task, sets parameters and waits for it to complete.

**Category:** Tasks

**Properties:**
- **Title**: Provide the Title of the Task
- **TaskDescription**: The Description of the Task using Markdown
- **Severity**: The severity of the Task
- **Priority**: The Priority of the Task
- **Due**: Days from Today that Task is Due (1-N)
- **RelatedObjectInstanceId**: The Id of the Object that this task is related to. Also used for data questions below.
- **DataQuestions**: Questions, or data to complete. The "Name" is the display label and the "Value" is the column name or ID to edit.
- **VariableName**: A Variable Name to set with the contents of the updated object
- **Branches**: Enter one or more Answers. These will become buttons for the user to respond to.

**Input Properties:**
- **Title**: Provide the Title of the Task
- **TaskDescription**: The Description of the Task using Markdown
- **Severity**: The severity of the Task
- **Priority**: The Priority of the Task
- **Due**: Days from Today that Task is Due (1-N)
- **RelatedObjectInstanceId**: The Id of the Object that this task is related to. Also used for data questions below.
- **DataQuestions**: Questions, or data to complete. The "Name" is the display label and the "Value" is the column name or ID to edit.
- **VariableName**: A Variable Name to set with the contents of the updated object
- **Branches**: Enter one or more Answers. These will become buttons for the user to respond to.

**Output Properties:**
- **TaskId**: No hint available
- **SelectedBranch**: No hint available

# Task Delete
**Description:** Deletes a task.

**Category:** Tasks

**Properties:**
- **TaskId**: The Task Id

**Input Properties:**
- **TaskId**: The Task Id

**Output Properties:**
- **ReturnResult**: No hint available

### Task Detail Create
**Description:** Adds a detail to task.

**Category:** Tasks

**Properties:**
- **WorkflowsTaskId**: The Id of the Task
- **ObjectId**: The Id of the Object to Add

**Input Properties:**
- **WorkflowsTaskId**: The Id of the Task
- **ObjectId**: The Id of the Object to Add

**Output Properties:**
- **ReturnResult**: No hint available
- **ReturnId**: No hint available

# Task Details Read
**Description:** Gets the details associated with a task.

**Category:** Tasks

**Properties:**
- **WorkflowsTaskId**: The Task Id

**Input Properties:**
- **WorkflowsTaskId**: The Task Id

**Output Properties:**
- **ReturnResult**: No hint available
- **TaskDetails**: No hint available

### Task Update
**Description:** Updates a task.

**Category:** Tasks

**Properties:**
- **WorkflowsTaskId**: The Id of the Task
- **ObjectId**: The Id of the Object to Add

**Input Properties:**
- **WorkflowsTaskId**: The Id of the Task
- **ObjectId**: The Id of the Object to Add

**Output Properties:**
- **ReturnResult**: No hint available
- **ReturnId**: No hint available
