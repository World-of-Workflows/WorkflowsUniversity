---
title: Plugin Development
layout: default
parent: User Guide
nav_order: 11
---


# Developing Plugins for World of Workflows

World of Workflows features a plugin architecture that enables developers to extend the system's functionality by creating custom Elsa Activities. This chapter will provide an overview of the development process for creating plugins and how to implement custom activities.

## Plugin Development Overview

To create a plugin for World of Workflows, you need to develop a C# class library project that includes Elsa and references the HubOneWorkflows.Plugins namespace. This namespace contains the essential interfaces and classes for plugin development, such as ICommand, PluginLoadContext, and PluginOperations.

## Creating a Custom Activity

To create a custom Activity, you need to implement a new class that inherits from Elsa.Activity or one of its subclasses. This class should override the required methods to define the activity's behavior, inputs, and outputs.

For example, to create a custom activity that performs a specific calculation, you could implement a class like this:

```cs
using Elsa;
using Elsa.Attributes;
using Elsa.Expressions;
using Elsa.Results;
using Elsa.Services;
using Elsa.Services.Models;

[ActivityDefinition(Category = "Custom", Description = "Performs a custom calculation")]
public class CustomCalculationActivity : Activity
{
    [ActivityProperty(Hint = "Enter the first number")]
    public double Number1 { get; set; }

    [ActivityProperty(Hint = "Enter the second number")]
    public double Number2 { get; set; }

    protected override async Task<ActivityExecutionResult> OnExecuteAsync(WorkflowExecutionContext context, CancellationToken cancellationToken)
    {

        double result = PerformCustomCalculation(Number1, Number2);
        Output.SetVariable("Result", result);
        return Done();
    }

    private double PerformCustomCalculation(double number1, double number2)
    {
         // Perform the custom calculation logic here
    }
}
```

## Implementing the ConfigCommand Class

In your plugin project, you need to create a ConfigCommand class that implements the ICommand interface. This class should define the AddActivities method, which adds your custom Elsa Activities to the builder:

```cs
public class ConfigCommand : ICommand
{
    public Elsa.Options.ElsaOptionsBuilder AddActivities(Elsa.Options.ElsaOptionsBuilder builder)
    {
        builder
        .AddActivity<CreateArmClient>()
        .AddActivity<CreateResourceGroup>();
        return builder;
    }
}
```

## Code Signing and Importing the Plugin

Once you've developed your plugin, send the assembly to support@worldofworkflows.com for code signing. After the assembly has been signed, you can import the plugin into World of Workflows:

1.  Log in as an administrator.
2.  Go to **Admin** -> **Plugins**
3.  Navigate to the Plugins section.
4.  Import the signed plugin.

By developing custom plugins for World of Workflows, you can extend the platform's capabilities to better suit your organization's unique requirements. By creating custom Elsa Activities, you can integrate new functionality directly into your workflows, enabling greater flexibility and customization.
