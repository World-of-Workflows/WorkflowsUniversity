---
title: Liquid Primer
parent: Javascript and Liquid in Workflows
layout: default
nav_order: 1
has_children: false
---

# Liquid Primer

The following Liquid expressions are supported in World of Workflows:

## Common Variables

### Workflow Variables

Use the following syntax to access a workflow variable:
```liquid
{%raw%}
{{ Variables.NameOfVariable }}
{%endraw%}
```

For example, given a workflow variable called FIRSTNAME with a value of “Alice”, the expression

```liquid
{%raw%}
Hello {{ Variables.FirstName }}.
{%endraw%}
```
will result in 
`Hello Alice,`

### Input
Input values can be accessed using the following syntax:
```liquid
{%raw%}
{{ Input }}
{%endraw%}
```

### Activity Output
To access a named activity’s output, use the following syntax:

```liquid
{%raw%}
{{ Activities.SomeActivityName.Output }}
{%endraw%}
```

### CorrelationId
Returns the correlation ID (if any) of the currently executing workflow.
```liquid
{%raw%}
{{ CorrelationId }}
{%endraw%}
```

### WorkflowInstanceId
Returns the workflow instance ID of the currently executing workflow.
```liquid
{%raw%}
{{ WorkflowInstanceId }}
{%endraw%}
```

### WorkflowDefinitionId
Returns the workflow definition ID of the currently executing workflow.
```liquid
{%raw%}
{{ WorkflowDefinitionId }}
{%endraw%}
```

### WorkflowDefinitionVersion
Returns the workflow definition version of the currently executing workflow.
```liquid
{%raw%}
{{ WorkflowDefinitionVersion }}
{%endraw%}
```

### Configuration
Provides access to a .NET configuration value. See Configuration for more details on available configuration items in World of Workflows.
```liquid
{%raw%}
{{ Configuration.SomeSection }}
{%endraw%}
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
{%raw%}
{{ Configuration.Elsa.Smtp.Port }}
{%endraw%}
```

## Common Filters

### | json
json is a liquid filter that renders the specified value as a JSON string.

```liquid
{%raw%}
{{ Input | json }}
{%endraw%}
```

Example output:

```json 
{
  "SomeDocument": {
    "Title": "About Elsa Workflows"
  }
}
```  

### | base64
A liquid filter that renders the specified value as a bas64 representation. The value is first converted to a string. If the value is an object, array, dictionary or datetime, it is first serialized using JsonConvert.SerializeObject before being encoded as base64.

```liquid
{%raw%}
{{ "Some string value" | base64 }}
{%endraw%}
```

Example output:  
`U29tZSBzdHJpbmcgdmFsdWU=`


 
## Workflow Filters

### | workflow_definition_id

workflow_definition_id translates the specified workflow name or workflow tag into a workflow ID. This is useful for activities such as RUNWORKFLOW which require a workflow ID to run.

Usage:

```liquid  
{%raw%}
{{ "SomeWorkflowName" | workflow_definition_id }}
{%endraw%}
```

```liquid
{%raw%}
{{ "SomeWorkflowTag" | workflow_definition_id: tag }}
{%endraw%}
```

## HTTP Variables

### | request
request provides access to various properties on the current HTTP Request object:

```liquid
{%raw%}
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
{%endraw%}
```

## HTTP Filters

### | signal_url
signal_url is a liquid filter that generates a fully-qualified absolute signal URL that will trigger the workflow instance from which this function is invoked.

Example:
```liquid
{%raw%}
{{ "MySignal" | signal_url }}
{%endraw%}
```
Example output:
`
https://localhost:5001/signals/trigger/{some base64 token}
`

### | markup
markup is a liquid filter which provides the text as full html rather and htmlencoded data

```liquid
{%raw%}
{{“<h1>Hello</h1>” | markup }}
{%endraw%}
```
Example output:
```
# Hello
```