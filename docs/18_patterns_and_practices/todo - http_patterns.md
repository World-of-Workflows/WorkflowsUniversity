---
xxtitle: pull out some useful Patterns and Practices
parent: Patterns & Practices
layout: default
nav_order: 4
has_children: false
---
Based on the provided workflows from the JSON files, several programming patterns are evident that can be extremely useful in writing product documentation. Here are detailed descriptions of these patterns:

### 1. **Variable Initialization and Setting**

#### Pattern:
- **SetVariable** activities are frequently used to initialize and set variables throughout the workflows.
  
#### Description:
In workflows like "RemoveAddSetupFee" and "BuildServiceAgreement," the `SetVariable` activity is used to initialize variables with specific values. This pattern helps in managing and passing data between different workflow activities. Variables such as `Parameters`, `Property`, `RateCardName`, and `ContactAddress` are set using expressions that derive their values from either inputs or outputs of other activities.

#### Example:
```json
{
  "activityId": "246a9811-0c98-46da-9ac1-b708825e24a5",
  "type": "SetVariable",
  "displayName": "Set Parameters",
  "properties": [
    {"name": "VariableName", "expressions": {"Literal": "Parameters"}},
    {"name": "Value", "syntax": "JavaScript", "expressions": {"JavaScript": "input"}}
  ]
}
```

### 2. **Data Retrieval and Management**

#### Pattern:
- **ObjectInstanceGet** and **ObjectInstanceList** activities are used for fetching data from the database.

#### Description:
These activities are used to retrieve single or multiple records from the database, based on certain criteria. This pattern is crucial for accessing necessary data points required for further processing within the workflow. For instance, retrieving contact information or listing quoted items based on filters.

#### Example:
```json
{
  "activityId": "d638e1c0-dedd-4b33-9c00-c30b24f8da5a",
  "type": "ObjectInstanceGet",
  "displayName": "Get Contact",
  "properties": [
    {"name": "InstanceId", "syntax": "JavaScript", "expressions": {"JavaScript": "activities.ListUsername.Output()[0].ObjectId"}},
    {"name": "VariableName", "expressions": {"Literal": "Contact"}}
  ]
}
```

### 3. **Conditional Logic**

#### Pattern:
- **If** activities are used to introduce conditional logic into workflows.

#### Description:
The `If` activity is employed to check conditions and branch the workflow based on the outcomes. This pattern allows for dynamic decision-making processes within the workflow, enabling different actions based on variable states or data values.

#### Example:
```json
{
  "activityId": "b1aff447-3cf5-403e-885f-e347f176a181",
  "type": "If",
  "displayName": "if Setup fee needed",
  "properties": [
    {"name": "Condition", "syntax": "JavaScript", "expressions": {"JavaScript": "getVariable(\"ContractTerm\").SetupFeeApplied"}}
  ]
}
```

### 4. **Loops for Iterative Processing**

#### Pattern:
- **ForEach** activities are used for iterating over collections.

#### Description:
The `ForEach` activity is utilized to loop through collections of items, allowing the workflow to process each item individually. This is particularly useful for handling lists of data such as quoted items or services.

#### Example:
```json
{
  "activityId": "136",
  "type": "ForEach",
  "name": "ForEachSetupItem",
  "displayName": "For Each Setup item",
  "properties": [
    {"name": "Items", "syntax": "JavaScript", "expressions": {"JavaScript": "activities.ListQuotedItems.Output()"}}
  ]
}
```

### 5. **Data Transformation**

#### Pattern:
- **RunJavaScript** and complex expressions in **SetVariable** are used for data transformation.

#### Description:
Complex JavaScript expressions are employed to manipulate and transform data before it is set into variables or used in subsequent activities. This pattern allows for customization and flexible data handling within the workflow.

#### Example:
```json
{
  "activityId": "126",
  "type": "SetVariable",
  "displayName": "Set RateTableTierName",
  "properties": [
    {"name": "VariableName", "expressions": {"Literal": "RateTableTierName"}},
    {"name": "Value", "syntax": "JavaScript", "expressions": {"JavaScript": "let t = getVariable(\"SelectedTier\")\nlet panel \nif (t.FirePanel) {panel = 'WithPanel'} \nelse {panel = 'NoPanel'}\nreturn \"Tier\"+t.TierNumber+panel+\"Price\""}}
  ]
}
```

### 6. **Finalization and Cleanup**

#### Pattern:
- **Finish** activities signify the end of a workflow.

#### Description:
The `Finish` activity is used to mark the completion of a workflow. This pattern ensures that the workflow concludes properly, often with specific output or cleanup actions.

#### Example:
```json
{
  "activityId": "196",
  "type": "Finish",
  "displayName": "Finish",
  "properties": [
    {"name": "ActivityOutput", "syntax": "JavaScript", "expressions": {"JavaScript": ""}},
    {"name": "OutcomeNames", "expressions": {"Json": "[\"Finished\"]"}}
  ]
}
```

These patterns illustrate how workflows are structured to handle various tasks such as data manipulation, conditional logic, looping, and finalization. Understanding these patterns is essential for writing comprehensive product documentation, as it helps in explaining the functionality and flow of workflows clearly and effectively.

### 7. **Error Handling and Default Outcomes**

#### Pattern:
- **Using default outcomes and error handling activities**

#### Description:
Workflows often have default outcomes or paths to handle errors or unexpected situations gracefully. This ensures that the workflow can continue or terminate properly even if something goes wrong.

#### Example:


### 8. **Dynamic Data Fetching Based on Previous Outputs**

#### Pattern:
- **Fetching data dynamically based on previous activity outputs**

#### Description:
Many activities fetch data dynamically based on the outputs of previous activities. This ensures that the workflow adapts to the data it processes at runtime, enhancing flexibility and accuracy.

#### Example:


### 9. **Data Aggregation and Summarization**

#### Pattern:
- **Aggregating and summarizing data from multiple sources**

#### Description:
Activities often aggregate or summarize data from multiple sources to provide a comprehensive view or to prepare data for further processing. This is especially useful in generating reports or summarizing information for decision-making.

#### Example:


### 10. **Sequential Execution and Dependencies**

#### Pattern:
- **Sequential execution based on dependencies between activities**

#### Description:
Activities are often executed in a specific sequence based on dependencies. One activity's output becomes the input for the next, ensuring that the workflow follows a logical and necessary order of operations.

#### Example:

### 11. **Using JavaScript for Complex Logic**

#### Pattern:
- **Embedding JavaScript code for complex logic and calculations**

#### Description:
JavaScript is frequently used within activities to perform complex logic, calculations, or data manipulations that go beyond simple variable setting. This allows for powerful and flexible workflows that can handle intricate business logic.

#### Example:
```json
{
  "activityId": "126",
  "type": "SetVariable",
  "displayName": "Set RateTableTierName",
  "properties": [
    {"name": "VariableName", "expressions": {"Literal": "RateTableTierName"}},
    {"name": "Value", "syntax": "JavaScript", "expressions": {"JavaScript": "let t = getVariable(\"SelectedTier\")\nlet panel \nif (t.FirePanel) {panel = 'WithPanel'} \nelse {panel = 'NoPanel'}\nreturn \"Tier\"+t.TierNumber+panel+\"Price\""}}
  ]
}
```

### 12. **Handling Collections and Arrays**

#### Pattern:
- **Iterating and processing collections or arrays of data**

#### Description:
Workflows frequently include activities that handle collections or arrays, iterating through them to apply certain operations or to gather data. This is essential for batch processing and managing groups of related items.

#### Example:

### 13. **User Input Handling**

#### Pattern:
- **Handling user inputs and dynamically updating workflow variables**

#### Description:
User inputs are captured and used to dynamically update workflow variables, ensuring that the workflow can respond to user actions and inputs in real-time. This pattern is crucial for interactive workflows.

#### Example:

### 14. **Data Formatting**

#### Pattern:
- **Formatting data for display or further processing**

#### Description:
Data is often formatted to meet specific requirements for display or further processing. This includes transforming dates, concatenating strings, and formatting numbers.

#### Example:
```json
{
  "activityId": "16",
  "type": "SetVariable",
  "displayName": "Set EndDateText",
  "properties": [
    {"name": "VariableName", "expressions": {"Literal": "EndDateText"}},
    {"name": "Value", "syntax": "JavaScript", "expressions": {"JavaScript": "new Date(getVariable(\"ServiceQuote\").EndDate?.[1] ?? getVariable(\"ServiceQuote\").EndDate ).toLocaleDateString()"}}
  ]
}
```

### 15. **Complex Data Structures**

#### Pattern:
- **Creating and manipulating complex data structures**

#### Description:
Workflows often involve creating and manipulating complex data structures, such as objects with multiple properties. This allows for detailed and comprehensive data management within the workflow.

#### Example:
```json
{
  "activityId": "84",
  "type": "ObjectInstanceCreate",
  "displayName": "Create PropertyServiceQuoteObject - Setup",
  "properties": [
    {"name": "ObjectType", "expressions": {"Literal": "PropertyServicesQuote"}},
    {"name": "Values", "syntax": "JavaScript", "expressions": {"JavaScript": "let r = {\n    \"ServicesQuote\":getVariable(\"ServiceQuote\").ObjectId,\n    \"Quantity\":1,\n    \"Title\": getVariable(\"RateTableService\").ServiceName,\n    \"ServiceName\": getVariable(\"RateTableService\").ObjectId,\n    \"ServicePrice\": (getVariable(\"RateTableService\")[get

Variable(\"RateTableTierName\")]?.toFixed(2)) ?? \"0\",\n    \"ServiceType\":getVariable(\"RateTableService\").ServiceType,\n    \"Frequency\":getVariable(\"RateTableService\").Frequency,\n    \"Service\":getVariable(\"RateTableService\").Service,\n    \"AnnualRecurring\":false\n\n}\nreturn r"}}
  ]
}
```

> These additional patterns highlight the sophisticated and versatile nature of workflows, enabling them to handle a wide array of tasks and scenarios effectively. Understanding and documenting these patterns will help in creating thorough and clear product documentation.