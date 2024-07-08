---
title: Plugins
layout: default
nav_order: 20
has_children: true
---

# Plugins in World of Workflows

Plugins are libraries of activities which can be dynamically added to World of Workflows.

These libraries must be digitally signed with the World of Workflows certificate, to ensure that malicious code does not get into customers hands, however library authors can create libraries and submit them for approval.


The following Plugins are available:

- [AzureAdmin](azureadmin.md) - This plugin provides tools for working with Azure
- [OpenAI](openai.md) - This plugin provides tools for working with OpenAI



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
