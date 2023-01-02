# Liquid

Liquid Expressions

Liquid is an open-source template language created by Shopify and written in Ruby. It is the backbone of Shopify themes and is used to load dynamic content on storefronts.

Liquid has been in production use at Shopify since 2006 and is now used by many other hosted web applications.

## Introduction

Liquid uses a combination of objects, tags, and filters inside template files to display dynamic content.

### Objects
Objects contain the content that Liquid displays on a page. Objects and variables are displayed when enclosed in double curly braces: ```{{``` and ```}}```.

#### Input

```{{ page.title }}```

#### Output

```Introduction```

In this case, Liquid is rendering the content of the title property of the page object, which contains the text Introduction.

### Tags
Tags create the logic and control flow for templates. The curly brace percentage delimiters ```{%``` and ```%}``` and the text that they surround do not produce any visible output when the template is rendered. This lets you assign variables and create conditions or loops without showing any of the Liquid logic on the page.

#### Input

```Liquid
{% if user %}
  Hello {{ user.name }}!
{% endif %}
```

Output

```Hello Adam!```

Tags can be categorized into various types:

- Control flow
- Iteration
- Template
- Variable assignment

You can read more about each type of tag in their respective sections.

Filters
Filters change the output of a Liquid object or variable. They are used within double curly braces {{ }} and variable assignment, and are separated by a pipe character |.

Input

{{ "/my/fancy/url" | append: ".html" }}
Output

/my/fancy/url.html
Multiple filters can be used on one output, and are applied from left to right.

Input

{{ "adam!" | capitalize | prepend: "Hello " }}
Output

Hello Adam!

Liquid Expressions
The following Liquid expressions are supported:

Common Variables
Workflow Variables
Use the following syntax to access a workflow variable:

{{ Variables.NameOfVariable }}
For example, given a workflow variable called FirstName with a value of "Alice", the expressionHello {{ Variables.FirstName }} will result in Hello Alice.

Input
Input values can be accessed using the following syntax:

{{ Input }}
Activity Output
To access a named activity's output, use the following syntax:

{{ Activities.SomeActivityName.Output }}
CorrelationId
Returns the correlation ID (if any) of the currently executing workflow.

{{ CorrelationId }}
WorkflowInstanceId
Returns the workflow instance ID of the currently executing workflow.

{{ WorkflowInstanceId }}
WorkflowDefinitionId
Returns the workflow definition ID of the currently executing workflow.

{{ WorkflowDefinitionId }}
WorkflowDefinitionVersion
Returns the workflow definition version of the currently executing workflow.

{{ WorkflowDefinitionVersion }}
Configuration
Provides access to a .NET configuration value.

{{ Configuration.SomeSection }}
As an example, let's say you have the following JSON in appsettings.json:

{
  "Elsa": {
    "Smtp": {
      "Host": "localhost",
      "Port": 2525
    }
  }
}
You can access the configured Port value using the following expression:

{{ Configuration.Elsa.Smtp.Port }}
Common Filters
json
A liquid filter that renders the specified value as a JSON string.

{{ Input | json }}
Example output:

{
  "SomeDocument": {
    "Title": "About Elsa Workflows"
  }
}
base64
A liquid filter that renders the specified value as a bas64 representation. The value is first converted to a string. If the value is an object, array, dictionary or datetime, it is first serialized using JsonConvert.SerializeObject before being encoded as base64.

{{ "Some string value" | base64 }}
Example output:

U29tZSBzdHJpbmcgdmFsdWU=
Workflow Filters
workflow_definition_id
Translates the specified workflow name or workflow tag into a workflow ID. This is useful for activities such as RunWorkflow which require a workflow ID to run.

Usage:

{{ "SomeWorkflowName" | workflow_definition_id }}
{{ "SomeWorkflowTag" | workflow_definition_id: tag }}
HTTP Variables
Request
Provides access to various properties on the current HTTP Request object:

{{ Request.QueryString }}
{{ Request.ContentType }}
{{ Request.ContentLength }}
{{ Request.Form }}
{{ Request.Protocol }}
{{ Request.Path }}
{{ Request.PathBase }}
{{ Request.Host }}
{{ Request.IsHttps }}
{{ Request.Scheme }}
{{ Request.Method }}
HTTP Filters
signal_url
A liquid filter that generates a fully-qualified absolute signal URL that will trigger the workflow instance from which this function is invoked.

Example:

{{ "MySignal" | signal_url }}
Example output:

https://localhost:5001/signals/trigger/{some base64 token}