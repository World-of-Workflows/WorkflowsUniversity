# Hello World

In this tutorial, you will become familiarised with the basics of activities and receive the output of activities.

## Create a Workflow
* ### Go to Admin > Workflows.
This will take you to the workflows dashboard. It will list the workflows that you have created.

* ### Click 'Create'. 
This will Create a new workflow.

* ### Click the arrows '>>'
This will open a settings page for the workflow. 

* ### Rename Workflow to 'Hello World'. 
By default, the workflow is called 'Unnamed'. This will allow you to distinguish it from other workflows.


## Add 'HTTP Endpoint' Activity
* #### Click on the 'Start' button
This will bring up a list of all activities available. 
* ### Click 'HTTP' > 'HTTP Endpoint'.
This activity is a trigger that will start a workflow when the specified endpoint is called.

* ### Use the Configuration below
Endpoint: hello-world

Method: Get

## Add 'Type Create' Activity
* ### Click the plus button underneath the 'HTTP Endpoint' Activity. 
This will bring up a popup. 
* ### Now click 'Data' > 'Type Create'.
When this activity runs it will create a new type.

* ### Use the below configuration
Name: Hello World

Create Title Column: yes

* ### Name activity
Click on the **Common** tag then rename the activity to 'MyType'

* ### Now click configure 
Notice that here we can see the outputs of the activity. Such as the **ReturnResult** and the **ResultId**. Since we want to create an object of this type
we will want to get the **ReturnResult**.

## Add 'Object Create' Activity
* ### Open Activities
Click the plus button underneath the 'Type Create' activity. 
* ### Add 'Object Create' Activity
Go to 'Data' > 'Object Create'.
* ### Configure Activity
Go to the three buttons at the top (...) then click JavaScript.

 TypeId: activities.MyType.ReturnId

* ### Rename Activity
Now go to Commmon and rename the activity to 'MyObject'

## Add 'Desired State Create and Promote' Activity

This activity will create a desired state for an object, and then promote it to its current state.

A desired state is a state an object can be at such as 

Example Desired State:

Current State:  'Title': 'MyTitle'

Desired State:  'Title': 'MyUpdatedTitle' 

An object can have many desired states, but only one Current State. Promoting a Desired State will change the Desired State to its current State.
It will also change the Current State into a Historical State

### Advanced Explanation
Please refer to Chryssie

* ### Open Activities
Click the plus button underneath the 'Object Create' activity. 
* ### Add 'Desired State Create and Promote' Activity
Go to 'Data' > 'Desired State Create and Promote'.
* ### Configure Activity
Go to the three buttons at the top (...) then click JavaScript.

Object Id: activities.MyObject.ReturnId
## Run Activity

* ### Hit publish
This will **not** create an instance of the workflow, but it will add the http endpoint as a route. 

* ### Open Endpoint
https://localhost:7063/hello-world

## Check if it Worked
Now we will check if the workflow ran. If any of these steps fail please navigate to (DEBUGGING WORKFLOWS).
* ### Go to Workflows Instances
Click on 'Workflows Instances' tab.
* ### Should now see 'Succeeded'
This will show the status of the workflows instances.
* ### Go to Admin > Types
Here we can check if the type exists
* ### Hello World
Click on The hellow world type
* ### See if object
Object should exist with the title 'Hello World'



