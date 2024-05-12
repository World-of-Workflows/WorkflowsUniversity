---
title: Javascript Expressions
layout: default
nav_order: 2
parent: Javascript
grand_parent: Reference
---

# JavaScript Expressions
The following JavaScript expressions are supported:

## Contents
- [JavaScript Expressions](#javascript-expressions)
  - [Contents](#contents)
- [Variables](#variables)
  - [Workflow Variables](#workflow-variables)
  - [Activity Output](#activity-output)
  - [SendHttpRequest Activity](#sendhttprequest-activity)
    - [input](#input)
    - [workflowInstanceId](#workflowinstanceid)
    - [workflowDefinitionId](#workflowdefinitionid)
    - [workflowDefinitionVersion](#workflowdefinitionversion)
    - [correlationId](#correlationid)
    - [currentCulture](#currentculture)
    - [workflowContext](#workflowcontext)
    - [currentCulture](#currentculture-1)
  - [Common Functions](#common-functions)
    - [guid](#guid)
    - [parseGuid](#parseguid)
    - [setVariable](#setvariable)
    - [getVariable](#getvariable)
    - [getTransientVariable](#gettransientvariable)
    - [getConfig](#getconfig)
    - [isNullOrWhiteSpace](#isnullorwhitespace)
    - [isNullOrEmpty](#isnullorempty)
  - [Workflow Functions](#workflow-functions)
    - [getWorkflowDefinitionIdByName](#getworkflowdefinitionidbyname)
    - [getWorkflowDefinitionIdByTag](#getworkflowdefinitionidbytag)
  - [HTTP Functions](#http-functions)
    - [queryString](#querystring)
    - [absoluteUrl](#absoluteurl)
    - [signalUrl](#signalurl)
  - [Date/Time Functions](#datetime-functions)
    - [instantFromDateTimeUtc](#instantfromdatetimeutc)
    - [currentInstant](#currentinstant)
    - [currentYear](#currentyear)
    - [startOfMonth](#startofmonth)
    - [endOfMonth(instant: Instant?)](#endofmonthinstant-instant)
    - [startOfPreviousMonth](#startofpreviousmonth)
    - [plus](#plus)
    - [minus](#minus)
    - [durationFromDays](#durationfromdays)
    - [formatInstant](#formatinstant)
    - [localDateFromInstant](#localdatefrominstant)
    - [instantFromLocalDate](#instantfromlocaldate)


# Variables
## Workflow Variables

To access a workflow variable, use the getVariable function.

For example, if the SetVariable activity sets a variable called FirstName to 'Luke', it can be accessed as follows:

```js
const firstName = getVariable('FirstName');
 `Hello ${firstName}`
```

To set a workflow variable, use the setVariable function.

## Activity Output
Any activity might provide some output, which is accessible from any other activity using workflow expressions. To access an activity's output property called e.g. Output using a JavaScript expression, you can do so by specifying activities, then the **activity name** followed by ```.Output()```. 

> Notice that you must invoke the property as if it were a method. This is due to the way workflow storage providers work, which are potentially asynchronous in nature (such as Azure Blob Storage).

For example, if you have an activity named ```MyActivity```, you can access its output as follows: ```activities.MyActivity.Output()```.

If the output is an object, you can access its properties too. For instance, the HTTP Endpoint activity returns the HTTP request as its output which is of type ```HttpRequestModel```. When you name this activity ```"MyHttpEndpoint"```, you can access the HTTP request body like this:

```activities.MyHttpEndpoint.Output().Body```

If you happened to post a JSON document to your HTTP endpoint that looks like this:

```json
{
  "SomeDocument": {
    "Title": "About Elsa Workflows"
  }
}
```

Then you can access the "Title" field like this:

```activities.MyHttpEndpoint.Output().Body.SomeDocument.Title```

> If your activity is a direct child of an HTTP Endpoint activity, you can access its output directly via the ```input``` variable, which will be an instance of ```HttpRequestModel```.

## SendHttpRequest Activity

The SendHttpRequest activity has two output properties:

```cs
    [ActivityOutput] public HttpResponseModel? Response { get; set; }
    [ActivityOutput] public object? ResponseContent { get; set; }
``` 
To access a **SendHttpRequest** activity with name ```SampleRequest1```'s response content, use ```activities.SampleRequest1.ResponseContent()```.

### input
Contains the input value that was received as output from the previously executed activity, if any.

```
input: object?
```

### workflowInstanceId
Contains the workflow instance ID of the currently executing workflow.

```
workflowInstanceId: string
```

### workflowDefinitionId

Contains the workflow definition ID of the currently executing workflow.

```
workflowDefinitionId: string
```

### workflowDefinitionVersion

Contains the workflow definition version of the currently executing workflow.

```
workflowDefinitionVersion: number
```

###  correlationId
Contains the correlation ID of the currently executing workflow.

```
correlationId: string?
```

### currentCulture

Contains the current culture.

```
currentCulture: CultureInfo
```

Currently, this value is always set to ```CultureInfo.InvariantCulture```.

### workflowContext

Contains the workflow context (if any) of the currently executing workflow.

```
workflowContext: object?
```

### currentCulture

Returns the current culture.

```
currentCulture: CultureInfo
```

## Common Functions

### guid

Generates a new GUID value and returns its string representation.

```js
guid(): string
```

*This function is a thin wrapper around the following .NET code: ```Guid.NewGuid().ToString()```.*

### parseGuid
Parses a string into a GUID value.

```
parseGuid(value: string): Guid
```

*This function is a thin wrapper around the following .NET code: Guid.Parse(value).*

### setVariable
Sets a workflow variable to the specified value.

```js
setVariable(name: string, value: object): void
```

*This function is a thin wrapper around the following .NET code: activityContext.SetVariable(name, value).*

### getVariable
Returns a workflow variable with the specified name.

```js
getVariable(name: string): object
```

> Instead of using getVariable(name: string), you can access workflow variables directly as described above in the Workflow Variables section.

*This function is a thin wrapper around the following .NET code: ```activityContext.GetVariable(name)```.*

### getTransientVariable
Returns a transient workflow variable with the specified name.

```js
getTransientVariable(name: string): object
```

*This function is a thin wrapper around the following .NET code: activityContext.GetTransientVariable(name)*.

### getConfig
Provides access to a .NET configuration value.

```js
getConfig(name: string): string
```
This is a security-sensitive function and is therefore not available by default. You need to enable this function through a setting. To enable this function, Enable it in Admin -> Settings -> Config Access.

As an example, let's say you have the following JSON in appsettings.json:

```json
{
  "Elsa": {
    "Smtp": {
      "Host": "localhost",
      "Port": 2525
    }
  }
}
```

You can access the configured Port value using the following expression:

```js
getConfig("Elsa:Smtp:Port") // returns '2525'
```
*This function is a thin wrapper around the following .NET code: ```configuration.GetSection(name).Value``` where configuration is an instance of ```IConfiguration```*.

### isNullOrWhiteSpace

Returns true if the specified string is null, empty or consists of white space only, false otherwise.

```js
isNullOrWhiteSpace(value: string): boolean
```

*This function is a thin wrapper around the following .NET code: ```string.IsNullOrWhiteSpace(value)```*.

### isNullOrEmpty
Returns true if the specified string is null or empty, false otherwise.

```js
isNullOrEmpty(value: string): boolean
```

*This function is a thin wrapper around the following .NET code: string.IsNullOrEmpty(value)*.

## Workflow Functions

### getWorkflowDefinitionIdByName
Returns the ID of the specified workflow by name. This is useful when for instance you are using the RunWorkflow activity, which requires the ID of the workflow definition to run.

```js
getWorkflowDefinitionIdByName(name: string): string?
```

### getWorkflowDefinitionIdByTag
Returns the ID of the specified workflow by tag. This is useful when for instance you are using the RunWorkflow activity, which requires the ID of the workflow definition to run.

```js
getWorkflowDefinitionIdByTag(tag: string): string?
```

## HTTP Functions
### queryString
Returns the value of the specified query string parameter.

```js
queryString(name: string): string
```

### absoluteUrl
Converts the specified relative path into a fully-qualified absolute URL.

```js
absoluteUrl(path: string): string
```

### signalUrl
Generates a fully-qualified absolute signal URL that will trigger the workflow instance from which this function is invoked.

```js
signalUrl(signal: string): string
```

## Date/Time Functions

### instantFromDateTimeUtc
Returns a new Instant object from the specified DateTime value.

Make sure that the DateTime value's Kind property is ```DateTimeKind.Utc```.

### currentInstant
Returns the current date/time value in the form of a NodaTime's Instant object.

```js
currentInstant(): Instant
```

### currentYear
Returns the current year.

```js
currentYear(): number
```

### startOfMonth
Returns the start of the month of the specified instant. If no instant is specified, the current instant is used.

```js
startOfMonth(instant: Instant?): LocalDate;
```

### endOfMonth(instant: Instant?)
Returns the end of the month of the specified instant. If no instant is specified, the current instant is used.

```js
endOfMonth(instant: Instant?): LocalDate;
```

### startOfPreviousMonth
Returns the start of the previous month of the specified instant. If no instant is specified, the current instant is used.

```js
startOfPreviousMonth(instant: Instant?): LocalDate;
```

### plus
Adds the specified Duration to the specified Instant and returns the result.

```js
plus(instant: Instant, duration: Duration): Instant
```

### minus
Subtracts the specified Duration from the specified Instant and returns the result.

```js
minus(instant: Instant, duration: Duration): Instant
```

### durationFromDays
Returns a duration constructed from the specified number of days.

```js
durationFromDays(days: number): Duration
```

### formatInstant
Formats the specified Instant using the specified format string and CultureInfo. If no culture info is provided, ```CultureInfo.InvariantCulture``` is used.

```js
formatInstant(instant: Instant, format: string, cultureInfo: CultureInfo?): string
```

### localDateFromInstant
Returns the LocalDate portion of the specified Instant.

```js
localDateFromInstant(instant: Instant): LocalDate
```

### instantFromLocalDate
Creates an Instant from the specified LocalDate value (start of date).

```
instantFromLocalDate(localDate: LocalDate): Instant
```
