---
title: Plugin Development
layout: default
parent: Plugins
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



## To create a library:

## Create the Csharp Project
1. A Library is a standard dotnet 7.0 Class Library.
2. Amend the .csproj file as follows:
   1. In the Top propertyGroup, add the following:
   ```<EnableDynamicLoading>true</EnableDynamicLoading>```
   2. Add a reference to ```Elsa.Core``` (Current Version 2.9.1 at time of writing) and add a reference to ```HubOneWorkflows.Plugins```.

   A standard .csproj file will look like this:

```xml
<Project Sdk="Microsoft.NET.Sdk">

  <PropertyGroup>
    <TargetFramework>net7.0</TargetFramework>
    <ImplicitUsings>enable</ImplicitUsings>
    <Nullable>enable</Nullable>
    <EnableDynamicLoading>true</EnableDynamicLoading>
  </PropertyGroup>

  <ItemGroup>
    <PackageReference Include="Elsa.Core" Version="2.9.1">
      <Private>false</Private>
      <ExcludeAssets>runtime</ExcludeAssets>
    </PackageReference>
    <PackageReference Include="Microsoft.Graph" Version="4.47.0" />
  </ItemGroup>

  <ItemGroup>
    <ProjectReference Include="..\HubOneWorkflows.Plugins\HubOneWorkflows.Plugins.csproj">
      <Private>false</Private>
      <ExcludeAssets>runtime</ExcludeAssets>
    </ProjectReference>
  </ItemGroup>

</Project>
```

Note the ```<Private>false</Private>``` and ```<ExcludeAssets>runtime</ExcludeAssets>``` in any library that may be shared with World of Workflows. This is to ensure the plugin does not clobber the existing libraries.

## Add ConfigCommand Class
Next, add a ConfigCommand Class as follows:

```csharp
public class ConfigCommand :ICommand
{
	public string Name { get => "Office 365 Activity Library"; }
	public string Description { get => "Activities for working with Microsoft Office 365"; }

	public Assembly thisAssembly {get => Assembly.GetExecutingAssembly(); }

	public Elsa.Options.ElsaOptionsBuilder AddActivities(Elsa.Options.ElsaOptionsBuilder builder)
	{
		builder.AddActivity<UserCreate>();
		return builder;
	}
}
```

Note here we add our name, description and a reference to this assembly and the Elsa Options to add any activities that are required.

## Write Activities
Next, add your activities as normal.

## Publish
Publish the Library using the following dotnet command

```cmd
dotnet publish -c Release
```

## Sign
You will need to code sign the Primary assembly of the plugin. To do this you will need a provided code signing key from World of Workflows. To sign the Primary Assembly, run the following command:

```cmd
HubOneWorkflows.CodeSigner.exe -f {PRIMARY_DLL_PATH} -c {PFX_KEY_PATH} -p {PASSWORD}
```

Next Zip the entire publish folder to the name of the Primary Assembly. e.g. if your assembly is called ```WorldOfWorkflows.Plugins.Office365.dll``` then the zip file should be called ```WorldOfWorkflows.Plugins.Office365.zip```

Using your copy of World of Workflows, enter Developer mode through settings and upload the Zip file. If all is correct, on reboot, the plugin will be available.
