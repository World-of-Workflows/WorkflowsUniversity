---
title: Naming Conventions
parent: Patterns & Practices
layout: default
nav_order: 2
has_children: true
---

# Naming Conventions in World of Workflows

These standards have been developed by the **Customer Success Team** at World of Workflows.  

It is is our intent that all Solutions we provide follow these standards, and we recommend you follow these standards when writing your own workflows.

{: .key}
Remember that World of Workflows is CaSe SensitIVE !


## Workflow names

Each workflow is to be given both a Name and a DisplayName.  These names should be descriptive and unique within the instance.

## Types

### Short Name
Types should be named with a single word, or joined in CamelCase if more than one word is needed for clarity.

### Start with a Capital
Type names should start with a Capital letter.

### Singular
Types should be named in the singular.  For example, a Type that will hold a list of customers should be called `Customer`.  World of Workflows will display the plural of the type name when appropriate.

> We make an exception for the Type `Settings`, which is always plural.

## Variable names

Type names that represent a database object should be named with the Type of that database object.  Therefore variable names will start with a Capital letter.

{: .key }
Normally we use the name of the Type as the name of the Variable.
For example, if we are retrieving an instance of `Customer` the variable name would be `Customer`.  Your logic may require deviation from this, eg  `OldCustomer`, but do this with intention.  Do not call it 'MyCustomer' except to distinguish with another variable 'Customer'


## Workflow Activities

Each activity name in a workflow is to be given a descriptive name.  The default DisplayName should be modified to indicate the purpose of the activity.

### Set Variable

The `Set Variable` defaults to "Set Variable".  Change the DisplayName to include the variable name.

- when set to an initial value, use the syntax `Init <variableName>`
- when set to  value, use the syntax `Set <variableName>`
- when the value of a counter is incremented use the syntax `Increment <variableName>`
- when the value of a counter is decremented use the syntax `Decrement <variableName>`


### The `Get Object Instance` activity

The syntax for the DisplayName of `Get Object Instance` should be `Get <variableName>`.  For example, if we are retrieving an instance of a type of `Customer` into the variable `Customer` from the database, the DisplayName of the `Get Object Instance` would be `Get Customer`.  

Sometimes we deliberately choose a different variable name from the Type of the retrieved instance.  For example, getting a type of `Customer` into the variable `OldCustomer` from the database, the DisplayName of the `Get Object Instance` would be `Get OldCustomer`.  





### The `List Object Instances` activity

The syntax for the DisplayName of `List Object Instances` should be `List <Type>`.  For example, if we are accessing a list of the Type `Customer` the DisplayName of  `List Object Instances` would be `List Customers`.  

> Append a representation of any limit used in the activity.  
>  For example  `List Customers up to 10` or `List first 10 Customers`.

> Append a representation of any filter used in the activity.  
>  For example  `List Customers active == true` or `List Active Customers`.



### The `Update Object Instance` activity

The syntax for the DisplayName of `Update Object Instance` should be `Update <variableName>`.  For example, if we are writing a the variable `Customer` to the database the DisplayName of the `Update Object Instance` would be `Update Customer`. 


### The `HTTP Endpoint` activity

The syntax for the DisplayName of `HTTP Endpoint` should be `<METHOD> url`
For example, if the activity is set to respond to a POST command of '/addCustomer', the DisplayName for the activity should be `POST /addCustomer`

Endpoint (url) names should start with lowercase and be camelCased as needed.

Endpoints that are only designed to be called by your own workflows as should be prefixed '/api/'  For example a button on a web page that deletes a data row of a table might have the url `/api/deleteRow`.  The HTP Endpoint activity would be called `POST /api/deleteRow`

### The `Send HTTP Request` activity

The syntax for the DisplayName of `Send HTTP Request` should be `<METHOD> url`
For example, if the activity is set to send a a POST command of '/addCustomer', the DisplayName for the activity should be `POST /addCustomer`

### The `Redirect` activity

The syntax for the DisplayName of `Redirect` should be `Redircet to url`
For example, if the activity is set to redirect to '/home', the DisplayName for the activity should be `Redirect to /home`


### The `Correlate` activity

Factors to consider when deciding to add Correlate activities to your Workflows:

- the workflow contains several execution paths 
  - consider adding a Correlate activity at the beginning of each path
- the workflow is called multiple times in the course of a business transaction 
  - to debug this workflow you might need to be able to easily differentiate between the instance logs
- do not change the Correlation ID when using Signals between workflows
  - Where you design workflows to use Signals for inter-workflow communication for not use the `Correlate` activity without understanding the ramifications on the `Send Signal` and `Signal Received` activities.

### The `Run Workflow` activity

The DisplayName of the `Run Workflow` activity should include the name of the child workflow.  For example, in the parent workflow `AddCustomer` which calls a workflow 'GetCustomerByID', the DisplayName for the Run Workflow command would be `Run GetCustomerByID`


### The `If/Else` activity

The `If/Else` always returns either `true` or `false`.  The DisplayName should indicate the `true` branch.  

For example, we want to test if the customer exists.  The name of the `If/Else` activity should be `If customer exists` (ie the *true* branch).  Do not to use the negative of `if customer does not exist` because this requires the reader of the workflow to deal with a false value being processed down the *true* branch.

### For loops

Use a DisplayName for the For Each loop as `For Each <collectionName>`, such as `For Each Customers`

Use a concatenation of this DisplayName as the Name.  For example `forEachCustomers`