---
title: Use in World of Workflows
layout: default
parent: Liquid Reference
grand_parent: Reference
nav_order: 6
---
{% raw %}
# Liquid Expressions

The following Liquid expressions are supported:

## Common Variables

### Workflow Variables
Use the following syntax to access a workflow variable:

```liquid
{{ Variables.NameOfVariable }}
```

For example, given a workflow variable called FirstName with a value of "Alice", the expression
```liquid
Hello {{ Variables.FirstName }}
``` 
will result in ```Hello Alice```

## Using JSON variables
If your workflow variable is a JSON object, use this syntax:

```liquid
{{ Variables.NameOfVariable | json | raw}}
```

For example:
You have an API that returns a list of companies in JSON.
You create an HTTP Request activity that calls the API, returning JSON.
You can use this JavaScript to create your variable Companies:
`activities.getCompanies.ResponseContent()`

In this case you will use this syntax in your HTTP Response to use the variable `Companies`:
```liquid
{{ Variables.Companies | json | raw}}
```




### Input
Input values can be accessed using the following syntax:

```liquid
{{ Input }}
```

### Activity Output
To access a named activity's output, use the following syntax:

```liquid
{{ Activities.SomeActivityName.Output }}
```

### CorrelationId
Returns the correlation ID (if any) of the currently executing workflow.

```liquid
{{ CorrelationId }}
```

### WorkflowInstanceId
Returns the workflow instance ID of the currently executing workflow.

```liquid
{{ WorkflowInstanceId }}
```

### WorkflowDefinitionId
Returns the workflow definition ID of the currently executing workflow.

```liquid
{{ WorkflowDefinitionId }}
```

### WorkflowDefinitionVersion
Returns the workflow definition version of the currently executing workflow.

```liquid
{{ WorkflowDefinitionVersion }}
```

### Configuration
Provides access to a .NET configuration value. See [Configuration](../../configuration-file.md) for more details on available configuration items in World of Workflows.

```liquid
{{ Configuration.SomeSection }}
```

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

```liquid
{{ Configuration.Elsa.Smtp.Port }}
```

## Common Filters

### json


A liquid filter that renders the specified value as a JSON string.

```liquid
{{ Input | json }}
```

Example output:

```json
{
  "SomeDocument": {
    "Title": "About Elsa Workflows"
  }
}
```

### base64
A liquid filter that renders the specified value as a bas64 representation. The value is first converted to a string. If the value is an object, array, dictionary or datetime, it is first serialized using JsonConvert.SerializeObject before being encoded as base64.

```liquid
{{ "Some string value" | base64 }}
```

Example output:

```
U29tZSBzdHJpbmcgdmFsdWU=
```

## Workflow Filters

### workflow_definition_id

Translates the specified workflow name or workflow tag into a workflow ID. This is useful for activities such as RunWorkflow which require a workflow ID to run.

Usage:

```liquid
{{ "SomeWorkflowName" | workflow_definition_id }}
```

```liquid
{{ "SomeWorkflowTag" | workflow_definition_id: tag }}
```

## HTTP Variables

### Request
Provides access to various properties on the current HTTP Request object:

```{{ Request.QueryString }}```
```{{ Request.ContentType }}```
```{{ Request.ContentLength }}```
```{{ Request.Form }}```
```{{ Request.Protocol }}```
```{{ Request.Path }}```
```{{ Request.PathBase }}```
```{{ Request.Host }}```
```{{ Request.IsHttps }}```
```{{ Request.Scheme }}```
```{{ Request.Method }}```

## HTTP Filters

### signal_url

A liquid filter that generates a fully-qualified absolute signal URL that will trigger the workflow instance from which this function is invoked.

Example:

```{{ "MySignal" | signal_url }}```

Example output:

```https://localhost:5001/signals/trigger/{some base64 token}```

[Previous](types.html) | [Home](README.html) | [Next](whitespace-control.html)

{% endraw %}