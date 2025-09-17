---
title: JavaScript Primer
parent: Javascript and Liquid in Workflows
layout: default
nav_order: 10
has_children: false
---

# JavaScript Primer

This primer will provide you with the essential knowledge needed to use JavaScript in World of Workflows. JavaScript is a powerful and versatile scripting language that can be used to enhance your application's functionality.

## Variables
Variables are used to store data. To declare a variable, use the `let` or `const` keyword, followed by the variable name. Use `let` when the value can change and `const` when it should remain constant.

```
let variableName = 'Elsa Workflows';
const constantVariable = 42;
```

## Data Tables
JavaScript has a few basic data types:

-	String: Textual data enclosed in single or double quotes.
-	Number: Numeric data (both integers and floating-point numbers).
-	Boolean: `true` or `false` values.
-	Object: A collection of key-value pairs.
-	Array: An ordered collection of values.
-	Null: Represents an empty or non-existent value.
-	Undefined: Represents an uninitialized variable.

## Control Structures
Control structures are used to manage the flow of your code. Some common control structures are:

### If statement
Executes a block of code if a specified condition is true.

```
if (condition) {
      // Code to be executed
  }
``` 

### If-else statement
Executes one block of code if the condition is true, and another block if it is false.

```
  if (condition) {
      // Code to be executed if condition is true
  } else {
      // Code to be executed if condition is false
  }
```

### While loop
Executes a block of code as long as the condition is true.

```
  while (condition) {
      // Code to be executed
  }
```

### For loop
Executes a block of code a specific number of times.

```
 for (let i = 0; i < count; i++) {
      // Code to be executed
  }
```

## Functions
Functions are reusable blocks of code that perform a specific task. To define a function, use the `function` keyword, followed by the function name, a list of parameters, and the function body.

```
function functionName(parameter1, parameter2) {
    // Code to be executed
}
```

To call a function, use its name followed by the arguments:

`functionName(argument1, argument2);`


## Objects and Arrays
Objects store key-value pairs, where each key is associated with a value. To create an object, use the following syntax:

```
const objectName = {
    key1: value1,
    key2: value2,
};
```

## Access properties using dot notation or bracket notation:

```
objectName.key1; // value1
objectName['key2']; // value2
```
Arrays store ordered collections of values. To create an array, use the following syntax:

```
const arrayName = [value1, value2, value3];
```

Access values in an array using their index (zero-based):

```
arrayName[0]; // value1
arrayName[1]; // value2
```

## Working with Strings
Here are some common string operations:

### Concatenation
Combine strings using the `+` operator.

```
  let combinedString = 'Hello, ' + 'World!';
```

### String interpolation
Embed expressions within a string using template literals.

```
  let name = 'Jane';
  let message = `Hello, ${name}!`;
``` 

## String methods
JavaScript provides many built-in string methods to manipulate and work with strings. Here is a list of commonly used string methods:

•	`charAt(index)`: Returns the character at the specified index.
•	`charCodeAt(index)`: Returns the Unicode value of the character at the specified index.
•	`concat(str1, str2, ...)`: Concatenates two or more strings and returns the resulting string.
•	`endsWith(searchString, length)`: Determines if a string ends with the characters of the specified searchString.
•	`includes(searchString, startPosition)`: Determines if a string contains the specified searchString.
•	`indexOf(searchString, startPosition)`: Returns the index of the first occurrence of the specified searchString or -1 if not found.
•	`lastIndexOf(searchString, startPosition)`: Returns the index of the last occurrence of the specified searchString or -1 if not found.
•	`match(regExp)`: Searches for a match between a regular expression and a string, and returns the matches.
•	`matchAll(regExp)`: Returns an iterator of all results matching a regular expression in a string.
•	`normalize(form)`: Returns the Unicode Normalization Form of the string.
•	`padEnd(targetLength, padString)`: Pads the end of the string with the specified padString to reach the targetLength.
•	`padStart(targetLength, padString`): Pads the start of the string with the specified padString to reach the targetLength.
•	`repeat(count)`: Repeats the string a specified number of times.
•	`replace(searchValue, newValue)`: Searches for a specified searchValue and replaces it with a newValue.
•	`replaceAll(searchValue, newValue)`: Searches for all occurrences of a specified searchValue and replaces them with a newValue.
•	`search(regExp)`: Searches for a match between a regular expression and a string, and returns the index of the match or -1 if not found.
•	`slice(startIndex, endIndex)`: Extracts a section of the string and returns it as a new string.
•	`split(separator, limit)`: Splits a string into an array of substrings using a specified separator.
•	`startsWith(searchString, position)`: Determines if a string starts with the characters of the specified searchString.
•	`substr(startIndex, length)`: Returns a part of the string from the specified startIndex with the specified length.
•	`substring(startIndex, endIndex`): Returns a part of the string between the specified startIndex and endIndex.
•	`toLocaleLowerCase()`: Returns the string in lowercase using the host's current locale.
•	`toLocaleUpperCase()`: Returns the string in uppercase using the host's current locale.
•	`toLowerCase()`: Returns the string in lowercase.
• `toUpperCase()`: Returns the string in uppercase.
•	`trim()`: Removes whitespace from both ends of a string.
•	`trimStart()`: Removes whitespace from the beginning of a string.
•	`trimEnd()`: Removes whitespace from the end of a string.
•	`valueOf()`: Returns the primitive value of a string object.

These string methods can help you perform various operations on strings, such as searching, replacing, modifying case, splitting, and more. Keep in mind that strings in JavaScript are immutable; these methods return new strings and do not modify the original string.

```
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
Add an element to the end of an array using `push()`:

```
  let array = [1, 2, 3];
  array.push(4); // array becomes [1, 2, 3, 4]
```

### pop
Remove the last element from an array using `pop()`:

```
  let array = [1, 2, 3];
  array.pop(); // array becomes [1, 2]
```

### unshift
Add an element to the beginning of an array using `unshift()`:

```
  let array = [1, 2, 3];
  array.unshift(0); // array becomes [0, 1, 2, 3]
```

### shift
Remove the first element from an array using `shift()`:

```
  let array = [1, 2, 3];
  array.shift(); // array becomes [2, 3]
```

### forEach
Iterate through the elements of an array using a `for` loop or the `forEach()` method:

```
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

To handle errors in JavaScript, you can use the `try...catch` statement:

```
try {
    // Code that might throw an error
} catch (error) {
    // Code to handle the error
}
```

For example, if you want to handle an error when parsing JSON data:

```
let jsonData = '{ "name": "Workflows"';

try {
    let obj = JSON.parse(jsonData);
    console.log(obj.name); // 'Workflows'
} catch (error) {
    console.error('An error occurred:', error.message); // 'An error occurred: Unexpected end of JSON input'
}
```

This JavaScript primer should help you get started with using JavaScript in your Elsa Workflows application. As you continue to develop your application, you can explore more advanced concepts and techniques, as well as integrate external libraries and APIs to further enhance its capabilities.

