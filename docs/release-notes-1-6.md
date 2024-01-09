# Release Notes
## Version 1.6.180

Welcome to the release notes for HubOne Workflows PE. This document contains information on late changes to the product as of the version above.

> Version 1.6.180 Released 21 August 2023

## Breaking Changes
There are no breaking changes in this release



## Known Issues
The following are known issues in this release

- #1617 - Add the workflow NAME (not just ID) and version number to Task details
  **WORKAROUND:** None
- #2146 - Types Page, adding new type, Error Popup should appear when name exists
  **WORKAROUND:** Don't create types with duplicate names
- #2156 - Workflows instances page, bottom bar extends too far
  **WORKAROUND:** None
- #2708 - Make workflows msi launch application after running 
  **WORKAROUND:** Start the application from the icon on the desktop
- #3926 - A Task created with only a reference field does not allow Submit
  **WORKAROUND:** Ensure Tasks with reference Id have fields to complete
- #4000 - World of Workflows doesn't appear in Start list
  **WORKAROUND:** Run the Application from the desktop icon



## Items resolved this release
- #969 - **User Story** - Import Solution (GitHub Issue #217)
- #973 - **User Story** - Export Solution (GitHub Issue #216)
- #2360 - **User Story** - Standardise logging and exceptions
- #2834 - **User Story** - First run - dialog popup
- #2837 - **Bug** - red 'error message' disappears too fast
- #3084 - **User Story** - Ability to sort Data Properties page
- #3090 - **User Story** - Dates are difficult to enter in Add Instance editor - also needs a time
- #3157 - **Bug** - Unable to rename field 'Manager' to 'Manager-old'
- #3221 - **Bug** - Tasks view in an object instance - status is 'Unavailable' for a new task when the task is in the 'Available Tasks' list
- #3244 - **Bug** - Instance editor, tasks & views - Decimal 2 fields show with 1 decimal place
- #3480 - **User Story** - Obsolete please remove RenameObjectTypeAsync, it is not used in code but it is being tested
- #3488 - **User Story** - GetTypeCurrentStates is private and not used inside of WorkflowsPersistenceBase
- #3506 - **Bug** - FindObjectHeadersAsync returns IAsyncEnumerable<KeyValuePair<long, object?>>?
- #3509 - **Bug** - error updating an object
- #3566 - **Bug** - Possible bug in Client Generation - no post (create) methods for instances
- #3603 - **Task** - Document how to create certificates for Plugin Validation
- #3652 - **Task** - Task Editor - make window resizable
- #3672 - **User Story** - Create an Autotask plugin
- #3673 - **Bug** - Stop blocking the UI for page to load ( avoid waiting on the refresh )
- #3680 - **Feature** - Office 365
- #3681 - **Feature** - Autotask
- #3682 - **Feature** - OpenAI
- #3692 - **Bug** - Add instance in a view does refresh the view when the instance is saved, but the sort order is not respected
- #3703 - **Bug** - Make plugins controller handle upgraded plugin versions
- #3712 - **Bug** - Create a nice loading UI for tables
- #3713 - **Bug** - Make BackUp location and world_of_workflows.db configurable. Create WorldOfWorkflowsDataBaseOptions as a service
- #3714 - **Bug** - Rename worldofworkflows.db to world_of_workflows.db
- #3715 - **Bug** - Rename workflowsbackup20230524102418.db to world_of_workflows_backup_2023-05-24-10-24-18
- #3716 - **Bug** - Create a BackUp directory to store backups
- #3717 - **Bug** - Inline Edit - Does not save Single Row
- #3720 - **Bug** - Workflow instances shows From 1 - 0 of 0 records when there is no data
- #3722 - **Bug** - Make popup for backup display the newly created filename
- #3723 - **User Story** - Filtering: allow cumulative filters
- #3736 - **User Story** - Create OpenAI activity "davinci"
- #3737 - **User Story** - Create OpenAI activity "codex"
- #3738 - **User Story** - Create OpenAI activity "chatgpt"
- #3739 - **User Story** - Create OpenAI activity "instructgpt"
- #3740 - **User Story** - Create OpenAI activity "dall-e"
- #3746 - **Bug** - SendHTTPRequest needs to cope with timeout
- #3751 - **Bug** - Using an Event Id when logging.
- #3760 - **User Story** - Admin/All Tasks requires a filter and sort functionality
- #3761 - **Bug** - Display of type data does not use all available screen real estate
- #3763 - **User Story** - provide a 'Delete' button from within the data editor
- #3764 - **Task** - provide an export button in views.  export the data shown in the view, filtered/sorted as displayed
- #3765 - **Bug** - views: filtering: update pagination when filtered results displayed
- #3766 - **Bug** - views: filtering on null and then changing the filter to a value - only 1 row is displayed
- #3767 - **Bug** - views: filtering: filters are not cumulative, but look like they should be
- #3768 - **Bug** - data (views and types) sorting only sorts within the page
- #3769 - **Bug** - filtering: number searches - any way of allowing a formula, such as '> 10000'?
- #3771 - **Bug** - Azure DevOps, make a default pull request rule across all projects to assign a member of "Workflows Team" as required
- #3778 - **User Story** - Move "Admin" menu item before the views
- #3792 - **Bug** - Occasional Error Clicking from List to Object Editor (/instances/instanceid))
- #3794 - **User Story** - Fork Nswag, create activities based on services created from swagger definition
- #3797 - **Bug** - v 1.5.233 - Views filtering - can select multiple filters but they are not cumulative
- #3798 - **Bug** - Types - deleting records can fail silently
- #3801 - **Task** - Change column filters to use <dynamic> objects to reduce code
- #3802 - **Bug** - Make a WorkflowsBackupService instead of using the extension method in WorkflowsBackupService.cs
- #3803 - **Bug** - Fix ConfigCommand so it correctly adds the builder.AddActivity<>;
- #3804 - **Bug** - Change Settings so it uses System.txt.json instead of Newtonsoft.json
- #3805 - **Bug** - Fix activity so it will add the correct parameters
- #3807 - **Bug** - repeatedly calling ObjectInstanceUpdate on the same object results in 'Collection is read-only.' fault
- #3809 - **User Story** - Solutions
- #3815 - **Task** - Create Solution Management UI
- #3816 - **Task** - Solutions Export
- #3817 - **Task** - Solutions Import
- #3819 - **Task** - Create First Run Experience
- #3820 - **Task** - Create Registration and Licensing using Azure Table and Function
- #3821 - **Task** - Create Autotask Plugin
- #3824 - **Feature** - Add support for DataType plugins
- #3825 - **Task** - better UI for deleting a field (or data)
- #3826 - **Bug** - Business Edition - Cred Manager CallBack URL Not Working
- #3827 - **Bug** - Admin Page - Users Tile strange all by itself
- #3828 - **Bug** - Business Edition - Documentor Fails with 401 Errors
- #3829 - **Bug** - BE - Do we need the users tab?
- #3830 - **Bug** - BE - Create Backup Fails and never creates a backup.
- #3831 - **Bug** - BE - Lots of writing to the console GET ATTRIBUTES - Remove from release version
- #3832 - **Bug** - BE: Cannot Authenticate to oData Endpoint in PowerBI
- #3834 - **Bug** - Clean badly formatted class HubOneWorkflows.Models.API.WorkflowDefinitionResponse
- #3835 - **Bug** - Clean nastily formatted class HubOneWorkflows.Models.API.WorkflowDefinitionActivity
- #3836 - **Bug** - Clean badly formatted class HubOneWorkflows.Models.API.WorkflowDefinitionActivityProperty
- #3837 - **Bug** - Clean badly formatted class HubOneWorkflows.Models.API.WFConnection
- #3838 - **Bug** - Pending on plugins, change to restart service button
- #3839 - **Bug** - Make activity name a property
- #3840 - **Bug** - Fix activity generator.cs move out models and remove displayname
- #3843 - **User Story** - After add a column, have a way to add another column
- #3844 - **User Story** - Update columns from within view / data
- #3845 - **User Story** - Button to go to the data editor from within column definition page
- #3846 - **Bug** - Cannot use ObjectInstanceHistoryList activity.
- #3847 - **Bug** - ObjectInstanceHistoryList applies Filter and OrderBy as wrong type
- #3849 - **User Story** - Add a refresh button to views and data display
- #3850 - **Bug** - Multi-edit of several rows allows user to set a common 'title' field
- #3851 - **Bug** - Typo in ObjectinstanceList prompt
- #3852 - **Bug** - sort sometimes does not work - views
- #3853 - **Bug** - Autotask plugin: the order of the outputs is wrong
- #3854 - **Bug** - Autotask plugin - add activity to create a contract charge
- #3855 - **Bug** - Data import: the "import complete" message removes the status messages
- #3860 - **Bug** - tt-workflows seems to timeout 
- #3865 - **Bug** - Clean nastily formatted class HubOneWorkflows.Models.Api.WFExpression
- #3866 - **Bug** - Office 365 get all unread emails
- #3867 - **Bug** - Add Stop service button to settings page
- #3868 - **User Story** - Create a PluginUtils project, combines the Code.Signer and Code.Generator
- #3869 - **Bug** - Can we delete the WorldOfWorkflows.Plugins repo and just have the WorldOfWorkflows pipeline publish the nuget. 
- #3871 - **Bug** - Easier debugging for plugins
- #3874 - **Bug** - If I have a long running task in a workflow after I click a button on a task, It hangs around until the next activity is complete in the UI
- #3878 - **Bug** - Add System prompt to open AI plugin
- #3880 - **Bug** - Mark Email as read MSGraph
- #3882 - **Bug** - Add the version number in the settings page
- #3885 - **Bug** - views - filtering - filter from one view is used in the next when switching views
- #3887 - **Bug** - pressing the 'return' key in a task entry field adds #xA to the end of the data
- #3888 - **Bug** - Looping a task with no branches causes the workflow to die and so the UI cannot close the task
- #3891 - **Bug** - Make Code signer replace most of the azure pipeline, make it also recognize the git version
- #3892 - **Bug** - remove existing autotask and msgraph plugin from tt-workflows
- #3896 - **Bug** - Authorisation timeout on Business Edition way too fast and does not attempt to re-authenticate
- #3897 - **Bug** - sort the filter dropdown in views
- #3901 - **Bug** - export column headings are the column description, not the name
- #3910 - **Bug** - Move all OpenAI Activities into OpenAI Category
- #3911 - **Bug** - Remove Date Versioned models from ChatCompletions
- #3912 - **Bug** - Need to add capability to define from in MSGraphSendEmail
- #3914 - **Bug** - MSGraphPatchEmail Add Mailbox
- #3915 - **Bug** - MSGraphGetEmailList add Mailbox choice
- #3916 - **Bug** - MSGraphGetUnreadEmails - Add Mailbox choice
- #3917 - **Bug** - MSGraphMarkEmailAsREad - Add Mailbox
- #3920 - **Bug** - Fix broken pipeline
- #3921 - **Bug** - Change New Type and New Column Button Icon
- #3922 - **Bug** - Please move delete icon to right in item instance editor
- #3923 - **Bug** - Tasks - needs to do better margins
- #3925 - **Bug** - Add a warning or a message to ChatGPT models 
- #3927 - **Bug** - there is a randomly-placed red delete button on an instance
- #3928 - **Bug** - OpenAI - Need to enable function calling
- #3929 - **Bug** - Column Create failing in Solutions
- #3935 - **Bug** - MSGraph Plugin Build Failing
- #3938 - **Bug** - Date/time values aren't stored in UTC
- #3942 - **Bug** - Solutions Import Bug (Poss in Setup WF Creation)
- #3943 - **Bug** - PluginManager page: SlideIn broken
- #3947 - **Bug** - MSGraph Activity Send Email only creates it and leaves it in drafts
- #3951 - **Task** - Terms & Conditions page required for Registration
- #3953 - **Bug** - Change body content to text area
- #3954 - **Bug** - Fix continuous chat open ai
- #3958 - **Bug** - All Tasks page just show spinner if no tasks available
- #3959 - **Bug** - Tasks, Views, Types pages all show 18 empty rows if no data is returned - change to a message?
- #3960 - **Bug** - Remove ugly black focus:outline on all H1 tags
- #3961 - **Bug** - Landing page Tasks total always show 0
- #3962 - **Task** - Swap indigo palette for gray
- #3964 - **Bug** - ??
- #3966 - **Bug** - Visual Studio High CPU Usage in Workflows Solution
- #3967 - **Bug** - File-local type 'ITypeHelper<T>' cannot be used in a member signature in non-file-local type
- #3968 - **Task** - Replace indigo palette with more subtle gray
- #3969 - **Task** - Fix tab index and focus on all UserForms
- #3972 - **Bug** - Need better ability for workflows designers to debug failures of Activities
- #3973 - **Bug** - Tidy up Workflows Screen on Items
- #3974 - **Bug** - No Feedback on Click Import Solution
- #3975 - **Bug** - Solutions Import Order
- #3977 - **Task** - Add "Save and add another" to Columns
- #3978 - **Task** - Make Delete Dialog timer a parameter
- #3981 - **Bug** - task ui: Submit button not enabled when drop-down value changed
- #3986 - **Bug** - Disable Solutions Feature Selection on Import for 1.6 - Import entire Export for now
- #3987 - **Bug** - Registration UI does not scroll
- #3990 - **Bug** - PE - Restart Service does not work
- #3991 - **Bug** - Plugins not showing correct version
- #3992 - **Bug** - Plugins - PE 149 - All existing Plugins fail to load
- #3994 - **Bug** - Only use WOW Spinner for Login and Check License
- #3996 - **Bug** - Item Editor - Fill the screen
- #3998 - **Bug** - Getting Event Log Messages 1.6.152 PE
- #3999 - **Bug** - Please fix Secrets Database Location
- #4006 - **Bug** - New registration no longer uses correct PE version for licence
- #4008 - **Bug** - Deleting all plugins Terminally CRASHES THE SERVER
- #4014 - **Bug** - Privacy Policy points to Tribetech not world of Workflows
- #4015 - **Bug** - Move Univerity to a better URL
- #4017 - **Bug** - Bug with the restart service button and controller, the service is stopped and the exe is disconnected from the service.
