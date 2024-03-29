# Release Notes
## Version 1.4.17

Welcome to the release notes for HubOne Workflows PE. This document contains information on late changes to the product as of the version above.

> Version 1.4.17 Released 6 April 2023

## Breaking Changes
Removes DesiredStateId from History and Current object states.
Removed the following registered activities:
| Name | Display Name | Notes |
| -- | -- | -- |
| EntityCreated | Wait for Created Object | Did not work |
| ObjectCreateSetPromoteToVariable | Quick Object Insert | Replaced with ObjectInstanceCreate/"Create Object Instance". |
| ObjectDetailCreate | Object Detail Create | Desired states are no longer supported. |
| ObjectDetailCreateandPromote | Object Detail Insert | Replaced with ObjectInstanceUpdate/"Update Object Instance"
| ObjectDetailGet | Object Detail Read | Replaced with ObjectInstanceGet/"Get Object Instance" for current states and ObjectInstanceHistoryList`/"List Object Instance History" for history states. Desired states are no longer supported.
| ObjectDetailList | Objects Detail List | Replaced with ObjectInstanceList/"List Object Instances" for current states and ObjectInstanceHistoryList/"List Object Instance History" for history states. Desired states are no longer supported.
| ObjectDetailPromote | Object Detail Promote | Desired states are no longer supported.
| ObjectDetailToVariable | Object Detail Read to Variable | Replaced with ObjectInstanceGet/"Get Object Instance" for current states and ObjectInstanceHistoryList`/"List Object Instance History" for history states. Desired states are no longer supported.

1. Outputs of various activities have been changed from dictionaries or unspecified objects to specific types.
2. Tracked entities are removed from activity outputs.
3. Replace type selection in activities to a single input that can accept either a name or an ID and uses a drop-down list populated with all of the current types by default.
4. ObjectInstanceTrigger is excluded from this change and only supports object IDs.
5. Replace ColumnsReadByType with TypeGetColumns
6. Replace ColumnCreate with TypeAddColumn
7. Replace ObjectTypeId with ObjectType
8. ObjectDetailInsert is replaced by ObjectInstanceUpdate
9. Replace TypesRead with DataTypesRead. Note: TypesRead is still in the list of activities, but seems to break the workflow
10. for ObjectInstanceGet - replace ObjectId property to InstanceId
11. in the JSON of the workflow, you can confidently replace "name":"ObjectId" with "name":"InstanceId"
12. ObjectDetailReadToVariable has been replaced by ObjectInstanceGet



## Known Issues


## Items resolved this release
### 1.2
- #1296 - AddColumnAsync parameter dataTypeId is nullable
- #1544 - Change MyTasks Page to have Tabs to make nav easier.
- #1605 - Bug fix and enable add/remove foreign keys in UpdateObjectTypeColumnAsync
- #1620 - Test CreateObjectDetailAsync (Invalid Data Type Match)
- #1627 - RemoveColumnAsync doesn't correctly check column name and objectId
- #1629 - RenameTypeAsync --> RenameObjectTypeAsync
- #1630 - RollBackObjectAsync not implemented
- #1636 - VerifyColumnNameAsync Not Implemented
- #1637 - GetAllViews, CreateView,  GetViewByType, UpdateView, DeleteView rename with Async at the end
- #1645 - PostUser(string requestingUser, Capability capability)
- #1892 - Implement DeleteDatatypeAsync in the persistence layer
- #1903 - UI Testing - Top Menu - Open menu in new tab, top menu doesn't show up, this occurs for any links
- #1913 - UI Testing - Capabilities Page - Align Left, align right - Change to align centre please
- #1937 - UI Testing - Users Page - Delete User
- #1941 - Low Priority - UI Testing - Home Page - Video not clickable
- #1947 - UI Testing - Object Types Page - No error handling on invalid Object Type
- #1966 - Low Priority - GetTaskDetails rename to GetTaskDetailsAsync
- #1969 - Low Priority - UI Testing - Object Type Page - Make box grey or remove text input
- #1970 - UI Testing - Back button
- #1971 - UI Testing - Capabilities Page - No error handling for Capability already exists
- #1972 - UI Testing - Capabilities Page - Using wrong method "Can't Delete Capability that has a user"
- #1991 - UI Display - Punctuation in Object type title
- #1993 - Cannot edit object name
- #1994 - Add Type does not work after editing type
- #1995 - Add Column - big integer display issue
- #2006 - Add Column has no field focus on entry
- #2008 - Window titles always shows 'HubOneWorkflows', not the purpose of the Window
- #2011 - add Item fails if 'title' not entered
- #2015 - Data page - merely adding an 's' to the object name produces poor results
- #2021 - ObjectgetListWithQuery  - reword the prompts
- #2025 - Creating data items immediately after creating the object type fails
- #2027 - BigInt does not display in the Data viewer/editor - just it's object id number
- #2028 - Available tasks does not refresh
- #2029 - Completing a task does not display the next task
- #2041 - ObjectInstancesController - PostObjectInstance using hard coded admin
- #2044 - SQLite Persistence model - CreateObjectTypeAsync - No auto increment on DS / HS table
- #2060 - TaskAskSimpleQuestionAndWait: missing Error and Timeout branches
- #2066 - UI testing add capability to user, maybe use FluentTextField thats disabled instead of area
- #2067 - DataDashboard - "Title" hard coded in Create/Edit ObjectType
- #2069 - Extremely petty bug, admin page, some of the boxes are rounded in the center, some aren't
- #2077 - TaskAskSimpleQuestionAndWait Error and timeout branches not working (still)
- #2081 - Views need to respect the field order
- #2082 - Add Instance button on View does not work
- #2083 - DataInstances - Cannot create new data instance when object type includes foreign keys
- #2087 - Workflows Navigation Bar, version should be smaller and underneath logo, could probably only say the version number
- #2091 - User button, needs a boarder or shadow around sign in div
- #2094 - Core details, after login I need to switch between tasks and home page to load correct numbers
- #2095 - Reloading or on login, the buttons to edit the core details aren't there, need to switch between tasks and back to load
- #2100 - Workflows dashboard missing space for something
- #2102 - Workflows Navigation Bar, Admin bar is skinnier than other ones
- #2104 - Workflows Tasks page, tasks should be uppercase
- #2105 - Workflows tasks page, changed "-"  to " | ", it looks squished
- #2120 - Dashboard, Data icon should be the same as on admin page
- #2123 - Users Icon and capabilities Icon is the same
- #2124 - Admin Page, workflows is a file cabinet icon
- #2128 - Capability Page, Capabilitys should have a name and a description
- #2143 - Types Page, disable diagram button, (make it grey)
- #2145 - Types Page, Error Popup should appear when inputting an invalid name
- #2147 - Types page, adding a very long description, result in longer scroll
- #2151 - Homepage, odd placement of login button when screen is reduced in size
- #2152 - Home Page, no margin when window size is decreased
- #2153 - Home Page, Navmenu looks off when descreasing window size
- #2154 - Home Page, Tasks link appears when decreasing window screen and pressing burger
- #2155 - Home Page, sign out appears when decreasing window screen and pressing burger
- #2184 - Admin Page - Sign out button doesn't work
- #2192 - Activities, is there an option to make required fields, such as the name
- #2193 - Activities, is there a way to allert the user of an invalid name
- #2194 - Is it possible, for when a user hits publish for there to be a check if each name is valid
- #2202 - Elsa bug, add variable scaling. I.e the more activities you have the further out you can scroll
- #2203 - Elsa issue, navigate to start, would like a way to easily find beggining of workflow, especially if zoomed out comically far
- #2214 - Add Type, x button doesn't work
- #2221 - All Tasks Icon is off center and small (Admin Page)
- #2222 - Capabilities icon is small and off center (Admin Page)
- #2226 - Request to use "The Associated Press Stylebook" for standardised titles
- #2228 - Retire AddRemoveForeignKeysAsync in favour of AlterForeignKeyColumnAsync
- #2230 - Split AddRemoveIndexAsync into separate methods for adding / removing
- #2239 - No nav bar when screen is small for Elsa
- #2261 - Slide in component (x) does not close the component
- #2262 - Users Page | Error Handling | 
- #2263 - Users Page, capability page, types page. Nav bar is not hoverable
- #2273 - Views Page | Add drop down | Fields
- #2274 - Views Page | Add Drop down | Type
- #2275 - Views Page | Add drop down | Parent
- #2276 - Views Page | Edit button greys out when delete button is hovered
- #2280 - Types Page | No header for delete and properties (Remove headers)
- #2281 - My Tasks does not show a Task created with 'Task Create'
- #2282 - TaskCreateAndWait has a Save button and a Cancel button
- #2285 - My Tasks and Available Tasks - Search is CaSeSensitiVe
- #2287 - Align login button with center when screen size is small. 
- #2291 - Activities Titles Standardisation | 
- #2297 - Activities Titles Standardisation | "Create Object, Create Object Detail, Promote Object to Variable"
- #2299 - Activities Titles Standardisation | "Create Object Detail and Promote Object"
- #2300 - Activities Titles Standardisation | "Read Object Detail"
- #2301 - Activities Titles Standardisation | "Promote State"
- #2302 - Activities Titles Standardisation | "Read Object Detail to Variable"
- #2303 - Activities Titles Standardisation | "Read Objects of Type"
- #2304 - Activities Titles Standardisation | "Read Objects by Query"
- #2305 - Activities Titles Standardisation | "Update Object"
- #2306 - Activities Titles Standardisation | "Update Object Name"
- #2307 - Activities Titles Standardisation | "Create Type Column"
- #2308 - Activities Titles Standardisation | "Create Type Index"
- #2309 - Activities Titles Standardisation | "Create Type"
- #2310 - Activities Titles Standardisation | "Delete Type"
- #2311 - Activities Titles Standardisation | "Read Type Columns"
- #2312 - Activities Titles Standardisation | "Read All Types"
- #2313 - Activities Titles Standardisation | "Delete Type Index"
- #2314 - Activities Titles Standardisation | "Create or Update Object Details"
- #2315 - Activities Titles Standardisation | "Wait for Updated, Deleted or Created Entity"
- #2316 - Activities Titles Standardisation | "Parse JotForm"
- #2317 - Activities Titles Standardisation | "Create User"
- #2318 - Activities Titles Standardisation | "Create Choice Task and Wait"
- #2319 - Activities Titles Standardisation | "Create Task"
- #2320 - Activities Titles Standardisation | "Create Task and Wait"
- #2321 - Activities Titles Standardisation | "Delete Task"
- #2322 - Activities Titles Standardisation | "Create or Update Task Detail"
- #2323 - Activities Titles Standardisation | "Read Task Detail"
- #2325 - Activities Titles Standardisation | "Read All Tasks"
- #2326 - Activities Titles Standardisation | "Update Task"
- #2327 - Activities Titles Standardisation | "Create Capability"
- #2328 - Activities Titles Standardisation | "Read All Capabilities"
- #2329 - Activities Titles Standardisation | "Create User"
- #2330 - Activities Titles Standardisation | "Assign Capability" or "Create User Capability"
- #2331 - Activities Titles Standardisation | "Delete Capability"
- #2332 - Activities Titles Standardisation | "Read All Users"
- #2333 - Activities Titles Standardisation | "Update User"
- #2334 - Activities Titles Standardisation | "Read All Views"
- #2335 - Activities Titles Standardisation | "Create View"
- #2336 - Available tasks 'pick' needs to extend to the whole row
- #2347 - Reorganise the Admin page for most used items at the top
- #2354 - Workflows University | Change order, Jotform integration should go near the bottom since workflows are involved
- #2359 - Outcome(string outcome) should be parsing an enum rather than a string 
- #2363 - Datainstance - Correct forgeign key check to ensure only valid forgeign key columns are treated as such
- #2365 - Can't open a workflow instance in a new tab. Results in blank page
- #2370 - Admin Page: Types panel | change icon from ic to arrow
- #2372 - Slide in component errors. Make them red
- #2374 - Test Pluins Controller for PathTaversal Attacks
- #2390 - GetItemsForView does not return the correct data for the view
- #2391 - TaskAskSimpleQuestionAndWait and TaskCreateAndWait to set variable from related Object
- #2393 - UI Testing | Slide in no longer closes after save is clicked. 
- #2399 - Test Failure | Test_FindObjectTypeById
- #2409 - Workflows University | Add Related Object Id as a parameter to "Create Task" activity
- #2410 - Data Instance editor does not show tasks that are related to the object
- #2421 - SQLite Database needs to be backed up on Shutdown
- #2422 - Import does not work
- #2423 - Slidins need to be consolidated and resolved
- #2425 - Worlk flows university - Database
- #2426 - Ability to Create a Circular Reference Breaks Persistence Layer
- #2428 - Alert Component - Status not refreshed when alert is called
- #2429 - DataProperties UI - Fix alert component usage
- #2431 - Tasks UI Markdown does not render correctly due to CSS issues
- #2432 - UI - Dataproperties not refreshing when updating a column index status
- #2433 - Cannot create object instances
- #2441 - Import: No way to select a different file - needs a 'cancel' option after selecting a file
- #2443 - Test failure: Test_GetObjectInstanceById
- #2444 - Capability test - PostUser instead of PostCapability causing a build break
- #2445 - WorkflowsContext - Capability class erronously used in SeedWorkflowsTaskStatus
- #2446 - Task Editor - make it stand out from the background
- #2447 - Save buttons not shown in instance editor
- #2448 - User Type foreign keys configured incorrectly in EF Model
- #2449 - EF Model fails if one object type has two foreign keys to the same principal object type
- #2451 - Index and foreign key names contain quotes
- #2454 - Clicking "save" in object instance editor does nothing
- #2458 - Documentor: Data Dictionary does not show DataType
- #2459 - Editing Relationships in Instance Editor does not work
- #2474 - Workflows University - Pick a task leads to 404 page error
- #2475 - Workflows University - No navigation continuation after "The Database"
- #2477 - Slidein - Add border to Views page
- #2478 - Slidein - Add border to Users page
- #2479 - Slidein - Add border to Tasks page
- #2480 - Slidein - Add border to Plugin manager page
- #2481 - Slidein - Add border to List page
- #2482 - Slidein - Add border to Dataproperties page
- #2483 - Slidein - Add border to Datainstances page
- #2484 - Slidein - Add border to Datadashboard page
- #2485 - Slidein - Add border to Capabilities page
- #2491 - UpdateObjectTypeColumnAsync returns affected rows instead of column ID.
- #2492 - Return column ID instead of affected rows
- #2494 - Fix updating column names via UpdateObjectTypeColumnAsync
- #2495 - Create automated test for updating column names.
- #2496 - Fix save button in object instance editor
- #2503 - Make ObjectTypeColumn.DataTypeId not nullable
- #2505 - Make ObjectTypeColumn.Visible not nullable
- #2506 - Make ObjectTypeColumn.Indexed not nullable
- #2517 - Change object type title column to reference the column ID instead of the column name
- #2530 - Server memory leak
- #2531 - Import: Add async suffix to async tasks
- #2532 - Investigate memory leak
- #2536 - Views: output columns match a partial fieldname 
- #2537 - Views: fields are in alphabetical sequence, not the sequence defined in the view definition
- #2539 - Fix ObjectState and ImmutableObjectState CopyTo method from attempting to copy "unset" system properties.
- #2541 - Make indexer for `ObjectState` overridden by child types.
- #2544 - Login page - Remove line above video
- #2546 - Available tasks does not display a hover pointer when hovering over the task title
- #2548 - TaskAskSimpleQuestionAndWait - 'error' button should be red (not green) and should be displayed on the right
- #2553 - Dashboard - tasks widget - shows all tasks, not just 'incomplete' tasks
- #2555 - logon screen - video does not work
- #2559 - dataInstances view - make the whole line a selection option
- #2560 - data instance viewer - 'edit' button is misleading
- #2565 - listpage - make the whole line selectable
- #2566 - listpage - edit | delete buttons
- #2570 - Self Referencing Type Detected
- #2580 - TaskCreateAndWait - 'error' button should be displayed on the right
- #2581 - Window title of TypeEditor has a vertical bar in front
- #2582 - Hidden fields show on DataInstanceEditor page

### 1.3
- #1513 - DataInstance Page - When adding new data, the previous entry is still in the slide in
- #1616 - UpdateObjectTypeColumnAsync
- #1924 - Controller Testing - DataTypeController - PutDataType
- #1925 - Controller Testing - DataTypesController - PutDataType InvalidCastException
- #1975 - Low Priority - UI Testing - Sign out button not toggling between pages
- #2009 - Workflows University Testing - More Images for where to navigate
- #2010 - Cannot hide the 'Title' field (was hidden field 'Title' displays on Add Instance)
- #2017 - Add instance inherits the previous value after adding an instance
- #2034 - Designated title column can be deleted.
- #2035 - workflows university- changing directory - doesn't say which platform to use with the redirect url 
- #2046 - Workflows University Home Page - Manage Users link results in 404
- #2048 - Some of the persistence layer tests check to see if the item was inserted
- #2089 - Workflows dashboard line should be inline with nav bar, if removed button will look odd being surrounded by nothing
- #2103 - Workflows Task menu, no shadow arround top of My tasks
- #2106 - Workflows tasks page, should have a margin on My tasks, paragraph div 
- #2159 - Add Instance and Edit Instance - long strings do not auto-expend the editor window
- #2190 - Opening admin bar in new tab results in going back to the homepage
- #2196 - Search bar is too thick
- #2215 - Bool option in edit object isn't formatted correctly
- #2220 - What is the expected behaviour of parent view
- #2227 - Adding ObjectInstance Slideout not clearing after saving/cancelling
- #2352 - view heirarchy is not obvious
- #2376 - UpdateObjectTypeColumnAsync(ObjectTypeColumn proposed). Foreign key stored as 0 is passed as null.
- #2383 - Test Failure: Test_RemoveColumnAsync()
- #2407 - Views Page | Can't add foreign key to a view
- #2408 - Activities that fail don't output the log
- #2427 - Add Fail outcome to JotForm Parse
- #2436 - Unable to drag file to Data Import field
- #2437 - Import: default 'new' field types as 'string'
- #2440 - Import: renaming fields in CSV during import fails
- #2442 - Import: if you do not re-select the fieldname during Map, the data is ignored
- #2467 - Cannot update True/False in Object Instance Editor
- #2493 - Test_UpdateObjectTypeColumn_RenameIndexedColumn_Async cannot rename indexed column
- #2502 - Change Version column in history state tables to be not nullable
- #2509 - Break View.Order and View.Fields columns out into a one-to-many relationship
- #2512 - Rename ObjectType.HistoricalState to ObjectType.HistoryState
- #2513 - Make all column names match property names.
- #2516 - Prevent deletion of designated title column
- #2535 - view of non-string objects does not display the data well
- #2538 - ObjectState and ImmutableObjectState CopyTo method throws an exception with valid inputs
- #2540 - Can't use indexer properties in EF expressions (eg: .Where()) for ObjectHistoryState, ObjectCurrentState and ObjectDesiredState types
- #2542 - Apply view order by when reading data from database
- #2543 - Apply view filter when reading data from database
- #2545 - Tasks: often, but not always, the task does not get dispatched on the first click of 'done' or 'error'
- #2547 - Elsa Designer bug - deleting item cause minor problem with UI
- #2552 - Task Description - liquid translated newline character into &#xA 
- #2556 - Import - choose type does not refresh
- #2557 - dashboard - widget selection only works by clicking on the text, not the whole widget
- #2572 - PE does not show views in the menu
- #2574 - Opening a view is slow
- #2576 - DataInstanceEditor - history does not display changes made after 'initial creation'
- #2577 - Admin page - open External links in a new window
- #2579 - Task editor - TaskCreateAndWait - cancel button does not restore altered data entry fields 
- #2583 - Tasks page - box around My Tasks is different from the box around Available Tasks
- #2585 - Unassigned tasks can appear in Available Tasks duplicated until it refreshes
- #2600 - view - hidden fields display
- #2602 - TaskGetList - name should be Get All Tasks Assigned to a Userid
- #2603 - PE: remove  User Management from the list of Elsa Activities
- #2604 - University: bad link on 2 ii. Manage Users
- #2611 - error (500) in saving workflow 
- #2622 - Test Failure | Test_AddIndexAsync Foriegn key is saved as 0 not null
- #2623 - Test Failure | Test_RemoveIndexAsync Foriegn key is saved as 0 not null
- #2627 - ImmutableUserPropertiesCollection.RemoveRange doesn't remove any items
- #2628 - Change RemoveRange to remove items
- #2629 - ImmutableUserPropertiesCollection.ContainsValue doesn't return true if the value is contained
- #2630 - Fix ImmutableUserPropertiesCollection.ContainsValue
- #2632 - Add a mechanism to perform set equality on ImmutableUserPropertiesCollection instances
- #2633 - Update equality for ImmutableUserPropertiesCollection to ignore unset properties
- #2634 - ImmutableUserPropertiesCollection.SetItems fails to update existing items
- #2635 - Change SetItems to not throw if the item already exists in the set
- #2636 - Test Failure |  Test_UpdateObjectTypeColumnAsync
- #2637 - Test Failure | Test_UpdateObjectTypeColumnAsync Foreign Key stored as 0 not null.
- #2672 - Resolve display issues in ListPage.Razor
- #2673 - GetObjectTypeColumnInfoAsync doesn't include the foreign key id.
- #2674 - Change `GetObjectTypeColumnInfoAsync` to return the foreign key IDs.
- #2676 - Improve DataProperties user experience
- #2677 - UpdateTaskAsync - Parameters are non nullable
- #2678 - WorkflowsTask | WorkflowsTaskStatusId, CapabilityId and AssignedUserId are int not long
- #2679 - Test case failures | Test_UpdateTaskAsync_Fail_InvalidStatusId, Test_UpdateTaskAsync_Fail_InvalidTaskId.
- #2682 - Test case failure - Test_GetTasksAsync_Fail_Invalid_Task - No Exception return an empty list
- #2685 - University: Datatypes not available in DropDown
- #2689 - Creating a view with an empty Object type, results in views no longer able to be created
- #2690 - Test case failure Test_GetViewChildrenAsync_Fail | Invalid Id
- #2692 - Test Case Failure Test_UpdateViewAsync | Order doesn't get updated
- #2693 - Tasks page, search bar not aligned due to the sentence wrapping before the other
- #2701 - Standardise table names
- #2702 - Add foreign key from View to ObjectType
- #2703 - Add foreign key for View.Parent(Id)
- #2704 - Add comments to PatchObjectTypeColumnAsync, explaining that data type id cannot be updated
- #2713 - Workflows PE, "Manage Types" under workflows dashboard don't appear, on render, need to go to tasks then back for it to show
- #2714 - Change "View tasks" to "Manage tasks" PE
- #2718 - Training Video's | Make add spaces to account display name
- #2719 - Module 1 training video description | add a full stop
- #2824 - Add instance - Null error when column is of type string
- #2825 - Add instance - Null error when column is of type bool
- #2826 - Add instance - Null error when column is of any number type
- #2827 - Workflows Designer | Can't connect activities
- #2828 - Workflows Designer | Yellow button at bottom of screen
- #2829 - Add instance - Bool selection not saved when adding a new instance
- #2836 - DatainstanceEditor: View page does not refresh after an edit is made to the data
- #2839 - Add an instance displays the old data but does not use it when adding the instance
- #2840 - views - you can assign a view's parent to itself
- #2841 - JotformParse has stopped working
- #2843 - date fields show mm/dd/yyyy, not local time
- #2844 - Import fails on PE
- #2848 - need to run in chrome incognito for running a httpEndpoint request
- #2849 - Task error. - button would not work
- #2850 - Instance Editor needs to show instance title in the browser title
- #2851 - Activity Create Object with Desired State does not work
- #2852 - ObjectCreate Activity Fails
- #2853 - Object Detail Create and Promote Fails
- #2854 - On First Run get error in H1w.ts Line 33
- #2855 - View Queries on Bigint Relationshiop may be failing
- #2856 - Activity CapabilitGetList Not Working
- #2858 - JSON To CSV Activity Always returns Failed
- #2859 - Activity Object Create Fails when creating from Type Id
- #2860 - ObjectCreateSetPromoteToVariable gives Server Error
- #2861 - ObjectDetailRead Fails
- #2864 - Should hovering over the dashboard item highlight the navlink
- #2865 - Workflows University | Object Workflows | 2. 
- #2866 - Object Detail Create, change json to text area
- #2867 - Object Create | Spelling Mistake
- #2876 - Activity testing | Object Detail Read > http response: https://localhost:7063/ System.NullReferenceException: 'Object reference not set to an instance of an object.'
- #2877 - Activity testing | Object Create | No longer an activity, close if as designed
- #2879 - Activity Testing | Object Detail Create and Promote
- #2881 - Object Instance | ObjectInstance.Type returning null
- #2882 - Activities Testing | Objects Read by Query, use no query | calling breaks everything, need to restart
- #2884 - Activites Testing | Objects Read by Query | When fails workflows state is "Finished" not "Faulted"
- #2885 - Activites Testing | Objects Read by Query | Not working
- #2886 - Quick Object with detail create fails
- #2889 - Object Delete activity not appearing
- #2891 - Activities Testing | Quick Object with Details | Fails
- #2892 - Creating two workflows with the same endpoint results in an error, then routing stopped working
- #2893 - Activity | Update Object Title | Is there always a title column that's a string
- #2894 - Activity Testing | Update Object Title | Doesn't work
- #2896 - Activity testing | Random Number |  How do I get the output in javascript and put it in as json
- #2897 - Activity testing | Random Number | Getting error
- #2898 - Activity testing | Object Update | It isn't actually Object Update it is Wait for object update
- #2899 - Activity Testing | Object Instance Updated | Confused at what parameters, no box to enter Instance to wait for
- #2900 - Remove "Get Task assigned to a specific user" from PE activities
- #2901 - Activity Testing | Task Create | Remove capability from pe
- #2902 - Activity Testing | Task Ask Simple Question and Wait | How do I add a Data Question | Add it to the University
- #2903 - Activity Testing | Unnecessary inputs can just have Object Id
- #2904 - Activity Testing | Task Detail Create |  Did not add task to object
- #2905 - Tasks Page | After adding tasks, it is empty
- #2906 - Activity testing | Task Detail Get List | Can a task have multiple related objects
- #2907 - PE No longer routing SWAGGER or HTTP Activities
- #2912 - SQL Injection Vulnerability in Search
- #2914 - Task behavior Wrong
- #2915 - Cannot create a type without entering a Description
- #2918 - add instance - does not respect the field order
- #2920 - History of an object shows history of all objects, not just the one being displayed
- #2921 - 'Tasks' tab in an object does not display any Tasks 
- #2922 - The 'Complete' button on a TaskCreateAndWait does not function
- #2923 - remove the Miscellenous activities
- #2924 - Available tasks and My Tasks not refreshing quickly enough
- #2925 - Item History Shows history for all items
- #2926 - Creating a New Type Issues
- #2928 - Change history and desired state methods to filter by the instance id
- #2944 - Fix refresh behaviour of tasks UI
- #2947 - Move registerCustomEventType to after Blazor load.
- #2948 - Import requests new (Title) in DropDown
- #2950 - Random Activity failing in new Improved Serializer
- #2956 - Fix routing for DataProperties
- #2957 - Change routing for Data Instances
- #2958 - Make alert component show quicker on Success
- #2959 - Make rows hover Columns
- #2960 - Make rows hover types
- #2961 - Make rows hover objects
- #2962 - Make rows hover tasks
- #2988 - All tasks page make text color change on hover 
- #2989 - Add empty columns while loading to views, tasks, types. columns
- #2991 - WaitForCreatedObject does not work
- #2992 - Added Type Property, get strange Behavior
- #2993 - Instance Viewer doesn't show on first time
- #2994 - Foreign key property 'ObjectType.TitleColumnId1' was created in shadow state because a conflicting property
- #2995 - Type Create Activity does not Work
- #2998 - Remove new title option in import
- #3004 - Run Workflow Truncates and removes play button
- #3005 - Created 8 types, system started failing with event log mesages
- #3017 - New Workflows Play on Object - No visual feedback
- #3019 - Admin Tasks UI - Emplty lines on the screen
- #3020 - Can't set reference properties on an instance
- #3021 - Fix `WriteBlockTo<T>(ReadOnlySequence, ref SequencePosition, Span<T>)` when more than two segments are read.
- #3040 - Does this only happen in developement and can this be fixed without using regedit
- #3052 - Adding type no longer adds spinner
- #3077 - Persistence.CreateObjectTypeAsync(objectTypeInfo.Name)
- #3078 - All columns are created with indexes.
- #3079 - Only add indexes during column creation when it is requested
- #3080 - Fix test CreateObjectTypeAsync
- #3083 - new RC13 install launches in http, not https
- #3093 - Reference fields not working in Add Instance dialog
- #3098 - Task Editor remembers data from other tasks
- #3103 - Testing AddTaskAsync | Severity | Can these be less than 0
- #3104 - Testing AddTaskAsync | Priority | Can it be less than 0
- #3107 - Testing AddTaskAsync | Priority | Is there a max limit to the value. 
- #3108 - Testing AddTaskAsync | Severity | Is there a max limit to the value. 
- #3109 - Testing AddTaskAsync | Capability | Doesn't allow null values, even though the WorkflowsTasks.CapabilityId is int?
- #3110 - Testing AddTaskAsync | Title | Doesn't allow null values, even though the WorkflowsTasks.Title is string?
- #3111 - Testing AddTaskAsync | Description | Doesn't allow null values, even though the WorkflowsTasks.Description is nullable
- #3112 - Testing AddTaskAsync | Due | Doesn't allow null values, even though the WorkflowsTasks.Due is string?
- #3113 - Testing AddTaskAsync | Correlation Id | Doesn't check validity. What is it, why is it an id and a string instead of a long.
- #3115 - Testing Test_AddTaskAsync_Fail_InvalidObjectId | Related Object Id | Fails
- #3116 - WorkflowTask.WorkflowsTaskStatusId | could this be an Enum or can this be any arbitrary value
- #3117 - Bug WorkflowsTask.AssignedUserId is an int when it should be a long
- #3118 - Testing AddTaskDetailAsync | unnecessary parameter of ObjectTypeId 
- #3120 - Sometimes, credential manager appears twice in the workflow screen
- #3121 - After an access token expires the credential ceases to work and reports to the workflow incorrectly
- #3122 - WorkflowsTask class | RowVersion
- #3123 - WorkflowsTask class | Title is nullable
- #3124 - WorkflowsTask class | WorkflowsTaskStatusId why is a nullable int instead of a long
- #3125 - WorkflowsTask class | Priority is an int
- #3126 - WorkflowsTask class | Change Severity to an enum
- #3127 - WorkflowsTask class | AssignedUserId is an int
- #3129 - WorkflowsTask class | What is Selections, Selection and SelectionData
- #3130 - WorkflowsTask class | What is DataQuestions, why is this a single string not an array of strings.
- #3131 - WorkflowsTask class | SourceWorflowId, why is it nullable if every task is created by a workflow
- #3132 - WorkflowsTask class |  SourceWorkflowTaskName, why is it nullable if every task is created by a workflow
- #3133 - WorkflowsTask class |  WorkflowId, why is it nullable if every task is created by a workflow, is this a repeat of SourceWorkflowId
- #3134 - WorkflowsTask class | What is CorrelationId and is it a repeat of RelatedObjectId, SourceWorkflowId or WorkflowId
- #3136 - WorkflowsTask class | SourceWorkflowName why is it a nullable if every task would be created by a workflow
- #3137 - WorkflowsTask class | Modified is not nullable, why is the value set on creation, could be important to see that a task hasn't been modified since creation.
- #3138 - WorkflowsTask class | WorkflowsTaskStatus is nullable
- #3142 - Task Create and Wait NEVER Unsuspends.
- #3144 - WorkflowsTask.Title should not be nullable
- #3152 - Spelling mistake JSONDataInsert
- #3158 - Import - Fails if there is no 'title column specified' without telling the user why
- #3159 - Import: cannot rename fields during import
- #3161 - University: AI prospector - link to Leads.csv and AIProspector.json do not work
- #3162 - University: AI prospector - import details - picture is wrong
- #3164 - University - missing 'Configure' in Configure Web - redirect URI
- #3177 - Workflows Activities | Data type create, type create confusion
- #3179 - Workaround ActivityInput.DefaultSyntax bug
- #3181 - Workflows Activities/ TaskCreate | Data questions description is confusing
- #3182 - Workflow Activities/ TaskCreate | Data questions doesn't give question or text prompt in the task
- #3183 - Issue with create object detail async
- #3185 - Data Entry in tasks no longer working
- #3203 - Generate Migration
- #3223 - ChatGPT authorisation not working
- #3224 - m365 authorisation not working
- #3225 - oAuth not working in workflow - 403 error
- #3226 - Itellisense stopped working in designer
- #3227 - [ ] come from Jotform. We need to strip them
- #3232 - Referenced field list not populating on Add new instance screen
- #3233 - Add support for EFCore migrations.
- #3240 - Incorrect Navigation from Linked item in View Object Page

### 1.4
- #1996 - TaskAskSimpleQuestionAndWait and TaskCreateAndWait fail to save task Description if it is default text 
- #2846 - DataInstanceEditor - save button does not show any positive response
- #2857 - Activities: Wait for Updated Entity does not Work. Wait for New Entity Does
- #2895 - Activity Testing | JSON Data Insert | Can't insert multiple objects
- #2963 - Reloading pages results in spinner while page is loading. 
- #3016 - Getting lots of Event Log Warnings
- #3053 - Workflows image missing
- #3054 - Unable to nagivate to Tasks
- #3055 - App launch defaulting to http
- #3091 - non-helpful error message when trying to hide a column designated as 'Title Column'
- #3096 - DataInstanceEditor history page - mouse icon changes but clicking does nothing
- #3099 - Task List - 'picked' task shows as 'Available'
- #3100 - Task List - Related Object shoudl link to the data object
- #3101 - Task List - Current User not meaningful
- #3114 - Testing AddTaskAsync | Data Questions | Is there any invalid values for this, what is it for
- #3139 - Documentation says you can start a workflow by naming it <TYPE>_xxx, and you no longer can
- #3140 - University: add details on how to set up a Workflow to start using Data/Object Instance trigger
- #3153 - Json Data insert, make input data a json field
- #3154 - Data Export filename is called 'details-x <timestamp>' - shoudl include the Data Type
- #3175 - workflows university/working with a task
- #3176 - Workflows University | No docs on parsing parameters | Create a hello world doc
- #3180 - Jotform Parse does not work for column names with [ or ] in them.
- #3184 - Program.cs, contains two of the builder.Services.AddTransient<ClientBaseDependencies>()
- #3210 - Add "To variable" in activities
- #3211 - Simplify Quick Object Insert | change to Object Insert
- #3213 - Rename Quick Object Detail Insert | Object Detail Insert
- #3216 - AddTaskAsync method | Status = WorkflowsTaskStatus.Unavailable, can't add a status when creating a new task
- #3222 - Workflow colours change when refreshed
- #3228 - Fix signal  R, look at the console when the designer appears, not cors, method is POST wich seems to be invalid
- #3231 - HttpEndpoints is not unique, causing an error when using the same endpoint name in multiple workflows
- #3243 - QuickObjectDetailInsert seems to set all fields to null that are not mentioned in the JSON
- #3316 - Quick object detail insert doesn't use patch method, or there is no update object details
- #3317 - Task Create variable isn't an the same as object detail read
- #3321 - links on an object go to .../objects/xx instead of ../instances/xx
- #3322 - error trying to change the display order of a column
- #3323 - Export button in a Type definition fails
- #3324 - unable to rename column
- #3325 - Task Create: 'deleting the only question does not clear out the Name/Question fields
- #3328 - Resolve issue with `LogOutputProperty` extension method.
- #3329 - MarkdownView Component, let user to use raw html and tailwind css. Creating an app and having to specify the markdown body is not ideal
- #3332 - document the pattern for long-running workflows
- #3333 - Add LogProperty calls to `DataTypesGetList` activity
- #3334 - Add LogProperty calls to `EntityCreated` activity
- #3335 - Add LogProperty calls to `JSONToCSV` activity
- #3336 - Add LogProperty calls to `ObjectCreate` activity
- #3337 - Add LogProperty calls to `ObjectCreateSetPromoteToVariable` activity
- #3338 - Add LogProperty calls to `ObjectDelete` activity
- #3339 - Add LogProperty calls to `ObjectDetailCreate` activity
- #3340 - Add LogProperty calls to `ObjectDetailCreateandPromote` activity
- #3341 - Add LogProperty calls to `ObjectDetailGet` activity
- #3342 - Add LogProperty calls to `ObjectDetailPromote` activity
- #3343 - Add LogProperty calls to `ObjectDetailToVariable` activity
- #3344 - Add LogProperty calls to `ObjectGetList` activity
- #3345 - Add LogProperty calls to `ObjectGetListWithQuery` activity
- #3346 - Add LogProperty calls to `ObjectInstanceTrigger` activity
- #3347 - Add LogProperty calls to `ObjectInstanceUpdated` activity
- #3348 - Add LogProperty calls to `ObjectRename` activity
- #3349 - Add LogProperty calls to `QuickDataInsert` activity
- #3350 - Add LogProperty calls to `RandomNumber` activity
- #3351 - Add LogProperty calls to `TaskCreate` activity
- #3352 - Add LogProperty calls to `TaskDelete` activity
- #3353 - Add LogProperty calls to `TaskDetailAdd` activity
- #3354 - Add LogProperty calls to `TaskDetailsGetList` activity
- #3355 - Add LogProperty calls to `TaskGetList` activity
- #3356 - Add LogProperty calls to `TaskUpdate` activity
- #3357 - Add LogProperty calls to `TypeAddColumn` activity
- #3358 - Add LogProperty calls to `TypeAddIndex` activity
- #3359 - Add LogProperty calls to `TypeAddTitleColumn` activity
- #3360 - Add LogProperty calls to `TypeCreate` activity
- #3361 - Add LogProperty calls to `TypeDelete` activity
- #3362 - Add LogProperty calls to `TypeGetColumns` activity
- #3363 - Add LogProperty calls to `TypeGetList` activity
- #3364 - Add LogProperty calls to `TypeRemoveIndex` activity
- #3365 - Add LogProperty calls to `ViewsAdd` activity
- #3366 - Add LogProperty calls to `ViewsGetList` activity
- #3477 - Authorise Local Requests in Personal Edition
- #3482 - ObjectsReadByQuery fails if the query is empty
