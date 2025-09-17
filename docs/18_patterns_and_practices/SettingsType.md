---
title: The Settings Table
parent: Naming Conventions
grand_parent: Patterns & Practices
layout: default
nav_order: 2
has_children: false
---

# The Settings Table

Workflows should be written with portability in mind.  Do not hard-code values that can be set in a global 'Settings' value.

1. Create a Table called `Settings`.
2. Rename the `Title` field to `Key`
3. Add a string field called  `Value`
4. (optional) Add additional string field called `Data2`

Add data to your Settings:
![](../images/2024-08-06-13-37-16.png)

Add these two activities to your workflow to retrieve the Settings from the database into workflow variables of the same name:

- Object Instance List
![](../images/2024-08-06-13-33-44.png)
![](../images/2024-08-06-13-34-10.png)

- JavaScript
![](../images/2024-08-06-13-39-29.png)
    ```js
    function getSettingsAsVariables(settingsData) {
        for (let item of settingsData) {
            let variableName = item.Key;
            let value = item.Value;
            
            setVariable(variableName, value);
        }
    }

    const settingsData = activities.GetSettings.Output();
    getSettingsAsVariables(settingsData);

    ```

