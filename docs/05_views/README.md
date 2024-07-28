---
title: Views
parent: Getting Started
layout: default
nav_order: 6.5
has_children: false
---
# Views

*Views* are a powerful feature in World of Workflows that allow you to create customized, reusable views of your data by defining queries, selecting fields, and specifying the sorting order. With the ability to establish a hierarchy among views, you can create organized, easily accessible menu structures. This chapter will guide you through the process of creating, managing, and organizing views in the User Configurable Database.

## Overview of Views

Views enable you to:

- Create custom, reusable data views based on specific queries and filters.

- Select which fields to display and customize the order in which they appear.

- Specify the sorting order for records.

- Organize views hierarchically, with top-level views appearing in the main menu and child views accessible via buttons within their parent view.

## Creating a new view

To create a new view, follow these steps:

1.  Navigate to **<span class="smallcaps">Admin -\> Views</span>** in World of Workflows.

2.  Click on the **<span class="smallcaps">Add View</span>** button.  
    <img src="./media/image44.png" style="width:1.83935in;height:2.92642in" alt="Graphical user interface, text, application, email Description automatically generated" />

3.  Enter a name and a brief description for the view (optional).

4.  Choose the *Type* from which the *View* will show the data.

5.  Define the fields which will be shown for the view:

    1.  click the **<span class="smallcaps">+</span>** next to the field name.

    2.  Use the **<span class="smallcaps">=</span>** handle to drag the fields to the correct order.

    3.  Use the <img src="./media/image45.png" style="width:0.13195in;height:0.16668in" /> to remove this field from the view.

6.  Choose the fields to order the view by clicking the **<span class="smallcaps">+</span>** next to the field name. Use the up and down arrows to select the direction of sorting.  
    <img src="./media/image46.png" style="width:3.09044in;height:5.46556in" alt="Graphical user interface, text, application Description automatically generated" />

7.  Create a query for the View, using *oData Query Syntax*

8.  If applicable, choose a parent view from the **<span class="smallcaps">Parent View</span>** dropdown menu. If no parent is selected, the view will appear in the top menu.

9.  Click **<span class="smallcaps">Create View</span>** to confirm.

## Managing views

To edit or delete an existing view, follow these steps:.

1.  Navigate to **<span class="smallcaps">Admin</span>** -\> **<span class="smallcaps">Views</span>** and locate the view you want to modify or remove.

2.  Click on the **<span class="smallcaps">Edit</span>** button to modify the view's settings, such as the name, description, filters, displayed fields, sorting order, or parent view.

3.  Click **<span class="smallcaps">Save Changes</span>** to confirm any modifications.

To delete a view, click on the **<span class="smallcaps">Delete</span>** button. Be cautious, as this action is irreversible.

## Organizing views with hierarchy

Views can be organized hierarchically, which allows you to create structured navigation and improve the user experience. When a view has a parent, it will appear as a button within that parent view. To create a hierarchical structure, follow these steps:

1.  While creating or editing a view, select the desired parent view from the **<span class="smallcaps">Parent View</span>** dropdown menu.

2.  **<span class="smallcaps">Save</span>** your changes. The view will now appear as a button within the parent view.

3.  To rearrange the order of child views within a parent view, navigate to the parent view's settings and use the drag-and-drop functionality to rearrange the child views.

4.  Save your changes.

By utilizing the *Views*, you can create customized, organized representations of your data, making it easier for you and your team to access and analyze essential information.

### Inline Edit

When using a view, you have the same inline and bulk edit/delete features that you have with types.

## Data Editor

The data editor is where you can view data, edit fields, run workflows, view tasks and examine history.

Clicking any instance of a type or in a view brings up the data editor.

<img src="./media/image47.png" style="width:6.26806in;height:1.43472in" />

### View Data

The first tab is called view and here you can view all the data in an instance, and also the date it was first created, the date it was last modified and the reason for the modification.

### Edit Data

The Edit data tab allows you to edit data associated with this object

<img src="./media/image48.png" style="width:6.26806in;height:1.54653in" alt="A screenshot of a computer Description automatically generated with low confidence" />

### Workflows

The Workflows tab allows you to run any workflow which contains the **Object Instance Trigger** activity which is associated with the type of the object you are viewing.

<img src="./media/image49.png" style="width:6.26806in;height:1.77569in" alt="A screenshot of a computer Description automatically generated with low confidence" />

The **Workflows** section shows workflows you can run using this object as reference and the **Workflow Instances** section shows workflows you can resume using this object as a reference.

### Tasks

Tasks can be associated with an object instance and the Tasks tab shows all of the tasks associated with this object.

<img src="./media/image50.png" style="width:6.26806in;height:1.44861in" />

### History

The History tab shows all the different modifications to this object over time.

<img src="./media/image51.png" style="width:6.26806in;height:1.41875in" alt="A close-up of a computer screen Description automatically generated with low confidence" />
