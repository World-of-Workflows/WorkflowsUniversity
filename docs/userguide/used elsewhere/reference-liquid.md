---
title: Liquid
layout: default
parent: Reference
grand_parent: User Guide
nav_order: 4
---

{% raw %}
# Liquid in World of Workflows

Liquid is an open-source template language created by Shopify and written in Ruby. It is the backbone of Shopify themes and is used to load dynamic content on storefronts.

Liquid has been in production use at Shopify since 2006 and is now used by many other hosted web applications.

The following sections contain information about the Liquid template language.

## Introduction

Liquid uses a combination of objects, tags, and filters inside template files to display dynamic content.

### Objects

Objects contain the content that Liquid displays on a page. Objects and variables are displayed when enclosed in double curly braces: {{ and }}.

#### Input

```liquid
{{ page.title }}
```

#### Output

```liquid
Introduction
```

In this case, Liquid is rendering the content of the title property of the page object, which contains the text Introduction.

### Tags

Tags create the logic and control flow for templates. The curly brace percentage delimiters ```{``` and ```}``` and the text that they surround do not produce any visible output when the template is rendered. This lets you assign variables and create conditions or loops without showing any of the Liquid logic on the page.

#### Input

```liquid
{% if user %}
Hello {{ user.name }}!
{% endif %}
```

#### Output

```liquid
Hello Adam!
```

Tags can be categorized into various types:

- Control flow

- Iteration

- Template

- Variable assignment

You can read more about each type of tag in their respective sections.

## Filters

Filters change the output of a Liquid object or variable. They are used within double curly braces {{ }} and variable assignment, and are separated by a pipe character |.

#### Input

```liquid
{{ "/my/fancy/url" | append: ".html" }}
```

#### Output

```liquid
/my/fancy/url.html
```

Multiple filters can be used on one output, and are applied from left to right.

#### Input

```liquid
{{ "adam!" | capitalize | prepend: "Hello " }}
```

#### Output

```liquid
Hello Adam!
```

##  Operators

Liquid includes many logical and comparison operators. You can use operators to create logic with control flow tags.

Basic operators

| Operator | Description              |
|----------|--------------------------|
| ==       | equals                   |
| !=       | does not equal           |
| \>       | greater than             |
| \<       | less than                |
| \>=      | greater than or equal to |
| \<=      | less than or equal to    |
| or       | logical or               |
| and      | logical and              |

For example:

```liquid
{% if product.title == "Awesome Shoes" %}
These shoes are awesome!
{% endif %}
```

You can do multiple comparisons in a tag using the *and* & *or* operators:

```liquid
{% if product.type == "Shirt" or product.type == "Shoes" %}
This is a shirt or a pair of shoes.
{% endif %}
```

##### contains

contains checks for the presence of a substring inside a string.

```liquid
{% if product.title contains "Pack" %}
This product's title contains the word Pack.
{% endif %}
```

contains can also check for the presence of a string in an array of strings.

```liquid
{% if product.tags contains "Hello" %}
This product has been tagged with "Hello".
{% endif %}
```

contains can only search strings. You cannot use it to check for an object in an array of objects.

#### Order of operations

In tags with more than one *and* or *or* operator, operators are checked in order from right to left. You cannot change the order of operations using parentheses — parentheses are invalid characters in Liquid and will prevent your tags from working.

```liquid
{% if true or false and false %}
This evaluates to true, since the 'and' condition is checked first.
{% endif %}
```

```liquid
{% if true and false and false or true %}
This evaluates to false, since the tags are checked like this:
true and (false and (false or true))
true and (false and true)
true and false
false
{% endif %}
```

## Truthy and falsy

When a non-boolean data type is used in a boolean context (such as a conditional tag), Liquid decides whether to evaluate it as true or false. Data types that return true by default are called truthy. Data types that return false by default are called falsy.

### Truthy

All values in Liquid are truthy except nil and false.

In the example below, the text “Tobi” is not a boolean, but it is truthy in a conditional:

```liquid
{% assign name = "Tobi" %}
{% if name %}
This text will always appear since "name" is defined.
{% endif %}
```


Strings, even when empty, are truthy. The example below will create empty HTML tags if page.category exists but is empty:

#### Input

```liquid
{% if page.category %}
<h1>{{ page.category }}</h1>
{% endif %}
```

#### Output

```html
<h1></h1>
```

### Falsy

The only values that are falsy in Liquid are nil and false.

### Summary

The table below summarizes what is truthy or falsy in Liquid.

|              | truthy | falsy |
|--------------|:------:|:-----:|
| true         | •      |       |
| false        |        | •     |
| nil          |        | •     |
| string       | •      |       |
| empty string | •      |       |
| 0            | •      |       |
| integer      | •      |       |
| float        | •      |       |
| array        | •      |       |
| empty array  | •      |       |
| page         | •      |       |
| EmptyDrop    | •      |       |

## Types

Liquid objects can be one of six types:

- String
- Number
- Boolean
- Nil
- Array
- EmptyDrop

You can initialize Liquid variables using assign or capture tags.

### String

Strings are sequences of characters wrapped in single or double quotes:

```liquid
{% assign my_string = "Hello World!" %}
```

Liquid does not convert escape sequences into special characters.

### Number

Numbers include floats and integers:

```liquid
{% assign my_int = 25 %}
```

```liquid
{% assign my_float = -39.756 %}
```


### Boolean

Booleans are either true or false. No quotations are necessary when declaring a boolean:

```liquid
{% assign foo = true %}
```

```liquid
{% assign bar = false %}
```

#### Nil

*Nil* is a special empty value that is returned when Liquid code has no results. It is **not** a string with the characters “nil”.

*Nil* is treated as false in the conditions of *if* blocks and other Liquid tags that check the truthfulness of a statement.

In the following example, if the user does not exist (that is, user returns nil), Liquid will not print the greeting:

```liquid
{% if user %}
Hello {{ user.name }}!
{% endif %}
```

Tags or outputs that return *nil* will not print anything to the page.

#### Input

```liquid
The current user is {{ user.name }}
```

#### Output

```liquid
The current user is
```

### Array

Arrays hold lists of variables of any type.

#### Accessing items in arrays

To access all the items in an array, you can loop through each item in the array using an iteration tag.

Input

```liquid
<!-- if site.users = "Tobi", "Laura", "Tetsuro", "Adam" -->
{% for user in site.users %}
{{ user }}
{% endfor %}
```

Output

```liquid
Tobi Laura Tetsuro Adam
```

#### Accessing specific items in arrays

You can use square bracket **<span class="smallcaps">[ ]</span>** notation to access a specific item in an array. Array indexing starts at zero. A negative index will count from the end of the array.

#### Input

```liquid
<!-- if site.users = "Tobi", "Laura", "Tetsuro", "Adam" -->
{{ site.users\[0\] }}
{{ site.users\[1\] }}
{{ site.users\[-1\] }}
```

#### Output

```liquid
Tobi
Laura
Adam
```

### Initializing arays

You cannot initialize arrays using only Liquid.

You can, however, use the split filter to break a string into an array of substrings.

### EmptyDrop

An EmptyDrop object is returned if you try to access a deleted object. In the example below, page_1, page_2 and page_3 are all EmptyDrop objects:

```liquid
{% assign variable = "hello" %}
{% assign page_1 = pages[variable] %}
{% assign page_2 = pages["does-not-exist"] %}
{% assign page_3 = pages.this-handle-does-not-exist %}
```

#### Checking for emptiness

You can check to see if an object exists or not before you access any of its attributes.

```liquid
{% unless pages == empty %}
<h1>{{ pages.frontpage.title }}</h1>
<div>{{ pages.frontpage.content }}</div>
{% endunless %}
```

Both empty strings and empty arrays will return *true* if checked for equivalence with *empty*.

## Liquid Expressions

The following Liquid expressions are supported:

### Common Variables

#### Workflow Variables

Use the following syntax to access a workflow variable:

```liquid
{{ Variables.*NameOfVariable* }}
```

For example, given a workflow variable called **<span class="smallcaps">FirstName</span>** with a value of “Alice”, the expression

```liquid
Hello {{ Variables.FirstName }}.
```

will result in

```liquid
Hello Alice.
```

#### Input

Input values can be accessed using the following syntax:

```liquid
{{ Input }}
```

#### Activity Output

To access a named activity’s output, use the following syntax:

```liquid
{{ Activities.*SomeActivityName*.Output }}
```

#### CorrelationId

Returns the correlation ID (if any) of the currently executing workflow.

```liquid
{{ CorrelationId }}
```

#### WorkflowInstanceId

Returns the workflow instance ID of the currently executing workflow.

```liquid
{{ WorkflowInstanceId }}
```

#### WorkflowDefinitionId

Returns the workflow definition ID of the currently executing workflow.

```liquid
{{ WorkflowDefinitionId }}
```

#### WorkflowDefinitionVersion

Returns the workflow definition version of the currently executing workflow.

```liquid
{{ WorkflowDefinitionVersion }}
```

### Configuration

Provides access to a .NET configuration value. See Configuration for more details on available configuration items in World of Workflows.

```liquid
{{ Configuration.*SomeSection* }}
```

As an example, let’s say you have the following JSON in appsettings.json:

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

```liquid
{{ Configuration.Elsa.Smtp.Port }}
```

### Common Filters

#### json

*json* is a liquid filter that renders the specified value as a JSON string.

```liquid
{{ Input \| json }}
```

Example output:

```json
{

    "SomeDocument": {

         "Title": "About Elsa Workflows"

         }
}
```

#### base64

A liquid filter that renders the specified value as a bas64 representation. The value is first converted to a string. If the value is an object, array, dictionary or datetime, it is first serialized using JsonConvert.SerializeObject before being encoded as base64.

```liquid
{{ "Some string value" \| base64 }}
```

Example output:

```liquid
U29tZSBzdHJpbmcgdmFsdWU=
```

## Workflow Filters

#### workflow_definition_id

*workflow_definition_id* translates the specified workflow name or workflow tag into a workflow ID. This is useful for activities such as **<span class="smallcaps">RunWorkflow</span>** which require a workflow ID to run.

Usage:

```liquid
{{ "SomeWorkflowName" | workflow_definition_id }}
```

```liquid
{{ "SomeWorkflowTag" | workflow_definition_id: tag }}
```

#### HTTP Variables

##### Request

*request* provides access to various properties on the current HTTP Request object:

```liquid
{{ Request.QueryString }}
```

```liquid
{{ Request.ContentType }}
```

```liquid
{{ Request.ContentLength }}
```

```liquid
{{ Request.Form }}
```

```liquid
{{ Request.Protocol }}
```

```liquid
{{ Request.Path }}
```

```liquid
{{ Request.PathBase }}
```

```liquid
{{ Request.Host }}
```

```liquid
{{ Request.IsHttps }}
```

```liquid
{{ Request.Scheme }}
```

```liquid
{{ Request.Method }}
```

#### HTTP Filters

##### signal_url

*signal_url* is a liquid filter that generates a fully-qualified absolute signal URL that will trigger the workflow instance from which this function is invoked.

Example:

```liquid
{{ "MySignal" \| signal_url }}
```

Example output:

```liquid
https://localhost:5001/signals/trigger/{some base64 token}
```

#### Markup

*markup* is a liquid filter which provides the text as full html rather and htmlencoded data

```liquid
{{“\<h1\>Hello\</h1\>” \| markup }}
```

{%endraw%}
