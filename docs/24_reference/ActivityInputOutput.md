---
title: Activity Input and Output
layout: default
nav_order: 11
parent: Reference
---

# Activity Input and Output


# Activity Guide

The following workflow activities are available:

### Read Line
Read text from standard in.

**Category:** Console

**There are no input parameters**

#### Output Parameters

| Name | Type | Hint |
| -- | -- | -- |
| Output | System.String |  |

#### Outcomes

- Done

### Write Line
Write text to standard out.

**Category:** Console

#### Input Parameters

| Name | Type | Label | Hint | ReadOnly | Browsable |
| -- | -- | -- | -- | -- | -- |
| Text | System.String | Text | The text to write. | False | True |

**There are no Output parameters**

#### Outcomes

- Done

### Send Email
Send an email message.

**Category:** Email

#### Input Parameters

| Name | Type | Label | Hint | ReadOnly | Browsable |
| -- | -- | -- | -- | -- | -- |
| From | System.String | From | The sender's email address. | False | True |
| To | System.Collections.Generic.ICollection`1[System.String] | To | The recipients email addresses. | False | True |
| Cc | System.Collections.Generic.ICollection`1[System.String] | Cc | The cc recipients email addresses. | False | True |
| Bcc | System.Collections.Generic.ICollection`1[System.String] | Bcc | The Bcc recipients email addresses. | False | True |
| Subject | System.String | Subject | The subject of the email message. | False | True |
| Attachments | System.Object | Attachments | The attachments to send with the email message. Can be (an array of) a fully-qualified file path, URL, stream, byte array or instances of EmailAttachment. | False | True |
| Body | System.String | Body | The body of the email message. | False | True |

**There are no Output parameters**

#### Outcomes

- Done
- Success
- Unexpected Error

### Entity Changed
Triggers when an entity was added, updated or deleted.

**Category:** Entity

#### Input Parameters

| Name | Type | Label | Hint | ReadOnly | Browsable |
| -- | -- | -- | -- | -- | -- |
| EntityName | System.String | Entity Name | The Entity Name to observe. Matches any entity if no value is specified. | False | True |
| Action | System.Nullable`1[Elsa.Activities.Entity.EntityChangedAction] | Action | The Entity Changed Action to observe. Matches any action if no value is specified. | False | True |

#### Output Parameters

| Name | Type | Hint |
| -- | -- | -- |
| Output | System.Object |  |

#### Outcomes

- Done

### Delete File
Deletes file at specified location

**Category:** File

#### Input Parameters

| Name | Type | Label | Hint | ReadOnly | Browsable |
| -- | -- | -- | -- | -- | -- |
| Path | System.String | Path | Path of the file to delete. | False | True |

**There are no Output parameters**

#### Outcomes

- Done

### Enumerate Files
Enumerates files in a given folder

**Category:** File

#### Input Parameters

| Name | Type | Label | Hint | ReadOnly | Browsable |
| -- | -- | -- | -- | -- | -- |
| Path | System.String | Path | Path of the folder to enumerate files. | False | True |
| Pattern | System.String | Pattern | Pattern for files to return. | False | True |
| IgnoreInaccessible | System.Boolean | Ignore Inaccessible | Ignore inaccessible files. | False | True |
| MatchCasing | System.IO.MatchCasing | Match Casing | Set case sensitivity. | False | True |
| SubDirectories | System.Boolean | Sub Directories | Return files from sub directories | False | True |

#### Output Parameters

| Name | Type | Hint |
| -- | -- | -- |
| Files | System.Collections.Generic.IEnumerable`1[System.String] | List of files. |

#### Outcomes

- Done

### File Exists
Checks if a file exists

**Category:** File

#### Input Parameters

| Name | Type | Label | Hint | ReadOnly | Browsable |
| -- | -- | -- | -- | -- | -- |
| Path | System.String | Path | Path of the file to check. | False | True |

**There are no Output parameters**

#### Outcomes

- True
- False

### Out File
Output input value to specified location

**Category:** File

#### Input Parameters

| Name | Type | Label | Hint | ReadOnly | Browsable |
| -- | -- | -- | -- | -- | -- |
| Bytes | System.Byte[] | Bytes | Bytes to write to file. | False | True |
| Path | System.String | Path | Path to create file at. | False | True |
| Mode | Elsa.Activities.File.CopyMode | Mode | How the output file should be written. | False | True |

**There are no Output parameters**

#### Outcomes

- Done

### Read File
Output input value to specified location

**Category:** File

#### Input Parameters

| Name | Type | Label | Hint | ReadOnly | Browsable |
| -- | -- | -- | -- | -- | -- |
| Path | System.String | Path | Path to read content from. | False | True |

#### Output Parameters

| Name | Type | Hint |
| -- | -- | -- |
| Bytes | System.Byte[] | Bytes of the file read. |

#### Outcomes

- Done

### Temp File
Created a temporary file and returns its path

**Category:** File

**There are no input parameters**

#### Output Parameters

| Name | Type | Hint |
| -- | -- | -- |
| Path | System.String | Path of the created temporary file. |

#### Outcomes

- Done

### Watch Directory
Triggers when files are created/modified in the given folder

**Category:** File

#### Input Parameters

| Name | Type | Label | Hint | ReadOnly | Browsable |
| -- | -- | -- | -- | -- | -- |
| Path | System.String | Path | The path of the directory to watch | False | True |
| Pattern | System.String | Pattern | The file pattern for interested files | False | True |
| ChangeTypes | System.IO.WatcherChangeTypes | Change Types | The types of file system events to subscribe to | False | True |
| NotifyFilters | System.IO.NotifyFilters | Notify Filters |  | False | True |

#### Output Parameters

| Name | Type | Hint |
| -- | -- | -- |
| Output | Elsa.Activities.File.Models.FileSystemEvent |  |

#### Outcomes

- Done

### Cron
Triggers periodically based on a specified CRON expression.

**Category:** Timers

#### Input Parameters

| Name | Type | Label | Hint | ReadOnly | Browsable |
| -- | -- | -- | -- | -- | -- |
| CronExpression | System.String | Cron Expression | Specify a Quartz CRON expression. Go to https://www.freeformatter.com/cron-expression-generator-quartz.html to generate valid Quartz cron expressions. | False | True |

**There are no Output parameters**

#### Outcomes

- Done

### Timer
Triggers at a specified interval.

**Category:** Timers

#### Input Parameters

| Name | Type | Label | Hint | ReadOnly | Browsable |
| -- | -- | -- | -- | -- | -- |
| Timeout | NodaTime.Duration | Timeout | The time interval at which this activity should tick. | False | True |

**There are no Output parameters**

#### Outcomes

- Done

### Start at
Triggers at a specified moment in time.

**Category:** Timers

#### Input Parameters

| Name | Type | Label | Hint | ReadOnly | Browsable |
| -- | -- | -- | -- | -- | -- |
| Instant | NodaTime.Instant | Instant | An instant in the future at which this activity should execute. | False | True |

**There are no Output parameters**

#### Outcomes

- Done

### Clear Timer
Cancel a timer (Cron, StartAt, Timer) so that it is not executed.

**Category:** Timers

#### Input Parameters

| Name | Type | Label | Hint | ReadOnly | Browsable |
| -- | -- | -- | -- | -- | -- |
| ActivityId | System.String | Activity Id | The ID of the timer (Cron, StartAt, Timer) activity, which is to be cleared. | False | True |

**There are no Output parameters**

#### Outcomes

- Done

### HTTP Endpoint
Handle an incoming HTTP request.

**Category:** HTTP

#### Input Parameters

| Name | Type | Label | Hint | ReadOnly | Browsable |
| -- | -- | -- | -- | -- | -- |
| Path | System.String | Path | The relative path that triggers this activity. | False | True |
| Methods | System.Collections.Generic.HashSet`1[System.String] | Methods | The HTTP methods that trigger this activity. | False | True |
| ReadContent | System.Boolean | Read Content | A value indicating whether the HTTP request content body should be read and stored as part of the HTTP request model. The stored format depends on the content-type header. | False | True |
| TargetType | System.Type | Target Type |  | False | True |
| Schema | System.String | Schema |  | False | True |
| Authorize | System.Boolean | Authorize | Check to only allow requests, which satisfy a specified policy | False | True |
| Policy | System.String | Policy | Provide a policy to evaluate. If the policy fails, the request is forbidden. | False | True |
| AuthorizeWithCustomHeader | System.Boolean | Authorize With Custom Header | Check to only allow requests, which have a specified header with a specified value | False | True |
| CustomHeaderName | System.String | Custom Header Name |  | False | True |
| CustomHeaderValue | System.String | Custom Header Value |  | False | True |

#### Output Parameters

| Name | Type | Hint |
| -- | -- | -- |
| Output | Elsa.Activities.Http.Models.HttpRequestModel | The received HTTP request. |

#### Outcomes

- Done

### HTTP Response
Write an HTTP response.

**Category:** HTTP

#### Input Parameters

| Name | Type | Label | Hint | ReadOnly | Browsable |
| -- | -- | -- | -- | -- | -- |
| StatusCode | System.Net.HttpStatusCode | Status Code | The HTTP status code to write. | False | True |
| Content | System.Object | Content | The HTTP content to write. | False | True |
| ContentType | System.String | Content Type | The HTTP content type header to write. | False | True |
| CharSet | System.String | Char Set | The character set to use when writing the response. | False | True |
| ResponseHeaders | Elsa.Activities.Http.Models.HttpResponseHeaders | Response Headers | Additional headers to write. | False | True |

**There are no Output parameters**

#### Outcomes

- Done

### Send HTTP Request
Send an HTTP request.

**Category:** HTTP

#### Input Parameters

| Name | Type | Label | Hint | ReadOnly | Browsable |
| -- | -- | -- | -- | -- | -- |
| Url | System.Uri | Url | The URL to send the HTTP request to. | False | True |
| Method | System.String | Method | The HTTP method to use when making the request. | False | True |
| Content | System.Object | Content | The HTTP content to send along with the request. | False | True |
| ContentType | System.String | Content Type | The content type to send with the request. | False | True |
| Authorization | System.String | Authorization | The Authorization header value to send. | False | True |
| RequestHeaders | Elsa.Activities.Http.Models.HttpRequestHeaders | Request Headers | Additional headers to send along with the request. | False | True |
| ReadContent | System.Boolean | Read Content | Read the content of the response. | False | True |
| ResponseContentParserName | System.String | Response Content Parser | The parser to use to parse the response content. | False | True |
| ResponseContentTargetType | System.Type | Response Content .NET Type | The assembly-qualified .NET type name to deserialize the received content into. | False | True |
| SupportedStatusCodes | System.Collections.Generic.ICollection`1[System.Int32] | Supported Status Codes | A list of possible HTTP status codes to handle. | False | True |

#### Output Parameters

| Name | Type | Hint |
| -- | -- | -- |
| Response | Elsa.Activities.Http.Models.HttpResponseModel |  |
| ResponseContent | System.Object |  |

#### Outcomes

- Done
- Unsupported Status Code

### Redirect
Write an HTTP redirect response.

**Category:** HTTP

#### Input Parameters

| Name | Type | Label | Hint | ReadOnly | Browsable |
| -- | -- | -- | -- | -- | -- |
| Location | System.Uri | Location | The URL to redirect to (HTTP 302). | False | True |
| Permanent | System.Boolean | Permanent | Whether or not the redirect is permanent (HTTP 301). | False | True |

**There are no Output parameters**

#### Outcomes

- Done

### Run JavaScript
Run JavaScript code.

**Category:** Scripting

#### Input Parameters

| Name | Type | Label | Hint | ReadOnly | Browsable |
| -- | -- | -- | -- | -- | -- |
| Script | System.String | Script | The JavaScript to run. | False | True |
| PossibleOutcomes | System.Collections.Generic.ICollection`1[System.String] | Possible Outcomes | The possible outcomes that can be set by the script. | False | True |

#### Output Parameters

| Name | Type | Hint |
| -- | -- | -- |
| Output | System.Object |  |

#### Outcomes

- Done

### Data Types Read
Gets a list of all data types. Data types are used as hints on how to render an item in the user interface.

**Category:** Data

**There are no input parameters**

#### Output Parameters

| Name | Type | Hint |
| -- | -- | -- |
| ReturnResult | System.String |  |
| ReturnId | System.String |  |
| DataTypes | HubOneWorkflows.Models.Core.DataType[] |  |

#### Outcomes

- Success

### Create Object Instance
Creates a new object of the specified type with the specified values.

**Category:** Data

#### Input Parameters

| Name | Type | Label | Hint | ReadOnly | Browsable |
| -- | -- | -- | -- | -- | -- |
| ObjectType | HubOneWorkflows.Models.ObjectTypeIdOrName | Object Type | The Object Type | False | True |
| Values | HubOneWorkflows.Models.ImmutableUserPropertiesCollection | Values | The data to create the new object with. | False | True |
| VariableName | System.String | Variable Name | The Output Variable Name | False | True |

#### Output Parameters

| Name | Type | Hint |
| -- | -- | -- |
| Instance | HubOneWorkflows.Models.ObjectCurrentState | The object state after being updated by this activity. |
| InstanceId | System.Int64 | The ID of the created object instance. |

#### Outcomes

- Done
- Object type not found

### Update Object Instance
Updates an exisiting object instance.

**Category:** Data

#### Input Parameters

| Name | Type | Label | Hint | ReadOnly | Browsable |
| -- | -- | -- | -- | -- | -- |
| InstanceId | System.Int64 | Instance Id | The Id of the Object to create detail for | False | True |
| ClearOmittedFields | System.Boolean | Clear Omitted Fields | When this option is set (ie: true) any fields defined on the type that are missing from the specified valus are set to null. Otherwise, those fields are not updated. Note: Fields that are set to null are NOT considered missing. | False | True |
| Values | HubOneWorkflows.Models.ImmutableUserPropertiesCollection | Values | The data to update the object with. | False | True |
| VariableName | System.String | Variable Name | The Output Variable Name | False | True |

#### Output Parameters

| Name | Type | Hint |
| -- | -- | -- |
| Instance | HubOneWorkflows.Models.ObjectCurrentState | The object state after being updated by this activity. |

#### Outcomes

- Done
- Object instance not found

### Get Object Instance
Gets the detail of an object from a specific state.

**Category:** Data

#### Input Parameters

| Name | Type | Label | Hint | ReadOnly | Browsable |
| -- | -- | -- | -- | -- | -- |
| InstanceId | System.Int64 | Instance Id | The Id of the object instance to retrieve. | False | True |
| VariableName | System.String | Variable Name |  | False | True |

#### Output Parameters

| Name | Type | Hint |
| -- | -- | -- |
| Instance | HubOneWorkflows.Models.ObjectCurrentState | The instance that was found. |

#### Outcomes

- Success
- Object instance not found

### List Object Instances
Retrieves the object instance list with an optional filter.

**Category:** Data

#### Input Parameters

| Name | Type | Label | Hint | ReadOnly | Browsable |
| -- | -- | -- | -- | -- | -- |
| ObjectType | HubOneWorkflows.Models.ObjectTypeIdOrName | Object Type | The object type to search for instances. | False | True |
| Filter | System.String | Filter | An OData filter the specifies the instances that should be returned. City eq 'Paris' or Age gt 5 or City eq 'Paris' and Age le 5. | False | True |
| Skip | System.Nullable`1[System.Int32] | Skip | The number of instances that would be returned to skip. This is applied AFTER both the Filter and Order By options. | False | True |
| Limit | System.Nullable`1[System.Int32] | Limit | The maximum number of instances to return. When null all matching instances are returned. | False | True |
| OrderBy | System.String | Order by | An OData order by clause to control the order that instances are returned. | False | True |

#### Output Parameters

| Name | Type | Hint |
| -- | -- | -- |
| Output | HubOneWorkflows.Models.ObjectCurrentState[] | The instances that were found. |

#### Outcomes

- Done
- Object type not found

### List Object Instance History
Retrieves the object instance history list with an optional filter.

**Category:** Data

#### Input Parameters

| Name | Type | Label | Hint | ReadOnly | Browsable |
| -- | -- | -- | -- | -- | -- |
| ObjectType | HubOneWorkflows.Models.ObjectTypeIdOrName | Object Type | The object type to search for instances. | False | True |
| Filter | System.String | Filter | An OData filter the specifies the instances that should be returned. City eq 'Paris' or Age gt 5 or City eq 'Paris' and 'Age' le 5. | False | True |
| Skip | System.Nullable`1[System.Int32] | Skip | The number of instances that would be returned to skip. This is applied AFTER both the Filter and Order By options. | False | True |
| Limit | System.Nullable`1[System.Int32] | Limit | The maximum number of instances to return. When null all matching instances are returned. | False | True |
| OrderBy | System.String | Order by | An OData order by clause to control the order that instances are returned. | False | True |
| InstanceId | System.Nullable`1[System.Int64] | Instance Id | The ID of the Object Instance to retrieve the history for. If this is not specified then the history for all instances is retrieved. | False | True |

#### Output Parameters

| Name | Type | Hint |
| -- | -- | -- |
| Output | HubOneWorkflows.Models.ObjectHistoryState[] | The instances that were found. |

#### Outcomes

- Done
- Object type not found
- Object instance not found

### Task Create
Creates a task, sets parameters and waits for it to complete.

**Category:** Tasks

#### Input Parameters

| Name | Type | Label | Hint | ReadOnly | Browsable |
| -- | -- | -- | -- | -- | -- |
| Title | System.String | Title | Provide the Title of the Task | False | True |
| TaskDescription | System.String | Task Description | The Description of the Task using Markdown | False | True |
| Severity | System.Int32 | Severity | The severity of the Task | False | True |
| Priority | System.Int32 | Priority | The Priority of the Task | False | True |
| Due | System.Nullable`1[System.Int32] | Due | Days from Today that Task is Due (1-N) | False | True |
| RelatedObjectInstanceId | System.Nullable`1[System.Int64] | Related Object Instance Id | The Id of the Object that this task is related to. Also used for data questions below. | False | True |
| DataQuestions | HubOneWorkflows.Models.DataQuestionsCollection | Data Questions | Questions, or data to complete. The "Name" is the display label and the "Value" is the column name or ID to edit. | False | True |
| VariableName | System.String | Variable Name | A Variable Name to set with the contents of the updated object | False | True |
| Branches | System.Collections.Generic.IList`1[System.String] | Branches | Enter one or more Answers. These will become buttons for the user to respond to. | False | True |

#### Output Parameters

| Name | Type | Hint |
| -- | -- | -- |
| TaskId | System.Nullable`1[System.Int64] |  |
| SelectedBranch | System.String |  |

#### Outcomes

- Task Created
- Task Completed
- Task Error
- Task Faulted

### Task Delete
Deletes a task.

**Category:** Tasks

#### Input Parameters

| Name | Type | Label | Hint | ReadOnly | Browsable |
| -- | -- | -- | -- | -- | -- |
| TaskId | System.Int64 | Task Id | The Task Id | False | True |

#### Output Parameters

| Name | Type | Hint |
| -- | -- | -- |
| ReturnResult | System.String |  |

#### Outcomes

- Success

### Task Detail Create
Adds a detail to task.

**Category:** Tasks

#### Input Parameters

| Name | Type | Label | Hint | ReadOnly | Browsable |
| -- | -- | -- | -- | -- | -- |
| WorkflowsTaskId | System.Int64 | Workflows Task Id | The Id of the Task | False | True |
| ObjectId | System.Int64 | Object Id | The Id of the Object to Add | False | True |

#### Output Parameters

| Name | Type | Hint |
| -- | -- | -- |
| ReturnResult | System.String |  |
| ReturnId | System.Int64 |  |

#### Outcomes

- Success

### Task Details Read
Gets the details associated with a task.

**Category:** Tasks

#### Input Parameters

| Name | Type | Label | Hint | ReadOnly | Browsable |
| -- | -- | -- | -- | -- | -- |
| WorkflowsTaskId | System.Int64 | Workflows Task Id | The Task Id | False | True |

#### Output Parameters

| Name | Type | Hint |
| -- | -- | -- |
| ReturnResult | System.String |  |
| TaskDetails | HubOneWorkflows.Models.Core.TaskDetail[] |  |

#### Outcomes

- Success

### Task Update
Updates a task.

**Category:** Tasks

#### Input Parameters

| Name | Type | Label | Hint | ReadOnly | Browsable |
| -- | -- | -- | -- | -- | -- |
| WorkflowsTaskId | System.Int64 | Workflows Task Id | The Id of the Task | False | True |
| ObjectId | System.Int64 | Object Id | The Id of the Object to Add | False | True |

#### Output Parameters

| Name | Type | Hint |
| -- | -- | -- |
| ReturnResult | System.String |  |
| ReturnId | System.Int64 |  |

#### Outcomes

- Success

### Column Create
Adds a column to a type.

**Category:** Data

#### Input Parameters

| Name | Type | Label | Hint | ReadOnly | Browsable |
| -- | -- | -- | -- | -- | -- |
| ObjectType | HubOneWorkflows.Models.ObjectTypeIdOrName | Type |  | False | True |
| ColumnName | System.String | Column Name | The Name of the Column | False | True |
| ColumnDisplayName | System.String | Column Display Name | The Display Name of the Column | False | True |
| ColumnDescription | System.String | Column Description | The Description of the Column | False | True |
| ColumnTypeId | System.Int32 | The Column Type Id |  | False | True |
| PrincipalType | System.Nullable`1[HubOneWorkflows.Models.ObjectTypeIdOrName] | The Type Id of any relationship |  | False | True |
| DisplayOrder | System.Nullable`1[System.Int32] | Display Order | The DisplayOrder | False | True |
| Visible | System.Boolean | Visible | Visible | False | True |
| Indexed | System.Boolean | Indexed | Visible | False | True |

#### Output Parameters

| Name | Type | Hint |
| -- | -- | -- |
| ColumnId | System.Int64 | The ID of the newly created column. |
| ReturnResult | System.String |  |
| ReturnResultException | System.String |  |

#### Outcomes

- Success
- Object type not found
- Failed

### Add Column Index
Adds an Index to an Object Type Column.

**Category:** Data

#### Input Parameters

| Name | Type | Label | Hint | ReadOnly | Browsable |
| -- | -- | -- | -- | -- | -- |
| ColumnId | System.Int64 | Column Id | The Id of the Column | False | True |

#### Output Parameters

| Name | Type | Hint |
| -- | -- | -- |
| Output | HubOneWorkflows.Models.API.ObjectTypeColumnInfo |  |

#### Outcomes

- Success

### Type Create
Creates a new Type.

**Category:** Data

#### Input Parameters

| Name | Type | Label | Hint | ReadOnly | Browsable |
| -- | -- | -- | -- | -- | -- |
| TypeName | System.String | Type Name | The Name of the Type | False | True |
| TypeDescription | System.String | Type Description | The description of the type | False | True |

#### Output Parameters

| Name | Type | Hint |
| -- | -- | -- |
| ReturnResult | System.String |  |
| ReturnResultException | System.String |  |
| ReturnId | System.Int64 |  |

#### Outcomes

- Success
- Faulted

### Type Delete
Deletes a type.

**Category:** Data

#### Input Parameters

| Name | Type | Label | Hint | ReadOnly | Browsable |
| -- | -- | -- | -- | -- | -- |
| TypeId | System.Int64 | Type Id | The ID of the type. | False | True |

**There are no Output parameters**

#### Outcomes

- Done

### Columns Read by Type
Gets the columns for a type.

**Category:** Data

#### Input Parameters

| Name | Type | Label | Hint | ReadOnly | Browsable |
| -- | -- | -- | -- | -- | -- |
| ObjectType | HubOneWorkflows.Models.ObjectTypeIdOrName | Type |  | False | True |
| VisibleOnly | System.Boolean | Visible Only | Only Return Visible Columns | False | True |

#### Output Parameters

| Name | Type | Hint |
| -- | -- | -- |
| Columns | System.Collections.Generic.List`1[HubOneWorkflows.Models.API.ObjectTypeColumnInfo] |  |

#### Outcomes

- Success
- Object type not found

### Types Read
Gets a List of All Types.

**Category:** Data

**There are no input parameters**

#### Output Parameters

| Name | Type | Hint |
| -- | -- | -- |
| Types | HubOneWorkflows.Models.API.ObjectTypeInfoWithColumns`1[HubOneWorkflows.Models.API.ObjectTypeColumnInfo][] |  |

#### Outcomes

- Success

### Type Get Id
Gets a Type Id by Name.

**Category:** Data

#### Input Parameters

| Name | Type | Label | Hint | ReadOnly | Browsable |
| -- | -- | -- | -- | -- | -- |
| TypeName | System.String | Type Name |  | False | True |

#### Output Parameters

| Name | Type | Hint |
| -- | -- | -- |
| ObjectTypeId | System.Int64 |  |
| ObjectTypeIdOrName | HubOneWorkflows.Models.ObjectTypeIdOrName |  |

#### Outcomes

- Success

### Remove Column Index
Removes an Index from an Object Type Column.

**Category:** Data

#### Input Parameters

| Name | Type | Label | Hint | ReadOnly | Browsable |
| -- | -- | -- | -- | -- | -- |
| ColumnId | System.Int64 | Column Id | The Column to Remove an Index from. | False | True |

#### Output Parameters

| Name | Type | Hint |
| -- | -- | -- |
| Output | HubOneWorkflows.Models.API.ObjectTypeColumnInfo |  |

#### Outcomes

- Success
- Failed

### JSON Data Insert
Quickly inserts the provided data into a specified type and upgrades if required.

**Category:** Data

#### Input Parameters

| Name | Type | Label | Hint | ReadOnly | Browsable |
| -- | -- | -- | -- | -- | -- |
| ObjectType | HubOneWorkflows.Models.ObjectTypeIdOrName | Object Type | The Object Type | False | True |
| KeyField | System.String | Key Field | The Key Field. Use this to update a record based on a field | False | True |
| ClearOmittedFields | System.Boolean | Clear Omitted Fields | When this option is set (ie: true) any fields defined on the type that are missing from the specified valus are set to null. Otherwise, those fields are not updated. Note: Fields that are set to null are NOT considered missing. | False | True |
| Values | HubOneWorkflows.Models.ImmutableUserPropertiesCollection | Values | The data to save. | False | True |

#### Output Parameters

| Name | Type | Hint |
| -- | -- | -- |
| Output | HubOneWorkflows.Models.ObjectCurrentState | The object state after being updated by this activity. |

#### Outcomes

- Done
- Type Not Found
- No Data
- Invalid Data

### Views Read
Gets the list of views.

**Category:** Views

**There are no input parameters**

#### Output Parameters

| Name | Type | Hint |
| -- | -- | -- |
| Output | HubOneWorkflows.Models.API.ViewRecord[] |  |

#### Outcomes

- Success

### View Create
Creates a View.

**Category:** Views

#### Input Parameters

| Name | Type | Label | Hint | ReadOnly | Browsable |
| -- | -- | -- | -- | -- | -- |
| ViewName | System.String | View Name | The Name of the View | False | True |
| ViewDescription | System.String | View Description | The Description of the View | False | True |
| ObjectType | HubOneWorkflows.Models.ObjectTypeIdOrName | Type |  | False | True |
| Projection | System.Collections.Immutable.ImmutableArray`1[HubOneWorkflows.Models.API.ViewProjection] | Projection | The list of columns to display in the order to display them in. | False | True |
| Query | System.String | Query | The Query to filter items | False | True |
| Orderings | System.Collections.Immutable.ImmutableArray`1[HubOneWorkflows.Models.API.ViewOrdering] | Orderings | The list of orderings to apply to the instances in the view. | False | True |
| ParentId | System.Nullable`1[System.Int32] | Parent Id | The Id of the Parent, null for the top menu | False | True |

#### Output Parameters

| Name | Type | Hint |
| -- | -- | -- |
| ViewId | System.Nullable`1[System.Int32] |  |
| View | HubOneWorkflows.Models.API.ViewRecord |  |
| ReturnId | System.Int64 |  |
| ReturnResult | System.String |  |
| ReturnResultException | System.String |  |

#### Outcomes

- Success
- Object type not found

### Random Number Create
Generates a psuedorandom number. This should not be used for cryptography

**Category:** Primitives

#### Input Parameters

| Name | Type | Label | Hint | ReadOnly | Browsable |
| -- | -- | -- | -- | -- | -- |
| Seed | System.Nullable`1[System.Int32] | Seed | The Seed. If this is 0, the timer is used as a seed | False | True |
| LowerBound | System.Int32 | Lower Bound | The Lower bound of numbers to return inclusively | False | True |
| UpperBound | System.Int32 | Upper Bound | The Upper bound of numbers to return inclusively | False | True |
| Sequence | System.Int64 | Sequence | The Number in the sequence to return, capped at 100. If you set a seed, each time you call this with the same number, the result will be identical | False | True |

#### Output Parameters

| Name | Type | Hint |
| -- | -- | -- |
| ReturnResult | System.Int32 |  |

#### Outcomes

- Success

### Solutions Type Create
Creates a new Type for Solutions.

**Category:** Solutions

**There are no input parameters**

#### Output Parameters

| Name | Type | Hint |
| -- | -- | -- |
| ReturnResult | System.String |  |
| ReturnResultException | System.String |  |
| ReturnId | System.Int64 |  |

#### Outcomes

- Success
- Faulted

### Solutions View Create
Creates a View with outcomes required by solutions

**Category:** Solutions

#### Input Parameters

| Name | Type | Label | Hint | ReadOnly | Browsable |
| -- | -- | -- | -- | -- | -- |
| ViewName | System.String | View Name | The Name of the View | False | True |
| ViewDescription | System.String | View Description | The Description of the View | False | True |
| ObjectType | HubOneWorkflows.Models.ObjectTypeIdOrName | Type |  | False | True |
| Projection | System.Collections.Immutable.ImmutableArray`1[HubOneWorkflows.Models.API.ViewProjection] | Projection | The list of columns to display in the order to display them in. | False | True |
| Query | System.String | Query | The Query to filter items | False | True |
| Filter | System.String | Filter | The Filter to filter items | False | True |
| Orderings | System.Collections.Immutable.ImmutableArray`1[HubOneWorkflows.Models.API.ViewOrdering] | Orderings | The list of orderings to apply to the instances in the view. | False | True |
| ParentId | System.Nullable`1[System.Int32] | Parent Id | The Id of the Parent, null for the top menu | False | True |

#### Output Parameters

| Name | Type | Hint |
| -- | -- | -- |
| ViewId | System.Nullable`1[System.Int32] |  |
| View | HubOneWorkflows.Models.API.ViewRecord |  |
| ReturnId | System.Int64 |  |
| ReturnResult | System.String |  |
| ReturnResultException | System.String |  |

#### Outcomes

- Success
- Object type not found
- Faulted

### Solutions Column Create
Adds a column to a type and returns outcomes required by solutions

**Category:** Solutions

#### Input Parameters

| Name | Type | Label | Hint | ReadOnly | Browsable |
| -- | -- | -- | -- | -- | -- |
| ObjectType | HubOneWorkflows.Models.ObjectTypeIdOrName | Type |  | False | True |
| ColumnName | System.String | Column Name | The Name of the Column | False | True |
| ColumnDisplayName | System.String | Column Display Name | The Display Name of the Column | False | True |
| ColumnDescription | System.String | Column Description | The Description of the Column | False | True |
| ColumnTypeId | System.Int32 | The Column Type Id |  | False | True |
| PrincipalType | System.Nullable`1[HubOneWorkflows.Models.ObjectTypeIdOrName] | The Type Id of any relationship |  | False | True |
| DisplayOrder | System.Nullable`1[System.Int32] | Display Order | The DisplayOrder | False | True |
| Visible | System.Boolean | Visible | Visible | False | True |
| Indexed | System.Boolean | Indexed | Visible | False | True |

#### Output Parameters

| Name | Type | Hint |
| -- | -- | -- |
| ColumnId | System.Int64 | The ID of the newly created column. |
| ReturnResult | System.String |  |
| ReturnResultException | System.String |  |

#### Outcomes

- Success
- Object type not found
- Failed

### Delete Object Instance
Deletes an object instance.

**Category:** Data

#### Input Parameters

| Name | Type | Label | Hint | ReadOnly | Browsable |
| -- | -- | -- | -- | -- | -- |
| ObjectInstanceId | System.Int64 | Object Instance Id | The id of the object instance. | False | True |

**There are no Output parameters**

#### Outcomes

- Done
- Object type not found

### Object Instance Trigger
Allow for manually starting/resuming a workflow from an object instance.

**Category:** Data

#### Input Parameters

| Name | Type | Label | Hint | ReadOnly | Browsable |
| -- | -- | -- | -- | -- | -- |
| ObjectTypeId | System.Int64 | Object Type Id | The ID of the object type that can be used to trigger this activity. | False | True |

#### Output Parameters

| Name | Type | Hint |
| -- | -- | -- |
| InstanceId | System.Int64 | The requested object. |
| Instance | HubOneWorkflows.Models.ImmutableObjectCurrentState | The requested object. |

#### Outcomes

- Done

### Execute SQL Query
Execute given SQL query and returned execution result

**Category:** SQL

#### Input Parameters

| Name | Type | Label | Hint | ReadOnly | Browsable |
| -- | -- | -- | -- | -- | -- |
| Database | System.String | Database | Allowed databases to run SQL. | False | True |
| Query | System.String | Query | SQL query to execute | False | True |
| ConnectionString | System.String | Connection String | Connection string to run SQL | False | True |

#### Output Parameters

| Name | Type | Hint |
| -- | -- | -- |
| Output | System.Data.DataSet |  |

#### Outcomes

- Done

### Execute SQL Command
Execute given SQL command and returned number of rows affected

**Category:** SQL

#### Input Parameters

| Name | Type | Label | Hint | ReadOnly | Browsable |
| -- | -- | -- | -- | -- | -- |
| Database | System.String | Database | Allowed databases to run SQL. | False | True |
| Command | System.String | Command | SQL command to execute | False | True |
| ConnectionString | System.String | Connection string |  | False | True |

#### Output Parameters

| Name | Type | Hint |
| -- | -- | -- |
| Output | System.Nullable`1[System.Int32] |  |

#### Outcomes

- Done

### Run Workflow
Runs a child workflow.

**Category:** Workflows

#### Input Parameters

| Name | Type | Label | Hint | ReadOnly | Browsable |
| -- | -- | -- | -- | -- | -- |
| WorkflowDefinitionId | System.String | Workflow Definition | The workflow definition ID to run. | False | True |
| TenantId | System.String | Tenant ID | The tenant ID to which the workflow to run belongs. | False | True |
| Input | System.Object | Input | Optional input to send to the workflow to run. | False | True |
| PossibleOutcomes | System.Collections.Generic.ISet`1[System.String] | Possible Outcomes | Enter one or more potential child workflow outcomes you might want to handle. | False | True |
| CorrelationId | System.String | Correlation ID | The correlation ID to associate with the workflow to run. | False | True |
| ContextId | System.String | Context ID | The context ID to associate with the workflow to run. | False | True |
| CustomAttributes | Elsa.Models.Variables | Custom Attributes | Optional custom attributes to associate with the workflow to run. | False | True |
| Mode | Elsa.Activities.Workflows.RunWorkflow+RunWorkflowMode | Mode | Fire And Forget: run the child workflow and continue the current one. Blocking: Run the child workflow and suspend the current one until the child workflow finishes. | False | True |
| RetryFailedActivities | System.Boolean | Retry failed workflow | True to retry existing ChildWorkflow instance instead of creating a new one when faulted. | False | True |

#### Output Parameters

| Name | Type | Hint |
| -- | -- | -- |
| Output | Elsa.Activities.Workflows.FinishedWorkflowModel |  |

#### Outcomes

- Done
- Not Found

### Workflow


**Category:** Miscellaneous

**There are no input parameters**

#### Output Parameters

| Name | Type | Hint |
| -- | -- | -- |
| Output | System.Object |  |

#### Outcomes

- Done

### State
Puts the workflow into the specified state.

**Category:** State Machine

#### Input Parameters

| Name | Type | Label | Hint | ReadOnly | Browsable |
| -- | -- | -- | -- | -- | -- |
| StateName | System.String | State Name | The name of this state. | False | True |
| Transitions | System.Collections.Generic.ISet`1[System.String] | Transitions | Enter one or more transition names. | False | True |

**There are no Output parameters**


### Interrupt Trigger
Resumes suspended workflows that are blocked on a specific trigger.

**Category:** Workflows

#### Input Parameters

| Name | Type | Label | Hint | ReadOnly | Browsable |
| -- | -- | -- | -- | -- | -- |
| WorkflowInstanceId | System.String | Workflow Instance Id | The ID of the workflow instance to resume. | False | True |
| BlockingActivityId | System.String | Blocking Activity Id | The ID of the blocking activity to trigger. | False | True |
| Input | System.Object | Input | An optional input to pass to the blocking activity. | False | True |

**There are no Output parameters**

#### Outcomes

- Done

### Send Signal
Sends the specified signal.

**Category:** Workflows

#### Input Parameters

| Name | Type | Label | Hint | ReadOnly | Browsable |
| -- | -- | -- | -- | -- | -- |
| Signal | System.String | Signal | An expression that evaluates to the name of the signal to trigger. | False | True |
| CorrelationId | System.String | Correlation Id | An expression that evaluates to the correlation ID to use when signaling. | False | True |
| Input | System.Object | Input | An expression that evaluates to an input value when triggering the signal. | False | True |
| SendMode | Elsa.Activities.Signaling.SendSignalMode | Send Mode | The send-mode controls whether the signal should be sent asynchronously or synchronously. | False | True |

**There are no Output parameters**

#### Outcomes

- Done

### Signal Received
Suspend workflow execution until the specified signal is received.

**Category:** Workflows

#### Input Parameters

| Name | Type | Label | Hint | ReadOnly | Browsable |
| -- | -- | -- | -- | -- | -- |
| Signal | System.String | Signal | The name of the signal to wait for. | False | True |

#### Output Parameters

| Name | Type | Hint |
| -- | -- | -- |
| SignalInput | System.Object | The input that was received with the signal. |
| Output | System.Object |  |

#### Outcomes

- Done

### Fault
Put the workflow in a faulted state.

**Category:** Primitives

#### Input Parameters

| Name | Type | Label | Hint | ReadOnly | Browsable |
| -- | -- | -- | -- | -- | -- |
| Message | System.String | Message | Optional. The message to store as the reason for the fault. | False | True |

**There are no Output parameters**


### Inline


**Category:** Miscellaneous

#### Input Parameters

| Name | Type | Label | Hint | ReadOnly | Browsable |
| -- | -- | -- | -- | -- | -- |
| Function | System.Func`2[Elsa.Services.Models.ActivityExecutionContext,System.Threading.Tasks.ValueTask`1[Elsa.ActivityResults.IActivityExecutionResult]] | Function |  | False | True |

**There are no Output parameters**

#### Outcomes

- Done

### Set Context ID
Set context ID on the workflow.

**Category:** Primitives

#### Input Parameters

| Name | Type | Label | Hint | ReadOnly | Browsable |
| -- | -- | -- | -- | -- | -- |
| ContextId | System.String | Context Id | The context ID to set. | False | True |

**There are no Output parameters**

#### Outcomes

- Done

### Set Name
Set the name of the workflow instance.

**Category:** Primitives

#### Input Parameters

| Name | Type | Label | Hint | ReadOnly | Browsable |
| -- | -- | -- | -- | -- | -- |
| Value | System.String | Value | The value to set as the workflow instance's name. | False | True |

**There are no Output parameters**

#### Outcomes

- Done

### Set Transient Variable
Set a transient variable on the current workflow execution context.

**Category:** Primitives

#### Input Parameters

| Name | Type | Label | Hint | ReadOnly | Browsable |
| -- | -- | -- | -- | -- | -- |
| VariableName | System.String | Variable Name | The name of the transient variable to store the value into. | False | True |
| Value | System.Object | Value | The value to store in the transient variable. | False | True |

**There are no Output parameters**

#### Outcomes

- Done

### Set Variable
Set variable on the workflow.

**Category:** Primitives

#### Input Parameters

| Name | Type | Label | Hint | ReadOnly | Browsable |
| -- | -- | -- | -- | -- | -- |
| VariableName | System.String | Variable Name | The name of the variable to store the value into. | False | True |
| Value | System.Object | Value | The value to store in the variable. | False | True |

**There are no Output parameters**

#### Outcomes

- Done

### Correlate
Set the CorrelationId of the workflow to a given value.

**Category:** Workflows

#### Input Parameters

| Name | Type | Label | Hint | ReadOnly | Browsable |
| -- | -- | -- | -- | -- | -- |
| Value | System.String | Value | An expression that evaluates to the value to store as the correlation ID. | False | True |

#### Output Parameters

| Name | Type | Hint |
| -- | -- | -- |
| Output | System.String |  |

#### Outcomes

- Done

### Break
Break out of a While, For or ForEach loop.

**Category:** Control Flow

**There are no input parameters**

**There are no Output parameters**

#### Outcomes

- Done

### Finish
Removes any blocking activities from the current container (workflow or composite activity).

**Category:** Workflows

#### Input Parameters

| Name | Type | Label | Hint | ReadOnly | Browsable |
| -- | -- | -- | -- | -- | -- |
| ActivityOutput | System.Object | Activity Output | The value to set as the workflow's output | False | True |
| OutcomeNames | System.Collections.Generic.ICollection`1[System.String] | Outcome Names | The outcomes to set on the container activity | False | True |

#### Output Parameters

| Name | Type | Hint |
| -- | -- | -- |
| Output | System.Object |  |


### For
Iterate between two numbers.

**Category:** Control Flow

#### Input Parameters

| Name | Type | Label | Hint | ReadOnly | Browsable |
| -- | -- | -- | -- | -- | -- |
| Start | System.Int64 | Start | The starting number. | False | True |
| End | System.Int64 | End | The ending number. | False | True |
| Step | System.Int64 | Step | An expression that evaluates to the incrementing number on each step. | False | True |
| Operator | Elsa.Activities.ControlFlow.Operator | Operator | The operator to use when comparing the current value against the end value. | False | True |

#### Output Parameters

| Name | Type | Hint |
| -- | -- | -- |
| Output | System.Object |  |

#### Outcomes

- Iterate
- Done

### For Each
Iterate over a collection.

**Category:** Control Flow

#### Input Parameters

| Name | Type | Label | Hint | ReadOnly | Browsable |
| -- | -- | -- | -- | -- | -- |
| Items | System.Collections.Generic.ICollection`1[System.Object] | Items | A collection of items to iterate over. | False | True |

#### Output Parameters

| Name | Type | Hint |
| -- | -- | -- |
| Output | System.Object |  |

#### Outcomes

- Iterate
- Done

### Fork
Fork workflow execution into multiple branches.

**Category:** Control Flow

#### Input Parameters

| Name | Type | Label | Hint | ReadOnly | Browsable |
| -- | -- | -- | -- | -- | -- |
| Branches | System.Collections.Generic.ISet`1[System.String] | Branches | Enter one or more branch names. | False | True |

**There are no Output parameters**


### If/Else
Evaluate a Boolean expression and continue execution depending on the result.

**Category:** Control Flow

#### Input Parameters

| Name | Type | Label | Hint | ReadOnly | Browsable |
| -- | -- | -- | -- | -- | -- |
| Condition | System.Boolean | Condition | The condition to evaluate. | False | True |

**There are no Output parameters**

#### Outcomes

- True
- False
- Done

### Join
Merge workflow execution back into a single branch.

**Category:** Control Flow

#### Input Parameters

| Name | Type | Label | Hint | ReadOnly | Browsable |
| -- | -- | -- | -- | -- | -- |
| EagerJoin | System.Boolean | Eager Join | True if all blocking activities within the fork should be cleared. | False | True |
| Mode | Elsa.Activities.ControlFlow.Join+JoinMode | Mode | WaitAll: wait for all incoming activities to have executed. WaitAny: continue execution as soon as any of the incoming activity has executed. | False | True |

**There are no Output parameters**

#### Outcomes

- Done

### Parallel for Each
Iterate over a collection in parallel.

**Category:** Control Flow

#### Input Parameters

| Name | Type | Label | Hint | ReadOnly | Browsable |
| -- | -- | -- | -- | -- | -- |
| Items | System.Collections.Generic.ICollection`1[System.Object] | Items | A collection of items to iterate over. | False | True |

**There are no Output parameters**

#### Outcomes

- Iterate
- Done

### Switch
Evaluate multiple conditions and continue execution depending on the results.

**Category:** Control Flow

#### Input Parameters

| Name | Type | Label | Hint | ReadOnly | Browsable |
| -- | -- | -- | -- | -- | -- |
| Cases | System.Collections.Generic.ICollection`1[Elsa.Activities.ControlFlow.SwitchCase] | Cases | The conditions to evaluate. | False | True |
| Mode | Elsa.Activities.ControlFlow.SwitchMode | Mode | The switch mode determines whether the first match should be scheduled, or all matches. | False | True |

**There are no Output parameters**

#### Outcomes

- Default
- Done

### While
Execute while a given condition is true.

**Category:** Control Flow

#### Input Parameters

| Name | Type | Label | Hint | ReadOnly | Browsable |
| -- | -- | -- | -- | -- | -- |
| Condition | System.Boolean | Condition | The condition to evaluate. | False | True |

**There are no Output parameters**

#### Outcomes

- Iterate
- Done

### Compensable
Allow work that executed after this activity to be undone.

**Category:** Compensation

**There are no input parameters**

**There are no Output parameters**

#### Outcomes

- Body
- Compensate
- Cancel
- Confirm
- Done

### Compensate
Invoke a specific compensable activity.

**Category:** Compensation

#### Input Parameters

| Name | Type | Label | Hint | ReadOnly | Browsable |
| -- | -- | -- | -- | -- | -- |
| CompensableActivityName | System.String | Compensable Activity Name | The name of the compensable activity to invoke. | False | True |
| Message | System.String | Message | Optional. The message to store as the reason for compensation. | False | True |

**There are no Output parameters**

#### Outcomes

- Done

### Confirm
Confirm a specific compensable activity.

**Category:** Compensation

#### Input Parameters

| Name | Type | Label | Hint | ReadOnly | Browsable |
| -- | -- | -- | -- | -- | -- |
| CompensableActivityName | System.String | Compensable Activity Name | The name of the compensable activity to confirm. | False | True |

**There are no Output parameters**

#### Outcomes

- Done

### Composite Activity


**Category:** Miscellaneous

**There are no input parameters**

#### Output Parameters

| Name | Type | Hint |
| -- | -- | -- |
| Output | System.Object |  |

#### Outcomes

- Done


