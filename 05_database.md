# The World of Workflows Integrated Database

The User Configurable Database in World of Workflows is designed to help
you manage your data efficiently and effectively. This chapter will
provide an overview of the database functionality and guide you through
the process of creating and managing tables, importing and exporting
data, searching and filtering records, and integrating with external
databases or APIs.

## Overview of the User Configurable Database functionality

The User Configurable Database offers a flexible and intuitive platform
for managing your data, allowing you to:

-   Create custom *Types* (tables) with user-defined fields, data types,
    and relationships.
-   Import and export data in various formats, such as CSV
-   Search, filter, and sort records to quickly find the information you
    need.
-   Integrate with external databases and APIs for seamless data
    synchronization and access.
-   Use the database directly within workflows and tasks

## Creating and managing tables

To create a new *Type* (table) in the User Configurable Database, follow
these steps:

1.  Navigate to the User Configurable Database section in World of
    Workflows, by going to *Admin* then *Types*
2.  Click on the **Add Types** button.`<br>`{=html} ![Add New
    Type](../images/05a_image.png)
3.  Enter a name for the table and a brief description (optional).
4.  Click **Save** to confirm.

Once your *Type* is created, you can begin adding fields:

1.  In the list of types, identify the type or table you want to work
    with.
2.  Click ![Edit Columns](../images/05a_image-1.png)
3.  Click on the **Add Column** button.`<br>`{=html} ![Add
    Column](../images/05a_image-2.png)
4.  Enter a name for the column and choose the Name, Display Name,
    Column Description and an appropriate data type (e.g., text, number,
    date, etc.).
5.  Configure additional column properties, such as display order,
    visible and indexed.
6.  Click **Save** to confirm or **Save & Add Another** to save and add
    another.

To manage existing tables, you can:

-   Edit table names, descriptions, and field properties by clicking on
    the corresponding ![Edit](../images/05a_image-3.png) button.

-   Delete tables or fields by clicking on the
    ![Delete](../images/05a_image-4.png) button (be cautious, as this
    action is irreversible and is designed to work only if you don't
    have any entries for this *Type*).

## A word about data types

Every time you create a column, it needs to have a data type. This tells
World of Workflows how to display the data and is efficient in how the
data is stored by the database. The list of available data types is
below:

  ---------------------------------------------------------------------------------
  Name         Description                            Example Uses
  ------------ -------------------------------------- -----------------------------
  Big Integer  The Big Integer represents an          Commonly used as Id's for
               arbitrarily large integer whose value  items where they may grow
               *in theory* has no upper or lower      large, this is the type used
               bounds. Integers are whole numbers,    as the Id for every object in
               positive or negative.                  the system.

  Reference    Connects two Types together by a key   The Title column of the
               field.                                 referenced Type will be used
                                                      in dropdowns of the
                                                      referenced Type's data

  Integer      Whole number, positive or negative.    The integer is a whole number
                                                      which commonly is used to
                                                      represent a count of objects,
                                                      e.g. 3 people or 5 cats.

  Decimal 2    Number with two decimal places.        This is a number with two
                                                      decimal places, commonly used
                                                      to represent currency

  Decimal 5    Number with five decimal places        This is commonly used to
                                                      represent the results of
                                                      calculations, or distance

  True/False   The Boolean or Bit Type                This is used to represent
                                                      where we have a state that
                                                      can be true/false, yes/no or
                                                      off/on.

  String       A collection of characters             The string can store words,
                                                      sentences, paragraphs, books
                                                      or any other data stored as
                                                      Base64Encoded.

  DateTime     The Date and Time                      Used to store instances in
                                                      time, this is stored in the
                                                      system as UTC\[\^1\] and is
                                                      presented in the system in
                                                      local time.

  Url          Uniform Resource Locator               This is a web link

  Embed        Embed Code                             Not currently used, this is a
                                                      string which gets rendered in
                                                      the page as an embed code.
  ---------------------------------------------------------------------------------

## Relationships

You can create relationships between types in World of Workflows. You do
this by adding a column with the data type **Reference** and choosing
the type you would like to relate to.

Relationships allow you to define how objects are related to each other.

However, World of Workflows offers a single way to create relationships,
but you can implement the three types of relationships by following the
guide below:

Imagine we have Type A and Type B

-   A one-to-one (1:1) relationship is easily established by adding a
    column in Object A with data type Relationship and Type the type of
    Object B.
-   A one-to-many (1:∞) relationship between A and B is established by
    adding a column in Object B with data type reference and Type the
    type of Object A.
-   A many-to-many (∞:∞) relationship between objects A and B is created
    by creating a new type (Type C). This has two columns, one is a
    relationship with the type of Object A and the other is a
    relationship with the type of Object B.

{: .highlight } \> Whilst the first two types will appear in the user
interface, the interface does not understand many to many relationships,
however it is possible to develop a workflow that understands this
structure, and therefore a custom web UI that is able to work with and
manipulate it..

## Editing Columns

To edit a column, Navigate to the type itself by going to *Admin* then
*Types* and then clicking the type.

![Types](../images/05a_image13.png)

You can then click *Columns* to see the list of columns and click
**Edit** to edit each one.

![Columns](../images/05a_image14.png)

## Deleting Types

If you navigate to *Admin* then *Types* you can click **Delete Type**
icon under Actions to delete a type. *Note: this only works if there are
no data instances in the type.*

![Delete Type](../images/05a_image15.png)

Clicking **Delete** will immediately delete the type. If you have done
this in error, you can easily recreate the type.

## Editing Data

World of Workflows offers sorting, filtering, inline editing and bulk
editing of your data. These features make it incredibly simple to
manipulate your data in the system to ensure you have the correct data
ready to work with.

Clicking on *Admin* then *Types* then clicking the name of the type you
want to work with takes you to the data editing screen

![Edit Type](../images/05a_image16.png)

This screen allows you to manipulate your data as follows:

## Columns

Columns can be resized and reordered. You can resize columns by hovering
over the vertical separator between the column headers, clicking and
dragging left and right.

Columns can be re-ordered by clicking a column header and dragging it to
a new location.

## Sort and Filter

To sort your data by column, click the **\^** icon in the column header.
When sorted the **\^** icon in the column header will be highlighted as
shown below:

![Sort](../images/05a_image17.png)

To filter your data, click the ![Filter Icon](../images/05a_image18.png)
icon in any column header. This will bring up the filter window.

![Filter](../images/05a_image19.png)

Either type into the filter window or click the null or not-null radio
buttons to create your filter.

When a column is filtered, the filter button will be shown as
highlighted

![Filtered](../images/05a_image20.png)

To clear all filters, click the
`<img src="../images/05a_image21.png" width="24"/>`{=html} button on the
top of the data table, and to edit filters, click the Filters dropdown
at the top of the table.

## Add Columns

To add a column, click the
`<img src="../images/05a_image23.png" width="24"/>`{=html} button on top
of the data table. You will see the same interface as in add column,
above.

## Edit Columns

To edit columns, click the
`<img src="../images/05a_image24.png" width="24" />`{=html} button on
top of the data table. You will then be navigated to the column editing
screen.

![Edit Columns](../images/05a_image25.png)

## Add Item

To add an item, click the
`<img src="../images/05a_image26.png" width="24" />`{=html} button. The
same slide-in will appear as in *add an item* above.

## Inline edit

Clicking `<img src="../images/05a_image27.png" width="24"/>`{=html} will
change the mode to Inline Edit. From here, you can individually edit all
the items.

![Inline Edit](../images/05a_image28.png)

Click `<img src="../images/05a_image29.png" width="24" />`{=html} to
exit inline edit.

## Bulk Delete

To bulk delete, enter inline edit mode, select several items by clicking
the checkboxes and click the
`<img src="../images/05a_image30.png" width="24"/>`{=html} button.

![Bulk Delete](../images/05a_image31.png)

## Bulk Edit

To bulk Edit, enter inline edit mode, select a number of items and click
`<img src="../images/05a_image32.png" width="24" />`{=html}. By entering
data in the slide-in, you will be able to edit multiple rows at once.

![Bulk Edit](../images/05a_image33.png)

## Refresh data

To refresh the data, click the
`<img src="../images/05a_image34.png" width="24" />`{=html} button on
the top right which will reload the data for you.

## To Choose the number of rows shown

To choose the number of rows shown, click the page size dropdown, bottom
left.

![Page Size](../images/05a_image35.png)

## Move between pages

To move between pages, click the **\<** or **\>** buttons on the bottom
middle of the data editor.

![Page Navigation](../images/05a_image36.png)

## Export

To export your data, click the
`<img src="../images/05a_image22.png" width="24"/>`{=html} button at the
top of the data table. Your browser will automatically download a CSV of
that data. `Export` respects any `Filter` you have applied.

# Importing and exporting data

This chapter focuses on how to move data into and out of World of
Workflows.

World of Workflows admin page supports data import and export in CSV.
Your workflows can of course use any sort of data.

## Export

To export data, follow these steps:

1.  Navigate to *Admin* -\> *Types* and select the desired table.
2.  Click on the
    `<img src="../images/05a_image37.png" width="24" />`{=html} button.
3.  A CSV file will shortly download.
4.  You can also [filter](./working-with-data.html#sort-and-filter) the
    data and the export will only export the filtered data.

## Import

The following section describes how to import data into World of
workflows.

1.  Prepare a CSV with the required data and remove any columns that you
    do not want to import. *Column removal is not mandatory but helps
    speed up the process.*

    Note that this process can be used ***BEFORE*** a data type is
    created: `Import` will create the structure you require in the User
    Configuarable Database.

2.  Navigate to *Admin* -\> *Import*
    ![Import1](../images/05a_image38.png)

3.  Click **Upload a file** and browse to the CSV file you want to
    upload.\
    ![Import2](../images/05a_image39.png)

4.  When you see the correct details for your CSV file, click **Next.**
    ![Import3](../images/05a_image40.png)

5.  If you are creating a new Type with this import, under the **Type**
    dropdown choose **New** and name the new type. If you are importing
    data to an existing *Type*, select the type name in the dropdown and
    click **Next.** ![Import4](../images/05a_image41.png)

6.  The system will automatically suggest fields for your import. You
    can change these and choose:

    1.  **Skip** - This column will be ignored

    2.  **New** - A new Column in your Type will be created in the
        database from the data in your CSV file. You can enter a Name,
        Data Type, Display Name, Description, Display Order, whether the
        column should be Visible and whether it will be a Title column.

        > What is a `Title` column? Every Type has 1 Title column. By
        > default it is called Title, but you can rename it.

        > The 'title' column in a Type typically represents a key
        > attribute or identifier that provides a descriptive or
        > meaningful name for each record or entry within that Type.
        > This column is often used to display a readable and
        > user-friendly name or label for the items, making it easier
        > for users to understand and manage the data associated with
        > that Type.

        > It will be used in the dropdown when another Type uses this
        > Type as a Reference field.

    3.  \<Column name\> -- choose an existing column name and your CSV
        data will be added to this column.

    4.  **Id** - This is the match to the ObjectId or Instance Id and
        will update records with the same Id if they exist in the
        database.

7.  Click **Next** when your fields are correct\
    ![Import5](../images/05a_image42.png)

8.  Click **Import** to copy the data from your CSV file into the
    database. ![Import6](../images/05a_image43.png)

# Setting up database backups

*This section details implementations using SQLite only. Implementations
using SQL Server are expected to perform their own backups.*

World of Workflows can be configured to take a backup of the full
database including all workflows, activities, variables, etc. This is
done using the Backup feature. The backup feature is configured in the
appsettings.json file as follows:

``` json
{
    "Backup": true,
    "BackupToAzureStorage": false,
    "BackupStorageConnectionString": ""
}
```

Setting `Backup` to `true` will configure the system to save a backup
file every time the server is stopped. This creates a date stamped file
in the data folder.

Setting `BackupToAzureStorage` to `true` will configure the system to
save a backup file to Azure Storage every time the server is stopped.
This creates a date stamped file in the Azure Storage account.

Configure the Azure Storage Account using the
`BackupStorageConnectionString` setting.

To recover a backup, obtain the file you want and overwrite the file
`\App`{=tex}\_data`\worldofworkflows`{=tex}.db with the backup file.
