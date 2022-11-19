# Release Notes
## Version 1.0.0

Welcome to the release notes for HubOne Workflows. This document contains information on late changes to the product as of the version above.

> Version 1.0.0 - Released 11 November 2022

## Features this Release
- **Multiplatform** - HubOne Workflows runs on Windows, Linux and Mac.
- **Tested** - This version includes over 400 automated tests
- **Multidatabase** - This version supports Microsoft SQL Server and SQLite.
- **User Interface** - Dotnet 7 Based Blazor WebAssembly Interface
- **API** - Full, standards based API
- **Tasks** - Advanced Task Management Platform
- **Data** - Dynamic Database based on customer needs and requirements
- **Workflows** - Advanced Workflow Engine

## Known Issues
- [1293](https://dev.azure.com/tribetechau/HubOne%20Workflows/_queries/edit/1293) - Name validation allows all characters unless if they're surrounded by '%' characters.
    **WORKAROUND**: Never use '%' characters to surround your names.
- [1513](https://dev.azure.com/tribetechau/HubOne%20Workflows/_queries/edit/1513) - DataInstance Page - When adding new data, the previous entry is still in the slide in
  **WORKAROUND**: When adding new data, delete the existing entries
- [1599](https://dev.azure.com/tribetechau/HubOne%20Workflows/_queries/edit/1599) - Remove SQL injection sites (eg: WhereString definitions and parameters)
  **WORKAROUND:** Don't allow end Users access to the UI in this version, use it as an admin UI for task and process automation only
- [1617](https://dev.azure.com/tribetechau/HubOne%20Workflows/_queries/edit/1617) - Add the workflow NAME (not just ID) and version number to Task details
  **WORKAROUND:** Lookup the workflow from the ID in the Workflows Tab.
- [1630](https://dev.azure.com/tribetechau/HubOne%20Workflows/_queries/edit/1630) - RollBackObjectAsync not implemented
  **WORKAROUND:** None. In this version you cannot roll back objects
- [1632](https://dev.azure.com/tribetechau/HubOne%20Workflows/_queries/edit/1632) - GetAllTasksAsync not working
- [1633](https://dev.azure.com/tribetechau/HubOne%20Workflows/_queries/edit/1633) - UpdateObjectDetailAsync desiredState Id does not exist
- [1634](https://dev.azure.com/tribetechau/HubOne%20Workflows/_queries/edit/1634) - UpdateTaskAsync not implemented
- [1635](https://dev.azure.com/tribetechau/HubOne%20Workflows/_queries/edit/1635) - ValidateEmailAsync Not Implemented
- [1636](https://dev.azure.com/tribetechau/HubOne%20Workflows/_queries/edit/1636) - VerifyColumnNameAsync Not Implemented
- [1637](https://dev.azure.com/tribetechau/HubOne%20Workflows/_queries/edit/1637) - GetAllViews, CreateView,  GetViewByType, UpdateView, DeleteView rename with Async at the end
- [1641](https://dev.azure.com/tribetechau/HubOne%20Workflows/_queries/edit/1641) - UpdateObjectTypeColumnAsync Null/Empty Name, Invalid ObjectTypeId
- [1645](https://dev.azure.com/tribetechau/HubOne%20Workflows/_queries/edit/1645) - PostUser(string requestingUser, Capability capability)
- [1888](https://dev.azure.com/tribetechau/HubOne%20Workflows/_queries/edit/1888) - CreateObjectTypeExAsync just checking if there should be any Invalid TitleFieldName or Description
- [1891](https://dev.azure.com/tribetechau/HubOne%20Workflows/_queries/edit/1891) - Removing FirstOrDefaultAsync change to SingleOrDefaultAsync
- [1892](https://dev.azure.com/tribetechau/HubOne%20Workflows/_queries/edit/1892) - Implement DeleteDatatypeAsync in the persistence layer
- [1893](https://dev.azure.com/tribetechau/HubOne%20Workflows/_queries/edit/1893) - Implement GetDataType in the persistence Layer
- [1894](https://dev.azure.com/tribetechau/HubOne%20Workflows/_queries/edit/1894) - Implement PutDataType in the persistence Layer
- [1895](https://dev.azure.com/tribetechau/HubOne%20Workflows/_queries/edit/1895) - Implement DataTypeExists in the persistence layer
- [1896](https://dev.azure.com/tribetechau/HubOne%20Workflows/_queries/edit/1896) - Implement GetObjectTypeColumns in the persistence layer
- [1898](https://dev.azure.com/tribetechau/HubOne%20Workflows/_queries/edit/1898) - Tuftmaster Workflows: Jotform Activity Failing on No Item Found with Exception
- [1903](https://dev.azure.com/tribetechau/HubOne%20Workflows/_queries/edit/1903) - UI Testing - Top Menu - Open menu in new tab, top menu doesn't show up, this occurs for any links
- [1905](https://dev.azure.com/tribetechau/HubOne%20Workflows/_queries/edit/1905) - UI Testing - Dashboard - Should Say messages not Data
- [1906](https://dev.azure.com/tribetechau/HubOne%20Workflows/_queries/edit/1906) - UI Testing -  Dashboard - Link Navigation
- [1913](https://dev.azure.com/tribetechau/HubOne%20Workflows/_queries/edit/1913) - UI Testing - Capabilities Page - Align Left, align right - Change to align centre please
- [1914](https://dev.azure.com/tribetechau/HubOne%20Workflows/_queries/edit/1914) - UI Testing - Bell Icon / Message Button - Shows Sign in/out
- [1916](https://dev.azure.com/tribetechau/HubOne%20Workflows/_queries/edit/1916) - UI Testing - Users Page - Invalid Name/Characters same email
- [1923](https://dev.azure.com/tribetechau/HubOne%20Workflows/_queries/edit/1923) - Controller Testing - Strings in CreatedAtAction
- [1924](https://dev.azure.com/tribetechau/HubOne%20Workflows/_queries/edit/1924) - Controller Testing - DataTypeController - PutDataType
- [1925](https://dev.azure.com/tribetechau/HubOne%20Workflows/_queries/edit/1925) - Controller Testing - DataTypesController - PutDataType InvalidCastException
- [1929](https://dev.azure.com/tribetechau/HubOne%20Workflows/_queries/edit/1929) - Controller Testing - GetInstancesWithTitleByType - No Invalid ObjectTypeId check
- [1930](https://dev.azure.com/tribetechau/HubOne%20Workflows/_queries/edit/1930) - Capabilities - AddCapability not using logged in user for authorizing
- [1931](https://dev.azure.com/tribetechau/HubOne%20Workflows/_queries/edit/1931) - Users - UpdateCapability using admin to authenticate
- [1937](https://dev.azure.com/tribetechau/HubOne%20Workflows/_queries/edit/1937) - UI Testing - Users Page - Delete User
- [1941](https://dev.azure.com/tribetechau/HubOne%20Workflows/_queries/edit/1941) - Low Priority - UI Testing - Home Page - Video not clickable
- [1942](https://dev.azure.com/tribetechau/HubOne%20Workflows/_queries/edit/1942) - Low Priority - UI Testing - Home Page - Sign up 
- [1943](https://dev.azure.com/tribetechau/HubOne%20Workflows/_queries/edit/1943) - Low Priority - UI Testing - Home Page - Privacy Policy invalid link
- [1946](https://dev.azure.com/tribetechau/HubOne%20Workflows/_queries/edit/1946) - Low Priority - Admin Page - No Blue bar when the menu is clicked
- [1947](https://dev.azure.com/tribetechau/HubOne%20Workflows/_queries/edit/1947) - UI Testing - Object Types Page - No error handling on invalid Object Type
- [1949](https://dev.azure.com/tribetechau/HubOne%20Workflows/_queries/edit/1949) - UI Testing - Users Page - Users have authorization to the workflows page
- [1950](https://dev.azure.com/tribetechau/HubOne%20Workflows/_queries/edit/1950) - UI Testing - Users Page - Editing a Users email creates a new user.
- [1951](https://dev.azure.com/tribetechau/HubOne%20Workflows/_queries/edit/1951) - UI Testing - Object Types page - Invalid Name no error handling
- [1957](https://dev.azure.com/tribetechau/HubOne%20Workflows/_queries/edit/1957) - UI Testing - Workflows/Tasks - Workflow doesn't create task
- [1958](https://dev.azure.com/tribetechau/HubOne%20Workflows/_queries/edit/1958) - UI Testing - Import Page - Not working
- [1959](https://dev.azure.com/tribetechau/HubOne%20Workflows/_queries/edit/1959) - UI Testing - Import Page - Choose Object Type
- [1965](https://dev.azure.com/tribetechau/HubOne%20Workflows/_queries/edit/1965) - Persistence Testing - UpdateObjectTypeColumnAsync - Updating index issue 
- [1966](https://dev.azure.com/tribetechau/HubOne%20Workflows/_queries/edit/1966) - Low Priority - GetTaskDetails rename to GetTaskDetailsAsync
- [1969](https://dev.azure.com/tribetechau/HubOne%20Workflows/_queries/edit/1969) - Low Priority - UI Testing - Object Type Page - When on editing a Object Type the Name should be in view only
- [1971](https://dev.azure.com/tribetechau/HubOne%20Workflows/_queries/edit/1971) - UI Testing - Capabilities Page - No error handling for Capability already exists
- [1972](https://dev.azure.com/tribetechau/HubOne%20Workflows/_queries/edit/1972) - UI Testing - Capabilities Page - No error handling for "Can't Delete Capability that has a user"
- [1973](https://dev.azure.com/tribetechau/HubOne%20Workflows/_queries/edit/1973) - UI Testing - Capabilities Page - Delete Button extends till edit
- [1974](https://dev.azure.com/tribetechau/HubOne%20Workflows/_queries/edit/1974) - Low Priority - UI/Persistence Testing - Add Capability - "      " is a valid capability
- [1975](https://dev.azure.com/tribetechau/HubOne%20Workflows/_queries/edit/1975) - Low Priority - UI Testing - Sign out button not toggling between pages
- [1976](https://dev.azure.com/tribetechau/HubOne%20Workflows/_queries/edit/1976) - Minor Spelling Mistake - Workflows Testing - Tasks get list
- [1977](https://dev.azure.com/tribetechau/HubOne%20Workflows/_queries/edit/1977) - UI Testing - Workflows/Tasks - Can't assign a user Tasks
- [1978](https://dev.azure.com/tribetechau/HubOne%20Workflows/_queries/edit/1978) - UI Testing - Workflows/Tasks - Need to remember capability Id to assigning a task to a capability
- [1979](https://dev.azure.com/tribetechau/HubOne%20Workflows/_queries/edit/1979) - Very Low Priority - Missing a space for Data Type
- [1980](https://dev.azure.com/tribetechau/HubOne%20Workflows/_queries/edit/1980) - UI Testing - Search Page - Search not working
- [1981](https://dev.azure.com/tribetechau/HubOne%20Workflows/_queries/edit/1981) - UI Testing - Tasks Page - My tasks not showing up
- [1982](https://dev.azure.com/tribetechau/HubOne%20Workflows/_queries/edit/1982) - UI Testing - All Tasks Page - All tasks not showing up
- [1983](https://dev.azure.com/tribetechau/HubOne%20Workflows/_queries/edit/1983) - UI Testing - Tasks - Reload button to update tasks list, it takes a while to update

 

