---
title: Javascript
layout: default
parent: Reference
grand_parent: User Guide
nav_order: 5
---

#  JavaScript Primer

This primer will provide you with the essential knowledge needed to use JavaScript in World of Workflows. JavaScript is a powerful and versatile scripting language that can be used to enhance your application's functionality.

## Variables

Variables are used to store data. To declare a variable, use the \`let\` or \`const\` keyword, followed by the variable name. Use \`let\` when the value can change and \`const\` when it should remain constant.

```js
let variableName = 'Elsa Workflows';
```

```js
const constantVariable = 42;
```

## Data Types

JavaScript has a few basic data types:

- *String*: Textual data enclosed in single or double quotes.

- *Number*: Numeric data (both integers and floating-point numbers).

- *Boolean*: \`true\` or \`false\` values.

- *Object*: A collection of key-value pairs.

- *Array*: An ordered collection of values.

- *Null*: Represents an empty or non-existent value.

- *Undefined*: Represents an uninitialized variable.

## Control Structures

Control structures are used to manage the flow of your code. Some common control structures are:

### If statement

Executes a block of code if a specified condition is true.

```js
if (condition) {
    // Code to be executed
}
```

### If-else statement

Executes one block of code if the condition is true, and another block if it is false.

```js
if (condition) {
    // Code to be executed if condition is true
} else {
    // Code to be executed if condition is false
}
```

### While loop

Executes a block of code as long as the condition is true.

```js
while (condition) {
    // Code to be executed
}
```

### For loop

Executes a block of code a specific number of times.

```js
for (let i = 0; i < count; i++) {
    // Code to be executed
}
```


## Functions

Functions are reusable blocks of code that perform a specific task. To define a function, use the \`function\` keyword, followed by the function name, a list of parameters, and the function body.

```js
function functionName(parameter1, parameter2) {
    // Code to be executed
}
```

To call a function, use its name followed by the arguments:

```js
functionName(argument1, argument2);
```

## Objects and Arrays

Objects store key-value pairs, where each key is associated with a value. To create an object, use the following syntax:

```js
const objectName = {
    key1: value1,
    key2: value2,
};
```

Access properties using dot notation or bracket notation:

```js
objectName.key1; // value1
objectName['key2']; // value2
```

Arrays store ordered collections of values. To create an array, use the following syntax:

```js
const arrayName = [value1, value2, value3];
```

Access values in an array using their index (zero-based):

```js
arrayName[0]; // value1
arrayName[1]; // value2
```

## Working with Strings

Here are some common string operations:

### Concatenation

Combine strings using the ```+``` operator.

```js
let combinedString = 'Hello, ' + 'World!';
```

### String interpolation

Embed expressions within a string using template literals.

```js
let name = 'Elsa';
let message = `Hello, ${name}!`;
```

### String methods

JavaScript provides many built-in string methods to manipulate and work with strings. Here is a list of commonly used string methods:

- *charAt(index):* Returns the character at the specified index.
- *charCodeAt(index):* Returns the Unicode value of the character at the specified index.
- *concat(str1, str2, ...):* Concatenates two or more strings and returns the resulting string.
- *endsWith(searchString, length):* Determines if a string ends with the characters of the specified searchString.
- *includes(searchString, startPosition):* Determines if a string contains the specified searchString.
- *indexOf(searchString, startPosition):* Returns the index of the first occurrence of the specified searchString or -1 if not found.
- *lastIndexOf(searchString, startPosition):* Returns the index of the last occurrence of the specified searchString or -1 if not found.
- *match(regExp):* Searches for a match between a regular expression and a string, and returns the matches.
- *matchAll(regExp):* Returns an iterator of all results matching a regular expression in a string.
- *normalize(form):* Returns the Unicode Normalization Form of the string.
- *padEnd(targetLength, padString):* Pads the end of the string with the specified padString to reach the targetLength.
- *padStart(targetLength, padString):* Pads the start of the string with the specified padString to reach the targetLength.
- *repeat(count):* Repeats the string a specified number of times.
- *replace(searchValue, newValue):* Searches for a specified searchValue and replaces it with a newValue.
- *replaceAll(searchValue, newValue):* Searches for all occurrences of a specified searchValue and replaces them with a newValue.
- *search(regExp):* Searches for a match between a regular expression and a string, and returns the index of the match or -1 if not found.
- *slice(startIndex, endIndex):* Extracts a section of the string and returns it as a new string.
- *split(separator, limit):* Splits a string into an array of substrings using a specified separator.
- *startsWith(searchString, position):* Determines if a string starts with the characters of the specified searchString.
- *substr(startIndex, length):* Returns a part of the string from the specified startIndex with the specified length.
- *substring(startIndex, endIndex):* Returns a part of the string between the specified startIndex and endIndex.
- *toLocaleLowerCase():* Returns the string in lowercase using the host's current locale.
- *toLocaleUpperCase():* Returns the string in uppercase using the host's current locale.
- *toLowerCase():* Returns the string in lowercase.
- *toUpperCase():* Returns the string in uppercase.
- *trim():* Removes whitespace from both ends of a string.
- *trimStart():* Removes whitespace from the beginning of a string.
- *trimEnd():* Removes whitespace from the end of a string.
- *valueOf():* Returns the primitive value of a string object.
  
These string methods can help you perform various operations on strings, such as searching, replacing, modifying case, splitting, and more. Keep in mind that strings in JavaScript are immutable; these methods return new strings and do not modify the original string.

```js
let text = 'World of Workflows';
let lowerCaseText = text.toLowerCase(); // 'world of workflows'
let upperCaseText = text.toUpperCase(); // 'WORLD OF WORKFLOWS'
let position = text.indexOf('Workflows'); // 5
let slicedText = text.slice(0, 5); // 'World'
let replacedText = text.replace('Workflows', 'App'); // 'World of App'
```

## Working with Arrays

Here are some common array operations:

### push

Add an element to the end of an array using ```push()```:

```js
let array = [1, 2, 3];
array.push(4); // array becomes [1, 2, 3, 4]
```

### pop

Remove the last element from an array using ```pop()```:

```js
let array = [1, 2, 3];
array.pop(); // array becomes [1, 2]
```

### unshift

Add an element to the beginning of an array using ```unshift()```:

```js
let array = [1, 2, 3];
array.unshift(0); // array becomes [0, 1, 2, 3]
```

### shift

Remove the first element from an array using ```shift()```:

```js
let array = \[1, 2, 3\];
array.shift(); // array becomes \[2, 3\]
```

### forEach

Iterate through the elements of an array using a ```for``` loop or the ```forEach()``` method:

```js
let array = [1, 2, 3];

// Using a for loop
for (let i = 0; i < array.length; i++) {
     console.log(array[i]); // 1, 2, 3
}

// Using forEach()
array.forEach((element) => {
    console.log(element); // 1, 2, 3
});
```

## Error Handling

To handle errors in JavaScript, you can use the ```try...catch``` statement:

```js
try {
    // Code that might throw an error
} catch (error) {
    // Code to handle the error
}
```

For example, if you want to handle an error when parsing JSON data:

```js
let jsonData = '{ "name": "Workflows"';

try {
    let obj = JSON.parse(jsonData);
    console.log(obj.name); // 'Workflows'
} catch (error) {
    console.error('An error occurred:', error.message); // 'An error occurred: Unexpected end of JSON input'
}
```

This JavaScript primer should help you get started with using JavaScript in your World of Workflows application. As you continue to develop your application, you can explore more advanced concepts and techniques, as well as integrate external libraries and APIs to further enhance its capabilities.

# JavaScript in World of Workflows

The following JavaScript expressions are supported:

## Variables

### Workflow Variables

Any workflow *variable* can be accessed directly as if they were a global variable.

For example, if the **<span class="smallcaps">SetVariable</span>** activity sets a variable called *FirstName* to 'Luke', it can be accessed as follows:

```js
'Hello ${FirstName}'
```

Value stored in the variable:

```js
"Hello Luke"
```

This also works when setting variables using the *setVariable()* function. Because ultimately, both the *SetVariable* activity and *setVariable()* function use the same API under the cover to set a workflow variable.

`## Activity Output

A activity might provide some output which can then be accessed from any other activity using workflow expressions.

For example, to access an activity's output property called **<span class="smallcaps">Output</span>** using a JavaScript expression, you can do so by specifying *activities*, then the activity name followed by *.Output()*. Notice that you must invoke the property as if it were a method (i.e. using *()* at the end). This is due to the way workflow storage providers work, which are potentially asynchronous in nature (such as Azure Blob Storage).

For example, if you have an activity named *MyActivity*, you can access its output as follows:

```js
activities.MyActivity.Output();
```

If the output is an object, you can access its properties too. For instance, the HTTP Endpoint activity returns the HTTP request as its output which is of type **<span class="smallcaps">HttpRequestModel</span>**. When you name this activity *MyHttpEndpoint*, you can access the HTTP request *Body* like this:

```js
activities.MyHttpEndpoint.Output().Body
```

If you happened to post a JSON document to your HTTP endpoint that looks like this:

```json
{
    "MyDocument": {
        "Title": "About Elsa Workflows"
    }
}
```

Then you can access the *Title* field like this:

```js
activities.MyHttpEndpoint.Output().Body.MyDocument.Title
```

If your activity is a direct child of an HTTP Endpoint activity, you can access its output directly via the *input* variable, which will be an instance of **<span class="smallcaps">HttpRequestModel</span>**.

## input

Contains the *input* value that was received as *output* from the previously executed activity, if any.

```input: object?```

## workflowInstanceId

Contains the workflow instance ID of the currently executing workflow.

```workflowInstanceId: string```

## workflowDefinitionId

Contains the workflow definition ID of the currently executing workflow.

```workflowDefinitionId: string```

## workflowDefinitionVersion

Contains the workflow definition version of the currently executing workflow.

```workflowDefinitionVersion: number```

### correlationId

Contains the correlation ID of the currently executing workflow.

```correlationId: string?```

### currentCulture

Contains the current culture.

```currentCulture: CultureInfo```

*Currently, this value is always set to CultureInfo.InvariantCulture.*

### workflowContext

Contains the workflow context (if any) of the currently executing workflow.

```workflowContext: object?```

## Common Functions

### guid

Generates a new GUID value and returns its string representation.

```guid(): string```

This function is a thin wrapper around the following .NET code:

```Guid.NewGuid().ToString().```

### parseGuid

Parses a string into a GUID value.

```parseGuid(value: string): Guid```

This function is a thin wrapper around the following .NET code:

```Guid.Parse(value).```

### setVariable

Sets a workflow variable to the specified value.

```setVariable(name: string, value: object): void```

This function is a thin wrapper around the following .NET code:

```activityContext.SetVariable(name, value).```

### getVariable

Returns a workflow variable with the specified name.

```getVariable(name: string): object```

Instead of using getVariable(name: string), you can access workflow variables directly as described above in the Workflow Variables section.

This function is a thin wrapper around the following .NET code:

```activityContext.GetVariable(name).```

### getConfig

Provides access to a .NET configuration value.

```getConfig(name: string): string```

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
This function is a thin wrapper around the following .NET code:

```configuration.GetSection(name).Value```

where configuration is an instance of IConfiguration.

### isNullOrWhiteSpace

Returns true if the specified string is null, empty or consists of white space only, false otherwise.

```isNullOrWhiteSpace(value: string): boolean```

This function is a thin wrapper around the following .NET code:

```string.IsNullOrWhiteSpace(value).```

### isNullOrEmpty

Returns true if the specified string is null or empty, false otherwise.

```isNullOrEmpty(value: string): boolean```

This function is a thin wrapper around the following .NET code:

```string.IsNullOrEmpty(value).```

## Workflow Functions

### getWorkflowDefinitionIdByName

Returns the ID of the specified workflow by name. This is useful when for instance you are using the **<span class="smallcaps">RunWorkflow</span>** activity, which requires the ID of the workflow definition to run.

```getWorkflowDefinitionIdByName(name: string): string?```

For example: set the *Workflow Definition* in a **<span class="smallcaps">RunWorkflow</span>** activity to *MyWorkflow* :

```getWorkflowDefinitionIdByName(‘MyWorkflow')```

### getWorkflowDefinitionIdByTag

Returns the ID of the specified workflow by tag. This is useful when for instance you are using the **<span class="smallcaps">RunWorkflow</span>** activity, which requires the ID of the workflow definition to run.

```getWorkflowDefinitionIdByTag(tag: string): string?```

## HTTP Functions

### queryString

Returns the value of the specified query string parameter.

```queryString(name: string): string```

### absoluteUrl

Converts the specified relative path into a fully-qualified absolute URL.

```absoluteUrl(path: string): string```

### signalUrl

Generates a fully-qualified absolute signal URL that will trigger the workflow instance from which this function is invoked.

```signalUrl(signal: string): string```

## Date/Time Functions

### instantFromDateTimeUtc

Returns a new Instant object from the specified DateTime value.

Make sure that the DateTime value's Kind property is DateTimeKind.Utc.

### currentInstant

Returns the current date/time value in the form of a NodaTime's Instant object.

```currentInstant(): Instant```

### currentYear

Returns the current year.

```currentYear(): number```

### startOfMonth

Returns the start of the month of the specified instant. If no instant is specified, the current instant is used.

```startOfMonth(instant: Instant?): LocalDate;```

### endOfMonth(instant: Instant?)

Returns the end of the month of the specified instant. If no instant is specified, the current instant is used.

```endOfMonth(instant: Instant?): LocalDate;```

### startOfPreviousMonth

Returns the start of the previous month of the specified instant. If no instant is specified, the current instant is used.

```startOfPreviousMonth(instant: Instant?): LocalDate;```

### plus

Adds the specified Duration to the specified Instant and returns the result.

```plus(instant: Instant, duration: Duration): Instant```

### minus

Subtracts the specified Duration from the specified Instant and returns the result.

```minus(instant: Instant, duration: Duration): Instant```

### durationFromDays

Returns a duration constructed from the specified number of days.

```durationFromDays(days: number): Duration```

### formatInstant

Formats the specified Instant using the specified format string and CultureInfo. If no culture info is provided, CultureInfo.InvariantCulture is used.

```formatInstant(instant: Instant, format: string, cultureInfo: CultureInfo?): string```

### localDateFromInstant

Returns the LocalDate portion of the specified Instant.

```localDateFromInstant(instant: Instant): LocalDate```

### instantFromLocalDate

Creates an Instant from the specified LocalDate value (start of date).

```instantFromLocalDate(localDate: LocalDate): Instant```


[^1]: Coordinated Universal Time or UTC is the primary time standard by which the world regulates clocks and time.
