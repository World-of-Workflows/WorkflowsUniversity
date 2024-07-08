---
title: Database
layout: default
parent: User Guide
nav_order: 2
---

# Database

The User Configurable Database in World of Workflows is designed to help you manage your data efficiently and effectively. This chapter will provide an overview of the database functionality and guide you through the process of creating and managing tables, importing and exporting data, searching and filtering records, and integrating with external databases or APIs.

## Overview of the database functionality

The User Configurable Database offers a flexible and intuitive platform for managing your data, allowing you to:

- Create custom *Types* (tables) with user-defined fields, data types, and relationships.

- Import and export data in various formats, such as CSV

- Search, filter, and sort records to quickly find the information you need.

- Integrate with external databases and APIs for seamless data synchronization and access.

- Use the database directly within workflows and tasks

## Creating and managing tables

To create a new *Type* (table) in the User Configurable Database, follow these steps:

1.  Navigate to the User Configurable Database section in World of Workflows, by going to *Admin* then *Types*

2.  Click on the **<span class="smallcaps">Add Types</span>** button.<br>
<img src="./media/image11.png" style="width:2.13681in;height:1.71528in" />

3.  Enter a name for the table and a brief description (optional).

4.  Click **<span class="smallcaps">Save</span>** to confirm.

Once your *Type* is created, you can begin adding fields:

1.  In the list of types, identify the type or table you want to work with.

2.  Click **<span class="smallcaps">Columns</span>**

3.  Click on the **<span class="smallcaps">Add Column</span>** button.<br>
<img src="./media/image12.png" style="width:2.64306in;height:4.35208in" />

4.  Enter a name for the field and choose the Name, Display Name, Column Description and an appropriate data type (e.g., text, number, date, etc.).

5.  Configure additional field properties, such as display order, visible and indexed.

6.  Click "Save" to confirm.

To manage existing tables, you can:

- Edit table names, descriptions, and field properties by clicking on the corresponding **<span class="smallcaps">Edit</span>** button.

- Delete tables or fields by clicking on the **<span class="smallcaps">Delete</span>** button (be cautious, as this action is irreversible and is designed to work only if you don’t have any entries for this *Type*).

### A word about data types

Every time you create a column, it needs to have a data type. This tells world of workflows how to display the data and is efficient in how the data is stored by the database. The list of available data types is below:

| Name        | Description                                                                                                                                                     | Example Uses                                                                                                               |
|-------------|-----------------------------------------------------------------------------------------------------------------------------------------------------------------|----------------------------------------------------------------------------------------------------------------------------|
| Big Integer | The Big Integer represents an arbitrarily large integer whose value *in theory* has no upper or lower bounds. Integers are whole numbers, positive or negative. | Commonly used as Id’s for items where they may grow large, this is the type used as the Id for every object in the system. |
| Integer     | Whole number, positive or negative.                                                                                                                             | The integer is a whole number which commonly is used to represent a count of objects, e.g. 3 people or 5 cats.             |
| Decimal 2   | Number with two decimal places.                                                                                                                                 | This is a number with two decimal places, commonly used to represent currency                                              |
| Decimal 5   | Number with five decimal places                                                                                                                                 | This is commonly used to represent the results of calculations, or distance                                                |
| True/False  | The Boolean or Bit Type                                                                                                                                         | This is used to represent where we have a state that can be true/false, yes/no or off/on.                                  |
| String      | A collection of characters                                                                                                                                      | The string can store words, sentences, paragraphs, books or any other data stored as Base64Encoded.                        |
| DateTime    | The Date and Time                                                                                                                                               | Used to store instances in time, this is stored in the system as UTC[^1] and is presented in the system in local time.     |
| Url         | Uniform Resource Locator                                                                                                                                        | This is a web link                                                                                                         |
| Embed       | Embed Code                                                                                                                                                      | Not currently used, this is a string which gets rendered in the page as an embed code.                                     |

### Relationships

You can create relationships between types in World of Workflows. You do this by adding a column with the data type **Relationship** and choosing the type you would like to relate to.

Relationships allow you to define how objects are related to each other.

However, World of Workflows offers a single way to create relationships, but you can implement the three types of relationship by following the guide below:

Imagine we have Object A and Object B

- A one to one (1:1) relationship is easily established by adding a column in Object A with data type Relationship and Type the type of Object B.

- A one to many (1:∞) relationship between A and B is established by adding a column in Object B with data type relationship and Type the type of Object A

- A many to many (∞:∞) relationship between object A and B is created by creating a new type (Type C). This has two columns, one is a relationship with the type of Object A and the other is a relationship with the type of Object B.

*Whilst the first two types will appear in the interface, the interface does not understand many to many relationships, however it is possible to develop a workflow that understands this structure.*

### Editing Columns

To edit a column, Navigate to the type itself by going to *Admin* then *Types* and then clicking the type.

<img src="./media/image13.png" style="width:6.08333in;height:1.68383in" />

You can then click *Columns* to see the list of columns and click *edit* to edit each one.

<img src="./media/image14.png" style="width:6.03646in;height:1.30505in" />

### Deleting Types

If you navigate to *Admin* then *Types* you can click **Delete Type** icon under Actions to delete a type. *Note: this only works if there are no data instances in the type.*

<img src="./media/image15.png" style="width:6.21494in;height:1.05729in" />

Clicking **Delete** will immediately delete the type. If you have done this in error, you can easily recreate the type.

### Editing Data

World of Workflows offers sorting, filtering, inline editing and bulk editing of your data. These features make it incredibly simple to manipulate your data in the system endure you have the correct data ready to work with.

Clicking on *Admin* then *Types* then clicking the name of the type you want to work with takes you to the data editing screen

<img src="./media/image16.png" style="width:6.23958in;height:1.96526in" />

This screen allows you to manipulate your data as follows:

#### Columns

Columns are able to be resized and reordered. You can resize columns by hovering over the vertical separator between the column headers, clicking and dragging left and right.

Columns can be re-ordered by clicking a column header and dragging it to a new location.

#### Sort and Filter

To sort your data by a column, click the ^ icon in the column header. When sorted the ^ icon in the column header will be highlighted as shown below:

<img src="./media/image17.png" style="width:3.37517in;height:3.56963in" alt="A screenshot of a computer Description automatically generated with medium confidence" />

To filter your data, click the <img src="./media/image18.png" style="width:0.14584in;height:0.17362in" /> icon in any column header. This will bring up the filter window.

<img src="./media/image19.png" style="width:2.90293in;height:2.08344in" alt="A screenshot of a computer Description automatically generated with medium confidence" />

Either type into the filter window or click the null or not-null radio buttons to create your filter.

When a column is filtered, the filter button will be shown as highlighted

<img src="./media/image20.png" style="width:4.60938in;height:1.86866in" />

To clear all filters, click the <img src="./media/image21.png" style="width:0.36113in;height:0.38196in" alt="A red square with a white line on it Description automatically generated with low confidence" /> button on the top of the data table, and to edit filters, click the Filters dropdown at the top of the table.

Export

To export your data, click the <img src="./media/image22.png" style="width:0.36113in;height:0.39061in" /> button on the top of the data table. Your browser will automatically download a CSV of that data.

#### Add Columns

To add a column, click the <img src="./media/image23.png" style="width:0.3403in;height:0.3403in" /> button on top of the data table. You will see the same interface as in add column, above.

#### Edit Columns

To edit columns, click the <img src="./media/image24.png" style="width:0.31555in;height:0.3403in" /> button on top of the data table. You will then be navigated to the column editing screen.

<img src="./media/image25.png" style="width:6.26806in;height:1.40556in" />

#### Add Item

To add an item, click the <img src="./media/image26.png" style="width:0.36113in;height:0.3403in" /> button. The same slide in will appear as in add an item above.

#### Inline edit

Clicking <img src="./media/image27.png" style="width:0.3403in;height:0.36113in" /> will change the mode to Inline Edit. From here, you can individual edit all the items.

<img src="./media/image28.png" style="width:6.26806in;height:1.30208in" alt="A screenshot of a computer Description automatically generated with medium confidence" />

Click <img src="./media/image29.png" style="width:0.36113in;height:0.36113in" alt="A red square with white lines on it Description automatically generated with low confidence" /> to exit inline edit.

#### Bulk Delete

To bulk delete, enter inline edit mode, select a number of items by clicking the checkboxes and click the <img src="./media/image30.png" style="width:0.35419in;height:0.38196in" alt="A red square with a white outline of a trash can Description automatically generated with low confidence" /> button.

<img src="./media/image31.png" style="width:6.26806in;height:1.30833in" alt="A screenshot of a computer Description automatically generated with medium confidence" />

#### Bulk Edit

To bulk Edit, enter inline edit mode, select a number of items and click <img src="./media/image32.png" style="width:0.37502in;height:0.36113in" alt="A picture containing text, stationary, paper clip, safety pin Description automatically generated" />. By entering data in the slide-in, you will be able to edit multiple rows at once.

<img src="./media/image33.png" style="width:3.12516in;height:3.56268in" alt="A screenshot of a computer Description automatically generated with low confidence" />

#### Refresh data

To refresh the data, click the <img src="./media/image34.png" style="width:0.27968in;height:0.29716in" alt="A green square with white arrows Description automatically generated" /> button on the top right which will reload the data for you.

#### To Choose number of rows shown

To choose the number of rows shown, click the page size dropdown, bottom left.

<img src="./media/image35.png" style="width:3.18766in;height:1.7987in" alt="A screenshot of a computer Description automatically generated with medium confidence" />

#### Move between pages

To move between pages, click the \< or \> buttons on the bottom middle of the data editor.

<img src="./media/image36.png" style="width:1.6737in;height:0.84032in" alt="A screenshot of a computer Description automatically generated with low confidence" />

## Importing and exporting data

World of Workflows supports data import and export in CSV.

#### Export

To export data, follow these steps:

1.  Navigate to *Admin* -\> *Types* and select the desired table.

2.  Click on the <img src="./media/image37.png" style="width:0.36113in;height:0.3837in" /> button.

3.  A CSV file will shortly download.

#### Import

The following section describes how to import data into world of workflows.

1.  Prepare a CSV with the required data and remove any columns that you do not want to import. *Column removal is not mandatory but helps speed up the process.*

2.  Navigate to *Admin* **<span class="smallcaps">-\></span>** *Import***<span class="smallcaps">  
    </span>**<img src="./media/image38.png" style="width:6.26806in;height:2.15139in" alt="Graphical user interface, application Description automatically generated" />

3.  Click **<span class="smallcaps">Upload a file</span>** and browse to the CSV file you want to upload.  
    <img src="./media/image39.png" style="width:6.26806in;height:2.14792in" alt="Application Description automatically generated with medium confidence" />

4.  When you see the correct details for your CSV file, click **<span class="smallcaps">Next.  
    </span>**<img src="./media/image40.png" style="width:6.26806in;height:2.375in" alt="Graphical user interface, text, application, email Description automatically generated" />

5.  If you are creating a new Type with this import, under the **<span class="smallcaps">Type</span>** dropdown choose **<span class="smallcaps">New</span>** and name the new type. If you are importing data to an existing *Type*, select the type name in the dropdown and click **<span class="smallcaps">Next.  
    </span>**<img src="./media/image41.png" style="width:6.26806in;height:1.7875in" alt="Graphical user interface, application Description automatically generated" />

6.  The system will automatically suggest fields for your import. You can change these and choose:

    1.  **<span class="smallcaps">Skip –</span>** This column will be ignored

    2.  **<span class="smallcaps">New -</span>** A new Column in your Type will be created in the database from the data in your CSV file. You can enter a Name, Data Type, Display Name, Description, Display Order, whether the column should be Visible and whether it will be a Title column.

    3.  \<Column name\> – choose an existing column name and your CSV data will be added to this column.

    4.  **<span class="smallcaps">Id –</span>** This is the match to the ObjectId or Instance Id and will update records with the same Id if they exist in the database.

7.  Click **<span class="smallcaps">Next</span>** when your fields are correct  
    <img src="./media/image42.png" style="width:6.26806in;height:1.43333in" />

8.  Click **<span class="smallcaps">Import</span>** to copy the data from your CSV file into the database.  
    <img src="./media/image43.png" style="width:6.26806in;height:0.84236in" alt="Graphical user interface, application Description automatically generated" />