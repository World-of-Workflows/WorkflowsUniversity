---
title: Javascript Primer
layout: default
nav_order: 1
parent: Javascript
grand_parent: Reference
---

# Javascript Primer

JavaScript is a programming language that is commonly used to add interactivity and other dynamic features to websites. It is a relatively simple language to learn, and can be written directly in HTML and CSS files, or in separate .js files that are linked to HTML files.

Here is a basic primer on how to write JavaScript:

## 1. Variables
In JavaScript, you can store data in variables. To create a variable, use the ```var```, ```let```, or ```const``` keyword, followed by the variable name, and an assignment operator (=) followed by the value you want to store. For example:

```js
let name = "John Doe";
const age = 30;
```

### 2. Data Types
JavaScript has several data types, including strings (text), numbers, booleans (true or false), and arrays (lists of data). Here are some examples of these data types:

```js

let name = "John Doe"; // string
let age = 30; // number
let isStudent = true; // boolean
let grades = [90, 80, 75]; // array
```

### 3. Operators

You can use operators to perform operations on variables, such as arithmetic and assignment. Here are a few examples:

```js
let x = 10;
let y = 5;
let sum = x + y; // 15
let difference = x - y; // 5
let product = x * y; // 50
let quotient = x / y; // 2
```

### 4. Conditional Statements
You can use conditional statements to control the flow of your code. The most common type of conditional statement is the if-else statement. Here is an example:

```js
let age = 25;

if (age > 18) {
  console.log("You are an adult");
} else {
  console.log("You are a minor");
}
```

### 5. Loops
You can use loops to repeat a block of code a certain number of times. The most common types of loops in JavaScript are for and while loops. Here is an example of a for loop:

```js
for (let i = 0; i < 10; i++) {
  console.log(i);
}
```

### 6. Functions
You can use functions to group a block of code that performs a specific task. Functions are defined using the function keyword, followed by the function name and a pair of parentheses. Here is an example:

```js
function sayHello() {
  console.log("Hello World!");
}

sayHello(); // Outputs "Hello World!"
```

### 7. Event listeners
JavaScript can be used to create interactive websites. One way to do this is by using event listeners to listen for events, such as a button click, and run a function when the event occurs.

```js
let button = document.querySelector("#myButton");
button.addEventListener("click", function() {
  console.log("Button was clicked!");
});
```

This is a basic primer on how to write JavaScript. There are many more concepts and features to learn, but these should give you a good starting point.