---
title: Release notes 1.7
layout: default
nav_order: 2
---
# Release Notes
## Version 1.7.440

Welcome to the release notes for HubOne Workflows. This document contains information on late changes to the product as of the version above.

> Version 1.7.440 Released 6 December 2023

- [Release Notes](#release-notes)
  - [Version 1.7.440](#version-17440)
  - [Breaking Changes](#breaking-changes)
  - [Known Issues](#known-issues)
  - [Items resolved this release](#items-resolved-this-release)
  - [Project Statistics](#project-statistics)



## Breaking Changes
- **Solutions** - Solutions exported from previous versions do not work in this release.
- **Plugin Configuration** - The appsettings.json will need to be amended for the new plugin settings.
- **PE Upgrade** - If running PE, you will need to uninstall before installing this version. There will be no data loss



## Known Issues
The following are known issues in this release

- #975 - SQL Server Persistence
  **WORKAROUND:** None. There is no support for SQL Server in this release
- #1345 - Set Empty Field Defaults
  **WORKAROUND:** There are no defaults for empty fields.
- #1346 - Address Type
  **WORKAROUND:** There is no address type. Resolve this by adding individual string fields
- #1572 - Expose Security System through Persistence Layer
  **WORKAROUND:** None - Security is available in Azure Console (BE)
- #1574 - Expose Security System in UI
  **WORKAROUND:** None - Security is available in Azure Console (BE)
- #1998 - Use different icons when showing User interaction tasks in workflows
  **WORKAROUND:** None
- #2217 - Todo list app, run a workflow through a view
  **WORKAROUND:** None. Run Workflows through instances.
- #2353 - Favourite views
  **WORKAROUND:** None
- #2520 - Remove uses of `System.Convert`
  **WORKAROUND:** None
- #2571 - Extend Views with isDashboardItem
  **WORKAROUND:** None
- #2578 - Ability to customise the Dashboard
  **WORKAROUND:** None
- #2605 - Provide searching across Workflows University
  **WORKAROUND:** None
- #2608 - Elsa Activities: hide Miscellaneous activities
  **WORKAROUND:** None
- #2708 - Make workflows msi launch application after running 
  **WORKAROUND:** None
- #2717 - Workflows training video | Module 1 Overview | Icon is cut off
  **WORKAROUND:** None
- #2721 - Create a drop all tables button for PE
  **WORKAROUND:** None
- #2845 - add sample workflow to University for 'compensible'
  **WORKAROUND:** None
- #2871 - Remove pluralisation, I think saying EntityCreated Instances would be better, change button to Add Instance
  **WORKAROUND:** None
- #2919 - Add an Activity that allows entry of a variable, rather than adding to an object
  **WORKAROUND:** None
- #2939 - need an activity to sync data from an external database to WoW data objects
  **WORKAROUND:** None
- #2941 - Display context-sensitive help
  **WORKAROUND:** None
- #2943 - on a task that has Q&A, the hover-text is the column description on the database field
  **WORKAROUND:** None
- #3165 - Task Due dates do not call the timeout outcome of the activity.
  **WORKAROUND:** None
- #3249 - Integration of PowerShell Script Type into Elsa
  **WORKAROUND:** None
- #3251 - Enable Webhook Manager
  **WORKAROUND:** None
- #3298 - Read and write from Excel, Word, PowerPoint
  **WORKAROUND:** None
- #3301 - Branches for Task Create/ Simple Task Create - Allow description to be added to branches. Maybe having another Dictionary<string, string>
  **WORKAROUND:** None
- #3326 - Task Create: no field to enter 'assigned to'
  **WORKAROUND:** None
- #3486 - If a workflow instance is deleted or faults with an active task, the task cannot be 'completed'
  **WORKAROUND:** None
- #3660 - Watch Directory activity: cannot set the path to a variable
  **WORKAROUND:** None
- #3667 - Watch Directory activity: will not execute unless 'All' is ticked
  **WORKAROUND:** None
- #3668 - File Exists activity requires a literal, needs to accept javascript & liquid variables
  **WORKAROUND:** None
- #3669 - Read File activity needs branches for 'Success' and 'failure'
  **WORKAROUND:** None
- #3719 - Representing Many to Many relationships with Views
  **WORKAROUND:** None
- #3796 - Create Ubuntu installer for one
  **WORKAROUND:** None
- #3806 - ParallelForEach does not have an Output()
  **WORKAROUND:** None
- #3808 - Upgrade to ELSA 3.0
  **WORKAROUND:** None
- #3811 - Localization
  **WORKAROUND:** None
- #3812 - Add Default Language Resource File and DI Localization
  **WORKAROUND:** None
- #3813 - Localize Each String for en-us
  **WORKAROUND:** None
- #3814 - Translate Resources for EN-AU
  **WORKAROUND:** None
- #3824 - Add support for DataType plugins
  **WORKAROUND:** None
- #3841 - Views - need a way to sequence them
  **WORKAROUND:** None
- #3842 - When creating a Type, immediately show the Add Columns page
  **WORKAROUND:** None
- #3856 - Create a backup page, that will show list of backups, and if there synced to azure
  **WORKAROUND:** None
- #3858 - Add a Links facility to the menu
  **WORKAROUND:** None
- #3873 - Create a Pandoc Plugin
  **WORKAROUND:** None
- #3886 - Allow assigning a user when creating a task
  **WORKAROUND:** None
- #3899 - BE: opening a workflow instance in a new window presents the login screen
  **WORKAROUND:** None
- #3907 - Create an Activity to trigger when an instance is created in the database
  **WORKAROUND:** None
- #3908 - Create an activity which triggers when an instance is updated in the database
  **WORKAROUND:** None
- #3940 - Create a fine-tune model for chatgpt
  **WORKAROUND:** None
- #4021 - Dark mode for WoW
  **WORKAROUND:** None
- #4025 - Reduce paging overhead for large datasets
  **WORKAROUND:** None
- #4040 - Configure BE to check license key and request one if one doesn't exist. No Registration
  **WORKAROUND:** None
- #4053 - Add button to allow delete all workflows
- #4132 - Make solutions workflows only show latest workflows
  **WORKAROUND:** None
- #4157 - Ability to select multiple tasks and do funky things with them
  **WORKAROUND:** None
- #4159 - msgraph plugin - ability to paginate through unread emails
  **WORKAROUND:** None
- #4160 - MSGraph plugin - fault calling MSGrapghMarkEmailAsRead in a loop
  **WORKAROUND:** None
- #4197 - Exporting a large list gives an out of memory error
  **WORKAROUND:** None
- #4198 - Can we version CSS (and JS?) so users dont get stuck with cached versions
  **WORKAROUND:** None - Perform refresh if issues
- #4202 - Look at providing RPA for UI using UI Automation Framework
  **WORKAROUND:** None
- #4203 - When adding a column to a type, improve the default Display Name
  **WORKAROUND:** None
- #4219 - security issue on first run on MacOS
  **WORKAROUND:** None
- #4220 - PE does not run on macOS - '401 not authorised' error, and https certificate not working
  **WORKAROUND:** None
- #4229 - New Activity - Find if something exists in a list, if it doesn't create it, and if it does put it in a varaible
  **WORKAROUND:** None
- #4239 - Provide ability to show/hide views
  **WORKAROUND:** None
- #4240 - Should we allow user to select AllowNullable when creating columns?
  **WORKAROUND:** None
- #4242 - Views with invalid filters dont fail gracefully - lets return a nice message
  **WORKAROUND:** None
- #4286 - Add OData support for tasks
  **WORKAROUND:** None
- #4287 - Add OData support for object instance client
  **WORKAROUND:** None
- #4288 - Add OData support for task client
  **WORKAROUND:** None
- #4310 - BE - leave browser open for about 30 minutes without interaction then try perform something - Unauthorised - needs graceful fail with message to re-auth
  **WORKAROUND:** None
- #4389 - Task Editor, make branch options different colors and change to radio buttons
  **WORKAROUND:** None

## Items resolved this release
- #1912 - **Bug** - UI Testing - Capabilities Page - Add Assigned Users
- #2234 - **Bug** - Tasks page, search bar not aligned due to the sentence wrapping before the other
- #2417 - **Bug** - View looks squished
- #2439 - **User Story** - Add 'Import' button onto Types page
- #2465 - **User Story** - HTML to Markdown Activities
- #2575 - **Bug** - view definition - adding a space between the fieldnames prevents the view from rendering
- #2868 - **Bug** - Combine Type Id and Str Type Id for object create
- #3102 - **Bug** - AddIndexAsync(long objectTypeId, string columnName) - USE PATCH INSTEAD
- #3483 - **Bug** - Import: does not match existing records, always creates new ones
- #3762 - **Bug** - deleting item from a type fails with no error message displayed
- #3774 - **Bug** - Tab navigation for objects when adding an object can't tab to submit and cancel
- #3787 - **Task** - When an item in a table is focused, action buttons should appear at the bottom of the item.
- #3810 - **User Story** - Gobalization
- #3833 - **User Story** - Provide the capability to uninstall plugins
- #3870 - **Bug** - Add option for generate ClientBase for CodeGenerator
- #3872 - **Bug** - Add option to code generator to disable creating interfaces
- #3879 - **User Story** - On edit slide of plugin, display the markdown of the plugins README.md
- #3884 - **Bug** - installer - seems to want to use the existing version's folder but this has a filename that includes the version number
- #3890 - **Bug** - Add Workflow of Type ViewCreate - Orderings list has no column data after selecting Type
- #3898 - **Task** - filter option in a view for reference fields to have a 'contains' function
- #3900 - **User Story** - ability to import the column definitions generated by Type Export
- #3902 - **Bug** - you can create multiple views with the same name
- #3903 - **Bug** - Spin the 'play' button for longer
- #3904 - **Bug** - navigation & views refresh
- #3909 - **Bug** - odata comparing 2 dates fails
- #3924 - **User Story** - Azure create CICD with latest part of main
- #3926 - **Bug** - A Task created with only a reference field does not allow Submit
- #3930 - **User Story** - WorldOfWorkflows.CodeGenerator serialize settings instead of using inputs
- #3931 - **User Story** - WorldOfWorkflows.CodeGenerator show file structure
- #3939 - **Bug** - Solutions: Views projections and orderings not working
- #3941 - **Bug** - Solutions views - Projections issue on existing type
- #3945 - **Bug** - Onedrive and sharepoint
- #3946 - **Bug** - Todo tasks and todo tasks list
- #3948 - **Bug** - Remove old files from pipelines
- #3955 - **Bug** - Plugin manager - show Restart service button when pending 
- #3956 - **Bug** - tasks - UI - date fields need a stronger border
- #3963 - **Bug** - SendEmail Office 365 in Cloud does not work. Could be linux issue? Http Works
- #3970 - **Bug** - Views pager not totalling items correctly
- #3971 - **Bug** - No loading spinner on Views page
- #3976 - **Task** - Add paging to Solutions Lists
- #3980 - **Task** - Views needs its paging updated to latest version 1.7?
- #3982 - **User Story** - task ui: when Submit button is enabled, disable all other buttons apart from Cancel.
- #3983 - **Bug** - taskUI - Dropdown list not being refreshed
- #3984 - **Feature** - Solutions: add checkbox to show plugins required
- #3988 - **Bug** - Registration PE 149 - In Account, the License Version is incorrect after rewrite
- #3989 - **Bug** - Registration Errors after rewrite
- #3993 - **Bug** - Remove reference to TribeTech in ProgramData Folder
- #3995 - **Bug** - View Account drop down has wrong z-order
- #3997 - **Task** - Task Editor add task slidein to instance page
- #4000 - **Bug** - World of Workflows doesn't appear in Start list
- #4001 - **Bug** - Navigating to any other URL skips registration
- #4002 - **Bug** - WorkflowsUniversity - Guide skips Company creation
- #4003 - **Bug** - WorkflowsUniversity - Getting started doesn't take into account the default column created (Title)
- #4004 - **Bug** - WorkflowsUniversity - Sample views refer to Status and MyDate, which isn't covered in the sample Types creation
- #4005 - **Bug** - New registration code no longer follows specification
- #4007 - **Bug** - Disable views paging for now
- #4009 - **Bug** - Fix broken registration workflow - re-add local delete handling
- #4010 - **Bug** - Solutions: handle duplicate types more elegantly
- #4011 - **Bug** - After delete type, ensure list is refereshed
- #4013 - **Bug** - Add Item Dialog - Set focus to first input element to start
- #4018 - **Bug** - WorkflowsUniversity - No email or Phone data type
- #4019 - **Bug** - WorkflowsUniversity - Views tutorial refers to Parent as numerical value
- #4020 - **Bug** - Registration: cater for central database licence being deleted but local still exists
- #4024 - **Bug** - Remove use of nerdbank revisioning when in debug mode, should make faster builds
- #4026 - **Task** - Instance Task List add paging and filtering
- #4027 - **Task** - Does ObjectStateDisplay have a Disable feature?
- #4028 - **Bug** - A Task created with only a date field does not allow Submit
- #4029 - **Task** - Solutions: Add search filter to types views and workflows export selection
- #4030 - **Task** - Solutions: make better use of empty whitespace when listing export and import items
- #4031 - **Bug** - Solutions: imported workflows not maintaining all x and y coordinates
- #4032 - **Bug** - View sorting is not defaulting
- #4033 - **Task** - Ability to sort the data column definition
- #4034 - **Task** - Solutions (Export): Allow user to filter Views selection by related type
- #4037 - **User Story** - Add Plugins to Solutions
- #4038 - **Bug** - OData does not work in the View query
- #4039 - **Task** - Views: Add Id as Column
- #4042 - **Task** - Solutions Export: Re-order selected types according to linked references before exporting
- #4043 - **Task** - Solutions: show on UI which Types have columns that reference other types
- #4045 - **Bug** - missing 'Current User' column in Tasks view in Data object in BusinessEdition
- #4046 - **User Story** - Make Tasks in data object a live link
- #4047 - **Task** - Add a refresh button to Data editor / Tasks & History tabs
- #4048 - **Bug** - tasks tab in Data instance editor shows workflow ID, not instance log
- #4049 - **Bug** - Opening Views from the Admin page only shows 5 rows, regardless of the Page Size
- #4052 - **User Story** - Change Views to accept an OData filter instead of the dynamic LINQ syntax.
- #4055 - **User Story** - Create Plugin for PipeDrive
- #4056 - **Task** - Generate Plugin for PipeDrive
- #4057 - **Task** - Add Authentication
- #4058 - **Task** - Release Plugin
- #4059 - **Bug** - World of workflows Code Generator, escape strings for description 
- #4060 - **Task** - Solutions: Allow refire option for failed Activities
- #4061 - **Bug** - Documentor - workflow diagram does not work
- #4065 - **Bug** - Plugin removal and add on PE seems to be flaky
- #4066 - **Task** - Task: Add Sorting and Paging to AllTypes page
- #4067 - **Bug** - Filter window needs to move up a few px for one row tables
- #4068 - **Bug** - Need to be able to filter emails in GetUnreadEmails using oData Filters
- #4072 - **Task** - Paging: remember paging size selected per View
- #4073 - **Task** - Add new format Save / Cancel button to View Instance Add Slidein
- #4074 - **Task** - Delete Type Dialog - allow delete of all instances on delete "instance exists" error
- #4075 - **Bug** - Solutions: Filter by type not working
- #4076 - **Bug** - Views Page: Add a view doesnt refresh the NavMenu immediately
- #4078 - **User Story** - CES Plugin with 1 working activity
- #4081 - **Bug** - WorldOfWorkflows.CodeGenerator exception not showing in file structure
- #4083 - **User Story** - WorldOfWorkflows.MSGraph (generated plugin) create the same activities that are in the released plugin
- #4090 - **Bug** - Need to be able to add an attachment to Office 365 Emails
- #4092 - **Bug** - Create a build configuration that sets Enable_Registration to False in DEBUG
- #4093 - **Bug** - PluginsManager: fix restart error where slidein opens
- #4096 - **Bug** - Chatgpt a whisper api
- #4097 - **Bug** - Plugin Configuration file, if plugin configuration fails to load ensure that Workflows still runs
- #4101 - **Bug** - Filter for reference types is showing the instance Id rather than Instance Title
- #4103 - **Task** - Upgrade Elsa to 2.13
- #4104 - **User Story** - Upgrade Elsa to 2.13
- #4105 - **Task** - Allow Add Another on Type Add page
- #4106 - **Task** - Show referenced columns in DeleteDialog delete error
- #4107 - **Bug** - WorldOfWorkflows.CES get all pictures 
- #4108 - **Bug** - WorldOfWorkflows.CES change StudentIdSchool 
- #4110 - **Task** - Persist Sorting values for Types, Instances
- #4116 - **Bug** - Upgrading Plugin is unreliable
- #4119 - **Task** - Restyle Settings page
- #4120 - **Task** - Restart Service check for restart
- #4121 - **Bug** - Documentor - Diagram has incorrect direction in ER Diagram
- #4122 - **Bug** - Documentor - Diagram has incorrect data types
- #4123 - **Bug** - Instance Workflow runner - Entire block should run workflow, not just play button
- #4124 - **Bug** - Strange issue - clean database and after cannot add Workflows
- #4126 - **Bug** - Picked tasks don't automatically display when I complete a previous task
- #4127 - **Bug** - This solution does not import correctly. Please work out why.
- #4128 - **Task** - Please compact Sqlite database on close before backup process
- #4129 - **Bug** - Need better way to show views nav when there are many - suggest dropdown menu
- #4131 - **Bug** - Settings > Create Backup > Alert does not show path correctly and it disappears too fast
- #4134 - **Bug** - Add delete dialog to views page
- #4135 - **Task** - Add <> to Enum Column Filters
- #4137 - **Bug** - Cannot reference a newly created object type in a execution pass of a workflow
- #4138 - **Task** - Complete README as per template for Code Generator in advance of public Open Source Release
- #4140 - **User Story** - Create Additional Share Point Activities for the MSGraph plugin
- #4144 - **Bug** - Adding an instance from a view doesnt update the instances in the View
- #4145 - **Bug** - Get name of Parent View in Views page - Id is not helpful
- #4146 - **Bug** - Fix CodeSigner to output an actual p7s certificate
- #4147 - **Task** - Add Icons for all action links
- #4148 - **Bug** - BE Setup Powershell Script - Connect-MgGraph - ForceRefresh not a valid parameter
- #4149 - **Bug** - Registration success dialog: Name field shows Date info
- #4150 - **Bug** - Views - fail gracefuly and show error on create error
- #4151 - **Bug** - Views - remove obsolete slide in methods
- #4152 - **Bug** - Registration is assigning email field to name
- #4153 - **Bug** - Adding a parent view of the same type to a view crashes the app
- #4155 - **Bug** - MS Graph Add Category
- #4156 - **Task** - Add Xero project Activities
- #4162 - **Bug** - Instance List sorting on a reference field sorts on the ObjectId not the Title field
- #4164 - **Task** - Add an alerts feature to show if there are any faulted workflows in the system
- #4165 - **Bug** - remember the resized size of a task
- #4166 - **Task** - Upgrade Code Generator to Elsa 2.13
- #4167 - **Bug** - Instance List - null filter not working
- #4168 - **Task** - Upgrade NinjaOne Plugin to Elsa 2.13
- #4169 - **Bug** - Instance List - selecting a filter hides the first row returned
- #4170 - **Task** - Upgrade PipeDrive Plugin to Elsa 2.13
- #4171 - **Bug** - Instance List - filters dialog shows the ObjectId of a reference field
- #4172 - **Task** - Upgrade WorldofWorkflows.Plugins to Elsa 2.13
- #4173 - **User Story** - Instance List - add a filter for the ID column
- #4174 - **Bug** - Instance List - delete items needs a spinner
- #4175 - **Task** - Upgrade Nugets in WOWF-XeroActivities
- #4176 - **Bug** - Instance List - Date filter has no Time option
- #4177 - **Task** - Upgrade Utilities Plugin to Elsa 2.13
- #4180 - **Bug** - Instance List and Solutions - icons are confusing
- #4181 - **Bug** - WOW BE - Will not start with existing OR New Database - Claims the following issue
- #4190 - **Bug** - 1.7.180 - Error rendering views
- #4192 - **Bug** - Expand view column header to fit content on initial load
- #4193 - **Bug** - Views: nav select show gray box even when view has no children
- #4194 - **Bug** - BE PowerShell.issues
- #4199 - **Bug** - Views - display long string fields better
- #4201 - **Bug** - Re-add plugins to solutions
- #4204 - **Bug** - Import data: the column 'names' shows the Column Description field
- #4205 - **Bug** - Instance List editor - inline edit error with datetime fields
- #4207 - **Bug** - failed import - but no reasons shown
- #4208 - **Bug** - Diagram button in types should say "View Diagram" not Edit Diagram,
- #4209 - **Bug** - Remove Developer Mode from Settings
- #4210 - **Bug** - Child Views no longer visible
- #4212 - **Bug** - Change Solutions Import
- #4214 - **Bug** - changing column names breaks data when the column is indexed
- #4215 - **Bug** - ObjectInstanceCreate shows no fields
- #4216 - **Bug** - Settings / Service running shows red X even when the service is up
- #4217 - **Bug** - Instance List - icon placement when in in-line edit mode
- #4218 - **Bug** - Workflows University - .net 7 links
- #4221 - **Bug** - On first run, PE license dialog does not show unless you go to Admin or other page
- #4222 - **Bug** - On PE, if you close first use dialog, you have to click Admin twice
- #4230 - **Bug** - Exporting from a view gives a file with no extension. Extensions should be CSV
- #4231 - **Bug** - Refresh view after filter - keeps filter but looses UI reference to filter
- #4232 - **Bug** - refresh View does not seem to go back to the database to get new values
- #4236 - **Task** - Create a new pipeline for Xero to support 1.6
- #4237 - **Task** - Create a new pipeline for MSGraph to support 1.6
- #4238 - **Task** - Create a new pipeline for Autotask to support 1.6
- #4241 - **Bug** - Inline Edit - DateTime field not updating in real time
- #4245 - **Bug** - Add Instance,"Save" and "Save and add another" doesn't remain same size.
- #4247 - **Bug** - Unexpected behavior for delete type when instances exist within them
- #4248 - **Bug** - Instances page, the "Save and Add Another" instance button should be first for tab.
- #4249 - **User Story** - Change ReadOnlyObjectDisplay, ReadOnlyObjectStateDisplayHost, ObjectDisplay and ObjectStateDisplayHost to not use System.Linq.Expressions
- #4277 - **Bug** - Fix Xero build (rename project file to WorldOfWorkflows.Xero)
- #4278 - **Bug** - Filtering and Export Issue
- #4279 - **User Story** - Server side paging and filtering
- #4291 - **Bug** - Plugins in Solutions
- #4292 - **Bug** - Export from Views AND Types showing related object Ids, not titles - Import also
- #4295 - **Bug** - Types page: dont show pager until rows have loaded
- #4296 - **Bug** - Columns Page: Add new style action buttons
- #4297 - **Bug** - All Pages: dont show action buttons until data is loaded
- #4299 - **Bug** - type column editor - import columns does the wrong thing
- #4300 - **Bug** - Delete instance - non-existant reference
- #4301 - **Bug** - Type -> Edit Diagram button shows the Data Dictionary and not a diagram
- #4302 - **Bug** - Domain Regos View in https://tt-workflows.azurewebsites.net/ is crashing
- #4304 - **Bug** - tt-worldofworkflows site: Data Error in "Domain Regos" View due to FILTER "Customer ne null"
- #4305 - **User Story** - Remember the user defined column widths in views
- #4306 - **Bug** - fiels in Type instance -> Tasks do not align properly
- #4309 - **Bug** - Adding Reference Col to type: requires full page refresh to display list of references on Add Instance
- #4313 - **Bug** - sort dropdowns in tasks
- #4314 - **Bug** - task drop-downs not refreshing unless the browser page is refreshed
- #4315 - **Bug** - Instance editor - task refresh does not work
- #4319 - **Bug** - Documentor - reduce the clutter
- #4320 - **Bug** - Instance List - filtering on dates not using the displayed date - maybe getting UTC wrong?
- #4321 - **Bug** - instance list filtering - just a bit too quick to properly enter date fields
- #4324 - **User Story** - Upgrade to .NET 8
- #4327 - **Bug** - Import: Add spinner for long running processes such as large file upload
- #4330 - **Bug** - Task editor - red box on drop-down
- #4331 - **Bug** - Task editor - selecting a drop-down does not enable the Submit button
- #4332 - **Bug** - deleting item from a view does not work
- #4333 - **Bug** - Inline Edit in View - Editing a date doesn't stick
- #4335 - **Bug** - Unable to add new types
- #4336 - **Bug** - Cannot edit integer fields
- #4338 - **Bug** - Make top nav responsive
- #4339 - **Bug** - Cannot connect and authorize with Swagger UI
- #4340 - **Bug** - Cannot Upload Plugins
- #4341 - **Bug** - World of Workflows Service Won't Start
- #4342 - **Bug** - Loading Utilities Plugin gives no name or description
- #4343 - **Bug** - "Save and Add another" and "Save" instance page reloads table
- #4344 - **Bug** - Default no description provided for task to be empty and don't load it in the editor.
- #4346 - **Bug** - PE cannot register and error on home screen
- #4347 - **Bug** - Cannot Import Solution
- #4348 - **Bug** - allow sorting and filtering on ID column in VIEWS
- #4349 - **Bug** - deleting instances from VIEWS needs the same UI as deleting from TYPES
- #4351 - **Bug** - Add seconds to HTML datetime picker for filters
- #4352 - **Bug** - Make Primary Add Button just a +
- #4354 - **Bug** - No Activity to delete object Instance
- #4356 - **Bug** - Delete Icon stays as spinner
- #4358 - **Bug** - Error in Browser Console
- #4360 - **Bug** - Cannot import exported solution
- #4362 - **Task** - Make views nav dropdown hierachical
- #4364 - **Bug** - UI Shows Hamburger Menu even in Full Size Screen
- #4365 - **Bug** - Hamburger Menu too close to left of page
- #4366 - **Bug** - Alerts Interface. Hovering over buttons makes them disappear
- #4369 - **Bug** - oAuth Authorisation Broken
- #4370 - **Bug** - minor change to Alert window - add name instead of ID
- #4372 - **Bug** - Refreshing auto-navigates back to the homepage in PE
- #4374 - **Bug** - Import: no data imported when creation of type on import selected
- #4375 - **Bug** - Import - identify the failed records
- #4376 - **Bug** - export - needs ANOTHER column of objectID after the Title field
- #4377 - **Bug** - instance list filtering on reference field - sort the items
- #4378 - **Bug** - instance list filtering on reference field - scrolling issue with > screenful of choices
- #4379 - **Bug** - Alerts not  showing Workflow Name
- #4380 - **Bug** - sort dropdowns in instance editor
- #4381 - **Bug** - MSGraph - typo in the prompt text
- #4383 - **Bug** - Remove focus outline on welcome page
- #4384 - **Bug** - Remove ugly text select on Task Editor when dragging size
- #4385 - **Bug** - Task Editor : Remove ugly text selection on when dragging size
- #4386 - **Bug** - Admin->Task List - can only open tasks that have a RelatedObject
- #4387 - **Bug** - Link off Admin->Tasks to Workflow instance has a missing hypen
- #4393 - **Bug** - Solution Import does not succeed
- #4394 - **Bug** - Error on First Load
- #4395 - **Bug** - View children breadcumb issues
- #4398 - **Bug** - Plugin error upgrade fails

## Project Statistics


Language|files|blank|comment|code
:-------|-------:|-------:|-------:|-------:
JavaScript|10,797|136,397|440,784|3,274,171
JSON|631|86|0|490,756
C#|1,331|39,493|27,420|182,168
TypeScript|1,829|19,603|129,439|173,585
C|20|4,283|8,673|58,254
Markdown|362|23,505|48|52,026
XML|1257|5220|9717|43,861
Text|148|451|0|40997
Bourne Shell|37|3,803|3,835|25,948
CSS|152|4,548|1,414|23,680
C# Designer|22|3,772|47|12,316
diff|5|126|1135|10,306
Razor|95|853|1594|9038
m4|1|823|84|7059
Korn Shell|1|996|1393|6502
HTML|30|705|2|4481
C# Generated|146|444|1389|2148
INI|53|205|0|1486
Visual Studio Solution|2|1|2|1394
LESS|16|255|8|1326
YAML|40|54|27|965
MSBuild script|38|204|78|961
SVG|24|0|4|754
make|12|277|734|754
Windows Resource File|11|70|113|705
C/C++ Header|7|104|390|681
PowerShell|25|26|116|516
DOS Batch|24|46|0|348
Windows Module Definition|4|1|0|318
SQL|1|30|52|314
Bourne Again Shell|1|5|0|48
XAML|4|9|0|48
Visual Basic Script|1|14|23|45
Dockerfile|1|4|1|24
Properties|6|0|0|24
Nix|1|1|0|19
CoffeeScript|1|1|0|0
--------|--------|--------|--------|--------
SUM:|17,136|246,415|628,522|4,428,026
