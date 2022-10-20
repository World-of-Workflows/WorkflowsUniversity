# Reference Guide
The reference guide gives comprehensive information on the components that can be used to create workflows.

## Activities
The following workflow activities are available:

### Read Line
Read text from standard in.
**Category:** Console

**There are no input parameters**

#### Output Parameters

| Name | Type | Hint |
| -- | -- | -- |
| Output | System.String  |   |


#### Outcomes

- Done
### Write Line
Write text to standard out.
**Category:** Console

#### Input Parameters

| Name | Type | Label | Hint | ReadOnly | Browsable |
| -- | -- | -- | -- | -- | -- | -- |
| Text | System.String | Text | The text to write. | False | True |

**There are no Output parameters**


#### Outcomes

- Done
### Open Browser
Opens a new instance of a browser
**Category:** Rpa.Web

#### Input Parameters

| Name | Type | Label | Hint | ReadOnly | Browsable |
| -- | -- | -- | -- | -- | -- | -- |
| UseHeadless | System.Boolean | Use Headless | Open browser in headless mode. Headless means no GUI will be displayed. Often times headless mode is required due to lack of an interactive automation session such as when using Docker or Linux. When running Elsa in an interactive session (e.g. from desktop) you can set this parameter to false and browser GUI will show up | False | True |
| BrowserType | System.String | Browser Type | The browser to use | False | True |

#### Output Parameters

| Name | Type | Hint |
| -- | -- | -- |
| DriverId | System.String  | The driver ID that should be used in other activities to use this window  |


#### Outcomes

- Done
### Close Browser
Closes a instance of a browser
**Category:** Rpa.Web

#### Input Parameters

| Name | Type | Label | Hint | ReadOnly | Browsable |
| -- | -- | -- | -- | -- | -- | -- |
| DriverId | System.String | Driver Id | The driver ID assigned when instantiating the browser. You can use JS functions to retrieve it such as: getVariable() function or activities.{OpenBrowserActivityName}.driverId | False | True |

**There are no Output parameters**


#### Outcomes

- Done
### Navigate to Url
Navigates to a URL
**Category:** Rpa.Web

#### Input Parameters

| Name | Type | Label | Hint | ReadOnly | Browsable |
| -- | -- | -- | -- | -- | -- | -- |
| Url | System.String | Url | The URL to navigate to | False | True |
| DriverId | System.String | Driver Id | The driver ID assigned when instantiating the browser. You can use JS functions to retrieve it such as: getVariable() function or activities.{OpenBrowserActivityName}.driverId | False | True |

**There are no Output parameters**


#### Outcomes

- Done
### Click Element
Clicks an element in the GUI
**Category:** Rpa.Web

#### Input Parameters

| Name | Type | Label | Hint | ReadOnly | Browsable |
| -- | -- | -- | -- | -- | -- | -- |
| UseJavascriptClick | System.Nullable`1[System.Boolean] | Use Javascript Click | Indicates whether not to perform an interactive click but just emulates a click via javascript call | False | True |
| SelectorType | System.String | Selector Type | The type of selector to be used to identity the element | False | True |
| SelectorValue | System.String | Selector Value | The selector value depends on SelectorType | False | True |
| DriverId | System.String | Driver Id | The driver ID assigned when instantiating the browser. You can use JS functions to retrieve it such as: getVariable() function or activities.{OpenBrowserActivityName}.driverId | False | True |

**There are no Output parameters**


#### Outcomes

- Done
### Type Text
Clicks an element in the GUI
**Category:** Rpa.Web

#### Input Parameters

| Name | Type | Label | Hint | ReadOnly | Browsable |
| -- | -- | -- | -- | -- | -- | -- |
| UseJavascript | System.Nullable`1[System.Boolean] | Use Javascript | Indicates whether not to perform an interactive typing but just emulates a injecting text via javascript | False | True |
| Text | System.String | Text |  | False | True |
| SelectorType | System.String | Selector Type | The type of selector to be used to identity the element | False | True |
| SelectorValue | System.String | Selector Value | The selector value depends on SelectorType | False | True |
| DriverId | System.String | Driver Id | The driver ID assigned when instantiating the browser. You can use JS functions to retrieve it such as: getVariable() function or activities.{OpenBrowserActivityName}.driverId | False | True |

**There are no Output parameters**


#### Outcomes

- Done
### Get Text
Extracts text from an element
**Category:** Rpa.Web

#### Input Parameters

| Name | Type | Label | Hint | ReadOnly | Browsable |
| -- | -- | -- | -- | -- | -- | -- |
| SelectorType | System.String | Selector Type | The type of selector to be used to identity the element | False | True |
| SelectorValue | System.String | Selector Value | The selector value depends on SelectorType | False | True |
| DriverId | System.String | Driver Id | The driver ID assigned when instantiating the browser. You can use JS functions to retrieve it such as: getVariable() function or activities.{OpenBrowserActivityName}.driverId | False | True |

**There are no Output parameters**


#### Outcomes

- Done
### Send Email
Send an email message.
**Category:** Email

#### Input Parameters

| Name | Type | Label | Hint | ReadOnly | Browsable |
| -- | -- | -- | -- | -- | -- | -- |
| From | System.String | From | The sender's email address. | False | True |
| To | System.Collections.Generic.ICollection`1[System.String] | To | The recipients email addresses. | False | True |
| Cc | System.Collections.Generic.ICollection`1[System.String] | Cc | The cc recipients email addresses. | False | True |
| Bcc | System.Collections.Generic.ICollection`1[System.String] | Bcc | The Bcc recipients email addresses. | False | True |
| Subject | System.String | Subject | The subject of the email message. | False | True |
| Attachments | System.Object | Attachments | The attachments to send with the email message. Can be (an array of) a fully-qualified file path, URL, stream, byte array or instances of EmailAttachment. | False | True |
| Body | System.String | Body | The body of the email message. | False | True |

#### Output Parameters

| Name | Type | Hint |
| -- | -- | -- |
| ResponseContent | System.Object  |   |


#### Outcomes

- Done
- Unexpected Error
### Entity Changed
Triggers when an entity was added, updated or deleted.
**Category:** Entity

#### Input Parameters

| Name | Type | Label | Hint | ReadOnly | Browsable |
| -- | -- | -- | -- | -- | -- | -- |
| EntityName | System.String | Entity Name | The Entity Name to observe. Matches any entity if no value is specified. | False | True |
| Action | System.Nullable`1[Elsa.Activities.Entity.EntityChangedAction] | Action | The Entity Changed Action to observe. Matches any action if no value is specified. | False | True |

#### Output Parameters

| Name | Type | Hint |
| -- | -- | -- |
| Output | System.Object  |   |


#### Outcomes

- Done
### Delete File
Deletes file at specified location
**Category:** File

#### Input Parameters

| Name | Type | Label | Hint | ReadOnly | Browsable |
| -- | -- | -- | -- | -- | -- | -- |
| Path | System.String | Path | Path of the file to delete. | False | True |

**There are no Output parameters**


#### Outcomes

- Done
### Enumerate Files
Enumerates files in a given folder
**Category:** File

#### Input Parameters

| Name | Type | Label | Hint | ReadOnly | Browsable |
| -- | -- | -- | -- | -- | -- | -- |
| Path | System.String | Path | Path of the folder to enumerate files. | False | True |
| Pattern | System.String | Pattern | Pattern for files to return. | False | True |
| IgnoreInaccessible | System.Boolean | Ignore Inaccessible | Ignore inaccessible files. | False | True |
| MatchCasing | System.IO.MatchCasing | Match Casing | Set case sensitivity. | False | True |
| SubDirectories | System.Boolean | Sub Directories | Return files from sub directories | False | True |

#### Output Parameters

| Name | Type | Hint |
| -- | -- | -- |
| Files | System.Collections.Generic.IEnumerable`1[System.String]  | List of files.  |


#### Outcomes

- Done
### File Exists
Checks if a file exists
**Category:** File

#### Input Parameters

| Name | Type | Label | Hint | ReadOnly | Browsable |
| -- | -- | -- | -- | -- | -- | -- |
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
| -- | -- | -- | -- | -- | -- | -- |
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
| -- | -- | -- | -- | -- | -- | -- |
| Path | System.String | Path | Path to read content from. | False | True |

#### Output Parameters

| Name | Type | Hint |
| -- | -- | -- |
| Bytes | System.Byte[]  | Bytes of the file read.  |


#### Outcomes

- Done
### Temp File
Created a temporary file and returns its path
**Category:** File

**There are no input parameters**

#### Output Parameters

| Name | Type | Hint |
| -- | -- | -- |
| Path | System.String  | Path of the created temporary file.  |


#### Outcomes

- Done
### Watch Directory
Triggers when files are created/modified in the given folder
**Category:** File

#### Input Parameters

| Name | Type | Label | Hint | ReadOnly | Browsable |
| -- | -- | -- | -- | -- | -- | -- |
| Path | System.String | Path | The path of the directory to watch | False | True |
| Pattern | System.String | Pattern | The file pattern for interested files | False | True |
| ChangeTypes | System.IO.WatcherChangeTypes | Change Types | The types of file system events to subscribe to | False | True |
| NotifyFilters | System.IO.NotifyFilters | Notify Filters |  | False | True |

#### Output Parameters

| Name | Type | Hint |
| -- | -- | -- |
| Output | Elsa.Activities.File.Models.FileSystemEvent  |   |


#### Outcomes

- Done
### Cron
Triggers periodically based on a specified CRON expression.
**Category:** Timers

#### Input Parameters

| Name | Type | Label | Hint | ReadOnly | Browsable |
| -- | -- | -- | -- | -- | -- | -- |
| CronExpression | System.String | Cron Expression | Specify a Quartz CRON expression. Go to https://www.freeformatter.com/cron-expression-generator-quartz.html to generate valid Quartz cron expressions. | False | True |

**There are no Output parameters**


#### Outcomes

- Done
### Timer
Triggers at a specified interval.
**Category:** Timers

#### Input Parameters

| Name | Type | Label | Hint | ReadOnly | Browsable |
| -- | -- | -- | -- | -- | -- | -- |
| Timeout | NodaTime.Duration | Timeout | The time interval at which this activity should tick. | False | True |

**There are no Output parameters**


#### Outcomes

- Done
### Start at
Triggers at a specified moment in time.
**Category:** Timers

#### Input Parameters

| Name | Type | Label | Hint | ReadOnly | Browsable |
| -- | -- | -- | -- | -- | -- | -- |
| Instant | NodaTime.Instant | Instant | An instant in the future at which this activity should execute. | False | True |

**There are no Output parameters**


#### Outcomes

- Done
### Clear Timer
Cancel a timer (Cron, StartAt, Timer) so that it is not executed.
**Category:** Timers

#### Input Parameters

| Name | Type | Label | Hint | ReadOnly | Browsable |
| -- | -- | -- | -- | -- | -- | -- |
| ActivityId | System.String | Activity Id | The ID of the timer (Cron, StartAt, Timer) activity, which is to be cleared. | False | True |

**There are no Output parameters**


#### Outcomes

- Done
### HTTP Endpoint
Handle an incoming HTTP request.
**Category:** HTTP

#### Input Parameters

| Name | Type | Label | Hint | ReadOnly | Browsable |
| -- | -- | -- | -- | -- | -- | -- |
| Path | System.String | Path | The relative path that triggers this activity. | False | True |
| Methods | System.Collections.Generic.HashSet`1[System.String] | Methods | The HTTP methods that trigger this activity. | False | True |
| ReadContent | System.Boolean | Read Content | A value indicating whether the HTTP request content body should be read and stored as part of the HTTP request model. The stored format depends on the content-type header. | False | True |
| TargetType | System.Type | Target Type |  | False | True |
| Schema | System.String | Schema |  | False | True |
| Authorize | System.Boolean | Authorize | Check to allow authenticated requests only | False | True |
| Policy | System.String | Policy | Provide a policy to evaluate. If the policy fails, the request is forbidden. | False | True |

#### Output Parameters

| Name | Type | Hint |
| -- | -- | -- |
| Output | Elsa.Activities.Http.Models.HttpRequestModel  | The received HTTP request.  |


#### Outcomes

- Done
### HTTP Response
Write an HTTP response.
**Category:** HTTP

#### Input Parameters

| Name | Type | Label | Hint | ReadOnly | Browsable |
| -- | -- | -- | -- | -- | -- | -- |
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
| -- | -- | -- | -- | -- | -- | -- |
| Url | System.Uri | Url | The URL to send the HTTP request to. | False | True |
| Method | System.String | Method | The HTTP method to use when making the request. | False | True |
| Content | System.String | Content | The HTTP content to send along with the request. | False | True |
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
| Response | Elsa.Activities.Http.Models.HttpResponseModel  |   |
| ResponseContent | System.Object  |   |


#### Outcomes

- Done
- Unsupported Status Code
### Redirect
Write an HTTP redirect response.
**Category:** HTTP

#### Input Parameters

| Name | Type | Label | Hint | ReadOnly | Browsable |
| -- | -- | -- | -- | -- | -- | -- |
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
| -- | -- | -- | -- | -- | -- | -- |
| Script | System.String | Script | The JavaScript to run. | False | True |
| PossibleOutcomes | System.Collections.Generic.ICollection`1[System.String] | Possible Outcomes | The possible outcomes that can be set by the script. | False | True |

#### Output Parameters

| Name | Type | Hint |
| -- | -- | -- |
| Output | System.Object  |   |


#### Outcomes

- Done
### Capability Create
Adds a new capability
**Category:** Users

#### Input Parameters

| Name | Type | Label | Hint | ReadOnly | Browsable |
| -- | -- | -- | -- | -- | -- | -- |
| CapabilityDescription | System.String | Capability Description | The Description of the Capability | False | True |

#### Output Parameters

| Name | Type | Hint |
| -- | -- | -- |
| ReturnResult | System.String  |   |
| ReturnId | System.String  |   |


#### Outcomes

- Success
- Failed
### Capabilities Get List
Gets a list of all capabilities
**Category:** Users

#### Input Parameters

| Name | Type | Label | Hint | ReadOnly | Browsable |
| -- | -- | -- | -- | -- | -- | -- |
| EmailAddress | System.String | Email Address | The EmailAddress of the Current User | False | True |

#### Output Parameters

| Name | Type | Hint |
| -- | -- | -- |
| Capabilities | System.Collections.Generic.List`1[HubOneWorkflows.Models.Core.Capability]  |   |


#### Outcomes

- Success
- Failed
### Data Type Add
Adds a new Data Type to be used as a hint to the Data CRUD UI
**Category:** Data

#### Input Parameters

| Name | Type | Label | Hint | ReadOnly | Browsable |
| -- | -- | -- | -- | -- | -- | -- |
| DataType | System.String | Data Type | The name of the DataType | False | True |
| SQLDefinition | System.String | SQL Definition | The SQL Data Type of this DataType | False | True |

#### Output Parameters

| Name | Type | Hint |
| -- | -- | -- |
| ReturnResult | HubOneWorkflows.Models.Core.DataType  |   |
| ReturnId | System.Int64  |   |


#### Outcomes

- Success
- Failed
### DataTypes get List
Gets a list of all DataTypes
**Category:** Data

**There are no input parameters**

#### Output Parameters

| Name | Type | Hint |
| -- | -- | -- |
| ReturnResult | System.String  |   |
| ReturnId | System.String  |   |
| DataTypes | System.Collections.Generic.List`1[HubOneWorkflows.Models.Core.DataType]  |   |


#### Outcomes

- Success
- Failed
### Entity Created
Waits for an entity to be created
**Category:** Data

#### Input Parameters

| Name | Type | Label | Hint | ReadOnly | Browsable |
| -- | -- | -- | -- | -- | -- | -- |
| EntityType | System.String | Entity Type | Provide the Entity Type (or leave blank for all) | False | True |

#### Output Parameters

| Name | Type | Hint |
| -- | -- | -- |
| EntityKey | System.Int64  |   |


#### Outcomes

- Success
- Failed
### Entity Updated
Waits for an Entity to be updated
**Category:** Data

#### Input Parameters

| Name | Type | Label | Hint | ReadOnly | Browsable |
| -- | -- | -- | -- | -- | -- | -- |
| EntityType | System.String | Entity Type | Provide the Entity Type (or leave blank for all) | False | True |

#### Output Parameters

| Name | Type | Hint |
| -- | -- | -- |
| EntityKey | System.Int64  |   |


#### Outcomes

- Complete
- Failed
### Object Create
Creates a Brand New Object
**Category:** Data

#### Input Parameters

| Name | Type | Label | Hint | ReadOnly | Browsable |
| -- | -- | -- | -- | -- | -- | -- |
| TypeId | System.Nullable`1[System.Int64] | Type Id | The Id of the Type. Enter either Id or Name or Id will take precendence | False | True |
| strTypeId | System.String | Str Type Id | The Name of the Type. Enter either Id or Name or Id will take precendence | False | True |
| Owner | System.String | Owner | The Owner of the Object | False | True |

#### Output Parameters

| Name | Type | Hint |
| -- | -- | -- |
| ReturnResult | HubOneWorkflows.Models.Core.ObjectInstance  |   |
| ReturnId | System.Int64  |   |


#### Outcomes

- Success
- Failed
### Object Create, Set, Promote to Variable
Creates a new Object, Sets Data, Promotes it and returns in a Variable
**Category:** Data

#### Input Parameters

| Name | Type | Label | Hint | ReadOnly | Browsable |
| -- | -- | -- | -- | -- | -- | -- |
| TypeId | System.Nullable`1[System.Int64] | Type Id | The Id of the Type. Enter either Id or Name or Id will take precendence | False | True |
| TypeName | System.String | Str Type Id | The Name of the Type. Enter either Id or Name or Id will take precendence | False | True |
| Owner | System.String | Owner | The Owner of the Object | False | True |
| Json | System.String | Json | The Object Detail in JSON | False | True |
| VariableName | System.String | Variable Name | The Output Variable Name | False | True |

#### Output Parameters

| Name | Type | Hint |
| -- | -- | -- |
| ReturnResult | System.String  |   |
| ReturnId | System.String  |   |


#### Outcomes

- Success
- Failed
### Object Detail Create
Creates a new Desired State for an Object
**Category:** Data

#### Input Parameters

| Name | Type | Label | Hint | ReadOnly | Browsable |
| -- | -- | -- | -- | -- | -- | -- |
| ObjectId | System.Int64 | Object Id | The Id of the Object to create detail for | False | True |
| Json | System.String | Json | The Object Detail in JSON | False | True |

#### Output Parameters

| Name | Type | Hint |
| -- | -- | -- |
| ReturnResult | System.String  |   |
| ReturnId | System.Int64  |   |


#### Outcomes

- Success
- Failed
### Object Detail Create and Promote
Creates a new Desired State for an Object then immediately promotes it
**Category:** Data

#### Input Parameters

| Name | Type | Label | Hint | ReadOnly | Browsable |
| -- | -- | -- | -- | -- | -- | -- |
| ObjectId | System.Int64 | Object Id | The Id of the Object to create detail for | False | True |
| Json | System.String | Json | The Object Detail in JSON | False | True |
| VariableName | System.String | Variable Name | The Output Variable Name | False | True |

#### Output Parameters

| Name | Type | Hint |
| -- | -- | -- |
| ReturnResult | System.String  |   |
| ReturnId | System.Int64  |   |


#### Outcomes

- Success
- Failed
### Object Detail Get
Gets the detail of an object from a specific State
**Category:** Data

#### Input Parameters

| Name | Type | Label | Hint | ReadOnly | Browsable |
| -- | -- | -- | -- | -- | -- | -- |
| ObjectId | System.Int64 | Object Id | The Id of the Object | False | True |
| State | System.Char | State | The State where C is Current, D is Desired and H is History | False | True |

#### Output Parameters

| Name | Type | Hint |
| -- | -- | -- |
| ReturnResult | System.Collections.Generic.List`1[System.Collections.Generic.Dictionary`2[System.String,System.Object]]  |   |
| ReturnId | System.Int64  |   |


#### Outcomes

- Success
- Failed
### Object Detail Promote
Promotes an Object Version from Desired State to Current State
**Category:** Data

#### Input Parameters

| Name | Type | Label | Hint | ReadOnly | Browsable |
| -- | -- | -- | -- | -- | -- | -- |
| ObjectId | System.Int64 | Object Id | The Id of the Object | False | True |
| StateId | System.Int64 | State Id | The Desired State ID to Promote | False | True |

#### Output Parameters

| Name | Type | Hint |
| -- | -- | -- |
| ReturnResult | System.String  |   |
| ReturnId | System.Int64  |   |


#### Outcomes

- Success
- Failed
### Object Detail To Variable
Gets the detail of an object from a specific State and places it in a workflow variable
**Category:** Data

#### Input Parameters

| Name | Type | Label | Hint | ReadOnly | Browsable |
| -- | -- | -- | -- | -- | -- | -- |
| ObjectId | System.Int64 | Object Id | The Id of the Object | False | True |
| State | System.Char | State | The State where C is Current, D is Desired and H is History | False | True |
| VariableName | System.String | Variable Name | The Name of the New Variable | False | True |

**There are no Output parameters**


#### Outcomes

- Success
- Failed
### Objects Get List by Type
Gets a List of Objects by Type
**Category:** Data

#### Input Parameters

| Name | Type | Label | Hint | ReadOnly | Browsable |
| -- | -- | -- | -- | -- | -- | -- |
| TypeId | System.Nullable`1[System.Int64] | Type Id | The Id of the Type. Enter either Id or Name or Id will take precendence | False | True |
| TypeName | System.String | Type Name | The Name of the Type. Enter either Id or Name or Id will take precendence | False | True |

#### Output Parameters

| Name | Type | Hint |
| -- | -- | -- |
| ReturnResult | System.String  |   |
| ReturnId | System.String  |   |
| ObjectInstances | System.Collections.Generic.List`1[HubOneWorkflows.Models.API.ObjectInstanceWithProperties]  |   |


#### Outcomes

- Success
- Failed
### Objects get list with Query
Gets a list of objects based on a query
**Category:** Data

#### Input Parameters

| Name | Type | Label | Hint | ReadOnly | Browsable |
| -- | -- | -- | -- | -- | -- | -- |
| TypeId | System.Nullable`1[System.Int64] | Type Id | The Id of the Type. Enter either Id or Name or Id will take precendence | False | True |
| strTypeId | System.String | Str Type Id | The Name of the Type. Enter either Id or Name or Id will take precendence | False | True |
| Query | System.String | Query | The Query | False | True |

#### Output Parameters

| Name | Type | Hint |
| -- | -- | -- |
| ObjectDetails | System.Collections.Generic.List`1[HubOneWorkflows.Models.API.ObjectInstanceWithProperties]  |   |


#### Outcomes

- Success
- Failed
### Object Update
Updates an object
**Category:** Data

**There are no input parameters**

#### Output Parameters

| Name | Type | Hint |
| -- | -- | -- |
| Instance | HubOneWorkflows.Models.Core.ObjectInstance  | The receieved ObjectInstance  |


#### Outcomes

- Success
- Failed
### Object Rename
Renames an object
**Category:** Data

#### Input Parameters

| Name | Type | Label | Hint | ReadOnly | Browsable |
| -- | -- | -- | -- | -- | -- | -- |
| ObjectId | System.Int64 | Object Id | The Id of the Object | False | True |
| Title | System.String | Title | The Title of the Object | False | True |

#### Output Parameters

| Name | Type | Hint |
| -- | -- | -- |
| ReturnResult | System.String  |   |


#### Outcomes

- Success
- Failed
### Task Ask Simple Question and Wait
Create a Task and Waits until a simple question has been responded to
**Category:** Tasks

#### Input Parameters

| Name | Type | Label | Hint | ReadOnly | Browsable |
| -- | -- | -- | -- | -- | -- | -- |
| Title | System.String | Title | Provide the Title of the Task | False | True |
| TaskDescription | System.String | Task Description | The Description of the Task using Markdown | False | True |
| Severity | System.Int32 | Severity | The severity of the Task | False | True |
| Priority | System.Int32 | Priority | The Priority of the Task | False | True |
| Due | System.Int32 | Due | Days from Today that Task is Due (1-N) | False | True |
| Capability | System.Int32 | Capability | The Capability Id for this Task | False | True |
| RelatedObjectID | System.Int64 | Related Object ID | Any Related Object ID | False | True |
| DataQuestions | System.String | Data Questions | Questions, or data to complete in the format YYYY~XXXX|YYYY~XXXX* where XXXX is a non-required item and XXXX* is a required field. YYYY is the prompt | False | True |
| UniqueDropDowns | System.Boolean | Unique Drop Downs | Select this to make dropdown entries of the same type unique, not allowing repeats | False | True |
| Branches | System.Collections.Generic.ISet`1[System.String] | Branches | Enter one or more Answers. These will become buttons for the user to respond to. | False | True |

#### Output Parameters

| Name | Type | Hint |
| -- | -- | -- |
| Output | System.Nullable`1[System.Int64]  |   |


#### Outcomes

### Task Create
Creates a new Task
**Category:** Tasks

#### Input Parameters

| Name | Type | Label | Hint | ReadOnly | Browsable |
| -- | -- | -- | -- | -- | -- | -- |
| Title | System.String | Title | Provide the Title of the Task | False | True |
| TaskDescription | System.String | Task Description | The Description of the Task using Markdown | False | True |
| Severity | System.Int32 | Severity | The severity of the Task | False | True |
| Priority | System.Int32 | Priority | The Priority of the Task | False | True |
| Capability | System.Int32 | Capability | The Capability Id for this Task | False | True |
| Due | System.Int32 | Due | Days from Today that Task is Due (1-N) | False | True |

#### Output Parameters

| Name | Type | Hint |
| -- | -- | -- |
| Output | HubOneWorkflows.Models.Core.WorkflowsTask  |   |


#### Outcomes

- Success
- Failed
### Task Create and Wait
Create a Task and Waits until it is complete or has timed out
**Category:** Tasks

#### Input Parameters

| Name | Type | Label | Hint | ReadOnly | Browsable |
| -- | -- | -- | -- | -- | -- | -- |
| Title | System.String | Title | Provide the Title of the Task | False | True |
| TaskDescription | System.String | Task Description | The Description of the Task using Markdown | False | True |
| Severity | System.Int32 | Severity | The severity of the Task | False | True |
| Priority | System.Int32 | Priority | The Priority of the Task | False | True |
| Due | System.Int32 | Due | Days from Today that Task is Due (1-N) | False | True |
| Capability | System.Int32 | Capability | The Capability Id for this Task | False | True |
| RelatedObjectID | System.Int64 | Related Object ID | Any Related Object ID | False | True |
| DataQuestions | System.String | Data Questions | Questions, or data to complete in the format YYYY~XXXX|YYYY~XXXX* where XXXX is a non-required item and XXXX* is a required field. YYYY is the prompt | False | True |

#### Output Parameters

| Name | Type | Hint |
| -- | -- | -- |
| Output | System.Nullable`1[System.Int64]  |   |


#### Outcomes

- Complete
- Failed
- TimedOut
### Task Delete
Deletes a Task
**Category:** Tasks

#### Input Parameters

| Name | Type | Label | Hint | ReadOnly | Browsable |
| -- | -- | -- | -- | -- | -- | -- |
| TaskId | System.Int64 | Task Id | The Task Id | False | True |

#### Output Parameters

| Name | Type | Hint |
| -- | -- | -- |
| ReturnResult | System.String  |   |


#### Outcomes

- Success
- Failed
### Task detail add
Adds a Detail to Task
**Category:** Tasks

#### Input Parameters

| Name | Type | Label | Hint | ReadOnly | Browsable |
| -- | -- | -- | -- | -- | -- | -- |
| WorkflowsTaskId | System.Int64 | Workflows Task Id | The Id of the Task | False | True |
| TypeId | System.Int64 | Type Id | The Id of the Type | False | True |
| ObjectId | System.Int64 | Object Id | The Id of the Object to Add | False | True |

#### Output Parameters

| Name | Type | Hint |
| -- | -- | -- |
| ReturnResult | System.String  |   |
| ReturnId | System.Int64  |   |


#### Outcomes

- Success
- Failed
### Task details get list
Gets the details associated with a task
**Category:** Tasks

#### Input Parameters

| Name | Type | Label | Hint | ReadOnly | Browsable |
| -- | -- | -- | -- | -- | -- | -- |
| WorkflowsTaskId | System.Int64 | Workflows Task Id | The Task Id | False | True |

#### Output Parameters

| Name | Type | Hint |
| -- | -- | -- |
| ReturnResult | System.String  |   |
| TaskDetails | System.Collections.Generic.List`1[HubOneWorkflows.Models.Core.TaskDetail]  |   |


#### Outcomes

- Success
- Failed
### Tasks get list
Gets lis of tasks with a specific id or assigned to user
**Category:** Tasks

#### Input Parameters

| Name | Type | Label | Hint | ReadOnly | Browsable |
| -- | -- | -- | -- | -- | -- | -- |
| AssignedUserId | System.Int32 | Assigned User Id | The Assigned User Id | False | True |

#### Output Parameters

| Name | Type | Hint |
| -- | -- | -- |
| ReturnResult | System.String  |   |
| ReturnId | System.String  |   |
| TaskDetails | System.Collections.Generic.List`1[HubOneWorkflows.Models.Core.WorkflowsTask]  |   |


#### Outcomes

- Success
- Failed
### Task Update
Updates a task
**Category:** Tasks

#### Input Parameters

| Name | Type | Label | Hint | ReadOnly | Browsable |
| -- | -- | -- | -- | -- | -- | -- |
| WorkflowsTaskId | System.Int64 | Workflows Task Id | The Id of the Task | False | True |
| TypeId | System.Int64 | Type Id | The Id of the Type | False | True |
| ObjectId | System.Int64 | Object Id | The Id of the Object to Add | False | True |

#### Output Parameters

| Name | Type | Hint |
| -- | -- | -- |
| ReturnResult | System.String  |   |
| ReturnId | System.Int64  |   |


#### Outcomes

- Success
- Failed
### Type add Column
Adds a column to a type
**Category:** Data

#### Input Parameters

| Name | Type | Label | Hint | ReadOnly | Browsable |
| -- | -- | -- | -- | -- | -- | -- |
| ObjectTypeId | System.Int64 | Object Type Id | The Id of the Object Type | False | True |
| ColumnName | System.String | Column Name | The Name of the Column | False | True |
| ColumnDisplayName | System.String | Column Display Name | The Display Name of the Column | False | True |
| ColumnDescription | System.String | Column Description | The Description of the Column | False | True |
| ColumnTypeId | System.Int32 | Column Type Id | The Column Type Id | False | True |
| ForeignKeyId | System.Nullable`1[System.Int64] | Foreign Key Id | The Type Id of any relationship | False | True |
| DisplayOrder | System.Nullable`1[System.Int32] | Display Order | The DisplayOrder | False | True |
| Visible | System.Nullable`1[System.Boolean] | Visible | Visible | False | True |
| Indexed | System.Nullable`1[System.Boolean] | Indexed | Visible | False | True |
| WhereString | System.String | Where String | WhereString | False | True |

#### Output Parameters

| Name | Type | Hint |
| -- | -- | -- |
| ReturnResult | System.String  |   |
| ReturnId | System.Int64  |   |


#### Outcomes

- Success
- Failed
### Type add index
Adds an index to a type
**Category:** Data

#### Input Parameters

| Name | Type | Label | Hint | ReadOnly | Browsable |
| -- | -- | -- | -- | -- | -- | -- |
| TypeId | System.Int64 | Type Id | The Id of the Type | False | True |
| Column | System.String | Column | The Name of the Column | False | True |

#### Output Parameters

| Name | Type | Hint |
| -- | -- | -- |
| ReturnResult | System.String  |   |
| ReturnId | System.Int64  |   |


#### Outcomes

- Success
- Failed
### Type Create
Creates a new Type
**Category:** Data

#### Input Parameters

| Name | Type | Label | Hint | ReadOnly | Browsable |
| -- | -- | -- | -- | -- | -- | -- |
| TypeName | System.String | Type Name | The Name of the Type | False | True |

#### Output Parameters

| Name | Type | Hint |
| -- | -- | -- |
| ReturnResult | System.String  |   |
| ReturnId | System.Int64  |   |


#### Outcomes

- Success
- Failed
### Type Delete
Deletes a Type
**Category:** Data

#### Input Parameters

| Name | Type | Label | Hint | ReadOnly | Browsable |
| -- | -- | -- | -- | -- | -- | -- |
| TypeName | System.String | Type Name | The Name of the Type | False | True |

**There are no Output parameters**


#### Outcomes

- Success
- Failed
### Type get columns
Gets the Columns for a Type
**Category:** Data

#### Input Parameters

| Name | Type | Label | Hint | ReadOnly | Browsable |
| -- | -- | -- | -- | -- | -- | -- |
| TypeId | System.Int64 | Type Id | The Id of the Type | False | True |
| TypeName | System.String | Type Name | The Name of the Type. Enter either Id or Name or Id will take precendence | False | True |
| VisibleOnly | System.Boolean | Visible Only | Only Return Visible Columns | False | True |

#### Output Parameters

| Name | Type | Hint |
| -- | -- | -- |
| ReturnResult | System.String  |   |
| ReturnId | System.String  |   |
| ColumnDefinitions | System.Collections.Generic.List`1[HubOneWorkflows.Models.Core.ObjectTypeColumn]  |   |


#### Outcomes

- Success
- Failed
### Types Get List
Gets a List of All Types
**Category:** Data

**There are no input parameters**

#### Output Parameters

| Name | Type | Hint |
| -- | -- | -- |
| ReturnResult | System.String  |   |
| ReturnId | System.String  |   |
| ObjectTypes | System.Collections.Generic.List`1[HubOneWorkflows.Models.Core.ObjectType]  |   |


#### Outcomes

- Success
- Failed
### Type Remove Index
Removes an index from a type
**Category:** Data

#### Input Parameters

| Name | Type | Label | Hint | ReadOnly | Browsable |
| -- | -- | -- | -- | -- | -- | -- |
| TypeId | System.Int64 | Type Id | The Id of the Object Type to Amend | False | True |
| Column | System.String | Column | The Column to Add an Index to | False | True |

#### Output Parameters

| Name | Type | Hint |
| -- | -- | -- |
| ReturnResult | System.String  |   |
| ReturnId | System.Int64  |   |


#### Outcomes

- Success
- Failed
### User Add
Adds a new user
**Category:** Users

#### Input Parameters

| Name | Type | Label | Hint | ReadOnly | Browsable |
| -- | -- | -- | -- | -- | -- | -- |
| FirstName | System.String | First Name | The Users FirstName | False | True |
| LastName | System.String | Last Name | The Users LastName | False | True |
| Email | System.String | Email | The Users Email | False | True |

#### Output Parameters

| Name | Type | Hint |
| -- | -- | -- |
| ReturnResult | HubOneWorkflows.Models.Core.User  | The User Object  |
| ReturnId | System.Int64  |   |


#### Outcomes

- Success
- Failed
### User Capability Add
Assigns a capability to a User
**Category:** Users

#### Input Parameters

| Name | Type | Label | Hint | ReadOnly | Browsable |
| -- | -- | -- | -- | -- | -- | -- |
| UserEmail | System.String | User Email | The User to Add the capability to | False | True |
| CapabilityId | System.Int32 | Capability Id | The Capability | False | True |

#### Output Parameters

| Name | Type | Hint |
| -- | -- | -- |
| ReturnResult | System.String  |   |
| ReturnId | System.Int64  |   |


#### Outcomes

- Success
- Failed
### Capability Remove
Removes a Capability from a user
**Category:** Users

#### Input Parameters

| Name | Type | Label | Hint | ReadOnly | Browsable |
| -- | -- | -- | -- | -- | -- | -- |
| RequestingUsersId | System.Int32 | Requesting Users Id | The Id of the Requesting User | False | True |
| UsersId | System.Int32 | Users Id | The User to remove the capability from | False | True |
| CapabilityId | System.Int32 | Capability Id | The Capability | False | True |

#### Output Parameters

| Name | Type | Hint |
| -- | -- | -- |
| ReturnResult | System.String  |   |
| ReturnId | System.String  |   |


#### Outcomes

- Success
- Failed
### Users Get List
Gets the list of users
**Category:** Users

#### Input Parameters

| Name | Type | Label | Hint | ReadOnly | Browsable |
| -- | -- | -- | -- | -- | -- | -- |
| UsersId | System.String | Users Id | The Id of the Current User | False | True |

#### Output Parameters

| Name | Type | Hint |
| -- | -- | -- |
| ReturnResult | System.String  |   |
| ReturnId | System.String  |   |
| Users | System.Collections.Generic.List`1[HubOneWorkflows.Models.Core.User]  |   |


#### Outcomes

- Success
- Failed
### User Update
Updates a User
**Category:** User

#### Input Parameters

| Name | Type | Label | Hint | ReadOnly | Browsable |
| -- | -- | -- | -- | -- | -- | -- |
| UsersId | System.Int32 | Users Id | The Id of the Current User | False | True |
| FirstName | System.String | First Name | The FirstName | False | True |
| Surname | System.String | Surname | The Last Name | False | True |
| Email | System.String | Email | The Email Address | False | True |

#### Output Parameters

| Name | Type | Hint |
| -- | -- | -- |
| ReturnResult | HubOneWorkflows.Models.Core.User  |   |
| ReturnId | System.Int64  |   |


#### Outcomes

- Success
- Failed
### JotForm Parse
Parse an incoming form. Takes results of HTTP activity and works to ensure the appropriate object type is created, adds or updates a record
**Category:** JotForm

#### Input Parameters

| Name | Type | Label | Hint | ReadOnly | Browsable |
| -- | -- | -- | -- | -- | -- | -- |
| ObjectType | System.String | Object Type | The Object Type | False | True |
| KeyField | System.String | Key Field | The Key Field. Use this to update a record based on a field | False | True |
| ActivityResults | System.String | Activity Results | The results of the Http Activity | False | True |

#### Output Parameters

| Name | Type | Hint |
| -- | -- | -- |
| ObjectDetails | System.Collections.Generic.Dictionary`2[System.String,System.Text.Json.JsonElement]  |   |
| ObjectId | System.Int64  |   |


#### Outcomes

- Success
- Failed
### Quick Data Insert
Quickly inserts the provided data into a type and upgrades if required
**Category:** Data

#### Input Parameters

| Name | Type | Label | Hint | ReadOnly | Browsable |
| -- | -- | -- | -- | -- | -- | -- |
| ObjectType | System.String | Object Type | The Object Type | False | True |
| KeyField | System.String | Key Field | The Key Field. Use this to update a record based on a field | False | True |
| InputData | System.String | Input Data | The Input Data | False | True |

#### Output Parameters

| Name | Type | Hint |
| -- | -- | -- |
| ObjectDetails | System.Collections.Generic.Dictionary`2[System.String,System.Text.Json.JsonElement]  |   |
| ObjectId | System.Int64  |   |


#### Outcomes

- Success
- Failed
### Get Customers
Retrieves Customers from the database
**Category:** Tuftware Sales

#### Input Parameters

| Name | Type | Label | Hint | ReadOnly | Browsable |
| -- | -- | -- | -- | -- | -- | -- |
| ClientStatus | System.Int32 | Client Status | The Client Status | False | True |

#### Output Parameters

| Name | Type | Hint |
| -- | -- | -- |
| Customers | System.Collections.Generic.List`1[Tuftware.Integration.Data.Customer]  |   |


#### Outcomes

- Success
- Failed
### Get Customer Rep
Retrieves a Rep for a customer
**Category:** Tuftware Sales

#### Input Parameters

| Name | Type | Label | Hint | ReadOnly | Browsable |
| -- | -- | -- | -- | -- | -- | -- |
| Customer | System.String | Customer | The Customer Number | False | True |

#### Output Parameters

| Name | Type | Hint |
| -- | -- | -- |
| SalesRep | Tuftware.Integration.Data.SalesRep  |   |


#### Outcomes

- Success
- Failed
- CustomerNotFound
- RepNotFound
### Run Workflow
Runs a child workflow.
**Category:** Workflows

#### Input Parameters

| Name | Type | Label | Hint | ReadOnly | Browsable |
| -- | -- | -- | -- | -- | -- | -- |
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
| Output | Elsa.Activities.Workflows.FinishedWorkflowModel  |   |


#### Outcomes

- Done
- Not Found
### Workflow

**Category:** Miscellaneous

**There are no input parameters**

#### Output Parameters

| Name | Type | Hint |
| -- | -- | -- |
| Output | System.Object  |   |


#### Outcomes

- Done
### State
Puts the workflow into the specified state.
**Category:** State Machine

#### Input Parameters

| Name | Type | Label | Hint | ReadOnly | Browsable |
| -- | -- | -- | -- | -- | -- | -- |
| StateName | System.String | State Name | The name of this state. | False | True |
| Transitions | System.Collections.Generic.ISet`1[System.String] | Transitions | Enter one or more transition names. | False | True |

**There are no Output parameters**


#### Outcomes

### Interrupt Trigger
Resumes suspended workflows that are blocked on a specific trigger.
**Category:** Workflows

#### Input Parameters

| Name | Type | Label | Hint | ReadOnly | Browsable |
| -- | -- | -- | -- | -- | -- | -- |
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
| -- | -- | -- | -- | -- | -- | -- |
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
| -- | -- | -- | -- | -- | -- | -- |
| Signal | System.String | Signal | The name of the signal to wait for. | False | True |

#### Output Parameters

| Name | Type | Hint |
| -- | -- | -- |
| SignalInput | System.Object  | The input that was received with the signal.  |
| Output | System.Object  |   |


#### Outcomes

- Done
### Fault
Put the workflow in a faulted state.
**Category:** Primitives

#### Input Parameters

| Name | Type | Label | Hint | ReadOnly | Browsable |
| -- | -- | -- | -- | -- | -- | -- |
| Message | System.String | Message | Optional. The message to store as the reason for the fault. | False | True |

**There are no Output parameters**


#### Outcomes

### Inline

**Category:** Miscellaneous

#### Input Parameters

| Name | Type | Label | Hint | ReadOnly | Browsable |
| -- | -- | -- | -- | -- | -- | -- |
| Function | System.Func`2[Elsa.Services.Models.ActivityExecutionContext,System.Threading.Tasks.ValueTask`1[Elsa.ActivityResults.IActivityExecutionResult]] | Function |  | False | True |

**There are no Output parameters**


#### Outcomes

- Done
### Set Context ID
Set context ID on the workflow.
**Category:** Primitives

#### Input Parameters

| Name | Type | Label | Hint | ReadOnly | Browsable |
| -- | -- | -- | -- | -- | -- | -- |
| ContextId | System.String | Context Id | The context ID to set. | False | True |

**There are no Output parameters**


#### Outcomes

- Done
### Set Name
Set the name of the workflow instance.
**Category:** Primitives

#### Input Parameters

| Name | Type | Label | Hint | ReadOnly | Browsable |
| -- | -- | -- | -- | -- | -- | -- |
| Value | System.String | Value | The value to set as the workflow instance's name. | False | True |

**There are no Output parameters**


#### Outcomes

- Done
### Set Transient Variable
Set a transient variable on the current workflow execution context.
**Category:** Primitives

#### Input Parameters

| Name | Type | Label | Hint | ReadOnly | Browsable |
| -- | -- | -- | -- | -- | -- | -- |
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
| -- | -- | -- | -- | -- | -- | -- |
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
| -- | -- | -- | -- | -- | -- | -- |
| Value | System.String | Value | An expression that evaluates to the value to store as the correlation ID. | False | True |

#### Output Parameters

| Name | Type | Hint |
| -- | -- | -- |
| Output | System.String  |   |


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
| -- | -- | -- | -- | -- | -- | -- |
| ActivityOutput | System.Object | Activity Output | The value to set as the workflow's output | False | True |
| OutcomeNames | System.Collections.Generic.ICollection`1[System.String] | Outcome Names | The outcomes to set on the container activity | False | True |

#### Output Parameters

| Name | Type | Hint |
| -- | -- | -- |
| Output | System.Object  |   |


#### Outcomes

### For Each
Iterate over a collection.
**Category:** Control Flow

#### Input Parameters

| Name | Type | Label | Hint | ReadOnly | Browsable |
| -- | -- | -- | -- | -- | -- | -- |
| Items | System.Collections.Generic.ICollection`1[System.Object] | Items | A collection of items to iterate over. | False | True |

#### Output Parameters

| Name | Type | Hint |
| -- | -- | -- |
| Output | System.Object  |   |


#### Outcomes

- Iterate
- Done
### Fork
Fork workflow execution into multiple branches.
**Category:** Control Flow

#### Input Parameters

| Name | Type | Label | Hint | ReadOnly | Browsable |
| -- | -- | -- | -- | -- | -- | -- |
| Branches | System.Collections.Generic.ISet`1[System.String] | Branches | Enter one or more branch names. | False | True |

**There are no Output parameters**


#### Outcomes

### For
Iterate between two numbers.
**Category:** Control Flow

#### Input Parameters

| Name | Type | Label | Hint | ReadOnly | Browsable |
| -- | -- | -- | -- | -- | -- | -- |
| Start | System.Int64 | Start | The starting number. | False | True |
| End | System.Int64 | End | The ending number. | False | True |
| Step | System.Int64 | Step | An expression that evaluates to the incrementing number on each step. | False | True |
| Operator | Elsa.Activities.ControlFlow.Operator | Operator | The operator to use when comparing the current value against the end value. | False | True |

#### Output Parameters

| Name | Type | Hint |
| -- | -- | -- |
| Output | System.Object  |   |


#### Outcomes

- Iterate
- Done
### If/Else
Evaluate a Boolean expression and continue execution depending on the result.
**Category:** Control Flow

#### Input Parameters

| Name | Type | Label | Hint | ReadOnly | Browsable |
| -- | -- | -- | -- | -- | -- | -- |
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
| -- | -- | -- | -- | -- | -- | -- |
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
| -- | -- | -- | -- | -- | -- | -- |
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
| -- | -- | -- | -- | -- | -- | -- |
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
| -- | -- | -- | -- | -- | -- | -- |
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
| -- | -- | -- | -- | -- | -- | -- |
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
| -- | -- | -- | -- | -- | -- | -- |
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
| Output | System.Object  |   |


#### Outcomes

- Done
