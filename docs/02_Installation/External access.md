---
title: World of Workflows Business Edition - Authentication with Microsoft Entra ID for External users
parent: Installation/Setup
layout: default
nav_order: 5
has_children: false
---

# Authentication with Microsoft Entra ID for External users
Each person who accesses your application needs permission.
1. You can invite an **external user** in Micorosft Entra ID: 
```sh 
https://portal.azure.com/#view/Microsoft_AAD_UsersAndTenants/UserManagementMenuBlade/~/AllUsers
```
![image](https://github.com/World-of-Workflows/WorkflowsUniversity/assets/10161221/d7bc0758-efb5-47c0-b9d3-8ea3ca9c9077)


2. You can set up a Dynamic Group in MS Entra ID to provide access to these users: 
```sh 
https://portal.azure.com/#view/Microsoft_AAD_IAM/GroupsManagementMenuBlade/~/AllGroups
```
![image](https://github.com/World-of-Workflows/WorkflowsUniversity/assets/10161221/a4826b35-e6c0-4878-afec-2a67d0d388c5)

One way to dynamically add external users to the group is using a dynamic rule, such as this:
```sh
(user.userPrincipalName -contains "#EXT#")
```
![image](https://github.com/World-of-Workflows/WorkflowsUniversity/assets/10161221/853ac7de-7a4f-4a63-9c5d-be7cdcbad175)


3. Give the group access to your application
4. Find your application name in the App registrations page
```sh
https://portal.azure.com/#view/Microsoft_AAD_IAM/ActiveDirectoryMenuBlade/~/RegisteredApps
```
Look in All Applications, using your ClientID
![image](https://github.com/World-of-Workflows/WorkflowsUniversity/assets/10161221/36b5dbe0-79c1-4237-b9c6-ddcdfb7460ff)

Then go to Enterprise Applications 
```sh
https://portal.azure.com/#view/Microsoft_AAD_IAM/StartboardApplicationsMenuBlade/~/AppAppsPreview/menuId~/null
```
First, remove the 'Enterprise Applications' filter
![image](https://github.com/World-of-Workflows/WorkflowsUniversity/assets/10161221/eb924419-a92e-473e-81e4-394227600570)
And add the group:

![image](https://github.com/World-of-Workflows/WorkflowsUniversity/assets/10161221/5540f26a-e1cf-402b-800c-0694db81be6b)

![image](https://github.com/World-of-Workflows/WorkflowsUniversity/assets/10161221/c8a81e3a-3d74-4d86-ac97-b24f2794d6c6)

Click 'None Selected' to begin

![image](https://github.com/World-of-Workflows/WorkflowsUniversity/assets/10161221/e72e4599-6bb4-44ba-b02f-a52cbe61e066)



4. Provide cross-domain collaboration rights to the user's domain
```sh
https://portal.azure.com/#view/Microsoft_AAD_IAM/CompanyRelationshipsMenuBlade/~/Settings
```

Add the domain name, or select one of the other radio buttons

![image](https://github.com/World-of-Workflows/WorkflowsUniversity/assets/10161221/2c497387-65a1-41e0-a685-09d10f7aa115)
