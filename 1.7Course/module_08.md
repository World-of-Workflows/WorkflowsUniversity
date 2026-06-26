# 8. Using JavaScript and Liquid in Workflows

Incorporating JavaScript and Liquid into your workflows enhances their flexibility and functionality. These scripting languages allow for dynamic data manipulation, conditional logic, and template rendering within the World of Workflows platform.

## 8.1 JavaScript in Workflows

JavaScript is a versatile scripting language that enables complex data processing and logic implementation within workflows.

### 8.1.1 Defining Variables

Variables in JavaScript are used to store data values. You can declare variables using the `let` or `const` keywords.

```javascript
let variableName = 'World of Workflows';
const constantVariable = 42;
```

Use `let` for variables that may change and `const` for constants.

### 8.1.2 Control Structures**

Control structures manage the flow of execution in your scripts.

- **If Statement:**

  ```javascript
  if (condition) {
    // Code to execute if condition is true
  }
  ```

- **If-Else Statement:**

  ```javascript
  if (condition) {
    // Code to execute if condition is true
  } else {
    // Code to execute if condition is false
  }
  ```

- **For Loop:**

  ```javascript
  for (let i = 0; i < count; i++) {
    // Code to execute in each iteration
  }
  ```

These structures allow for conditional execution and iteration within your workflows.

### 8.1.3 Functions**

Functions are reusable blocks of code that perform specific tasks.

```javascript
function functionName(parameter1, parameter2) {
  // Code to execute
}
```

Call a function using its name followed by arguments:

```javascript
functionName(argument1, argument2);
```

Functions help modularise your code and promote reusability.

### 8.1.4 Accessing Workflow Variables

In World of Workflows, you can access workflow variables directly in JavaScript expressions. For example, if a variable named `FirstName` is set, you can access it as follows:

```javascript
return `Hello ${FirstName}`;
```

Alternatively, use the `getVariable` function:

```javascript
return 'Hello ' + getVariable('FirstName');
```

This flexibility allows for dynamic data manipulation within your workflows. citeturn0search0

## 8.2 Liquid in Workflows

Liquid is a templating language that enables dynamic content rendering. It's particularly useful for generating text-based content with embedded variables and logic.

### 8.2.1 Objects

Objects contain the content that Liquid displays. They are enclosed in double curly braces: `{{` and `}}`.

```liquid
{{ page.title }}
```

This renders the value of `page.title`. 

### 8.2.2 Tags

Tags create logic and control flow in templates. They are enclosed in `{%` and `%}`.

- **If Tag:**

  ```liquid
  {% if user %}
    Hello {{ user.name }}!
  {% endif %}
  ```

Tags allow for conditional rendering and loops within your templates.

### 8.2.3 Filters

Filters modify the output of Liquid objects. They are used within `{{ }}` and are separated by a pipe `|`.

```liquid
{{ "hello" | capitalize }}
```

This outputs "Hello". citeturn0search4

### 8.2.4 Combining JavaScript and Liquid**

You can combine JavaScript and Liquid to enhance your workflows. For example, to iterate through a list of items retrieved by an `ObjectInstanceList` activity:

```html
<script>
  const jobItemsData = [
    {% for item in Activities.GetJobItems.ExpandedOutput %}
      { "objectId": {{ item.ObjectId }}, "title": "{{ item.Title }}", "jobId": {{ item.Job.ObjectId }} },
    {% endfor %}
  ];
</script>
```

This script creates a JavaScript array populated with data from the workflow, allowing for dynamic manipulation on the client side. citeturn0search1

By effectively utilising JavaScript and Liquid within your workflows, you can create dynamic, data-driven processes that adapt to various business needs. 