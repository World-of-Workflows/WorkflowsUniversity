# Managing Long Running Workflows

Essentially: a stub workflow calls the main workflow.

The main workflow sets some statuses in an object as it goes along.

At suitable points (eg when there is a likelihood of the main workflow having a task that does not get processed for a while) the main workflow ends, passing back enough detail that the stub (parent) workflow knows that it needs to re-run the main workflow.  

When the main workflow kicks off again, it will use the status info it already set to move to the right part of the flow. 

Attached are 2 sample flows: overview (the stub) and Detail (the main workflow)

## Main Workflow

The main workflow has these elements:
- A number of triggers to start the Workflow
- A set of variables created based on the triggers
- A ```RunWorkflow``` Activity as follows:
  - WorkflowDefinition: ```Liquid```
    ```liquid
    {{"<STUB WORKFLOW NAME" | workflow_definition_id}}
    ```
  - Input - ```Liquid```
    ```liquid
    {
        "Variable Name":"{{Varisbles.VariableName1}}",
        "Variable Name 2":"{{Variables.VariableName2}}"
    }
    ```
   - Possible Outcomes:
     - Continue
     - Cancel
   - Mode
     - Blocking
 - A ```RunJavascript``` Activity to get the output of the stub workflow with the following code:
   ```javascript
   var allVars = getActivityProperty("runDetailWorkflow","Output");
   for(const property in allVars.workflowOutput)
   {
     setVariable(property.toString(),allVars.workflowOutput[property]);
   }
   ```
# The Details Workflow

The Details workflow will have these elements
- A ```RunJavascript``` activity to get the incoming variables with the following code:
  ```javascript
  var parameters = JSON.parse(input)
  setVariable("Parameters",parameters)
  ```
The Details workflow will then run the required process.
