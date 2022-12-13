# The Database

Welcome to the training course on the World of Workflows database. In this course, you'll learn the basics of World of Workflows database design and management. 

The World of Workflows database is a relational database which is a collection of data organized in tables with columns and rows, allowing for easy access and manipulation of the data. You'll learn about the different types of data types, the rules of good database design, and how to use the user interface and workflows to interact with the database. By the end of this course, you'll have a solid foundation in the principles of world of workflows databases and be able to use them effectively in your work. Let's get started.

# Types
A **type** in the workflows database and a spreadsheet are similar in that they both organize data into rows and columns. However, there are some key differences between the two. A spreadsheet is typically used for storing and analyzing small amounts of data, while a table in the workflows database is designed for storing and managing large amounts of data. 

Additionally, a spreadsheet is limited in the number of rows and columns it can have, whereas a table in a relational database can have an almost unlimited number of rows and columns. 

Furthermore, a spreadsheet is typically used for simple data analysis, whereas a table in a relational database can be used to create complex queries and perform advanced data analysis.

We consider spreadsheets commonly store quite **unstructured** data whereas the database in workflows is designed to store **structured** data.

- To create a new type, follow the procedure [here](procedures/create-type.md)

## DataTypes
Each column in a workflows database **type** has a specific datattype. The datatypes determine what kind of data can be stored in the column, and how the data can be used.

For example, we can store currency values, dates, strings as simple types but also store email addresses, phone numbers, and URLs as more complex types.

## Relationships
In spreadsheets, making tables of related data is difficult, but in workflows it's really simple. You can define a relationship between a column in one **type** that references another **type**.

Workflows also allows you to export your data, edit it outside of workflows and **import** it back in. See the [module on import](import) for more information.

## Working with the database
When considering how you will configure your database, it's important to think about how you will use it. A session planning what data you will need and how you will use it is important to ensure you don't have to spend time redoing your work.

> **Developer Mode**
> Normally, in production you cannot rename or delete types or columns. This is to ensure that the data is immutable and cannot be removed. This is the normal configuration for World of Workflows. However an adminsitrator can enable developer mode which extends the system to allow these more dangerous activities.

When one works with the database, you normally:

1. Create the types you need. [See here](procedures/create-type.md)
2. Create the columns you need. [See here](procedures/create-column.md)
3. Test with some initial data
4. Refine where necessary

## Exporting Data
Exporting data to CSV (comma-separated values) is a common way to transfer data between systems or to save data in a format that can be easily read and understood by other programs. CSV is a simple, widely-supported format that can be opened and read by a variety of different programs, including spreadsheet applications like Microsoft Excel, Google Sheets, and OpenOffice Calc.

Exporting data to CSV has several benefits. First, it allows you to save data in a format that is easy to read and understand, which can be especially useful when sharing data with others who may not be familiar with the source system. Second, it allows you to transfer data between different systems or platforms, which can be useful if you need to work with the same data in different programs or on different devices. Finally, it allows you to create backups of your data, which can be useful for ensuring that your data is safe and secure in case of any problems with the original source.

To export data to CSV, follow the procedure [here](procedures/export-data.md). You can then open the CSV file in a program that supports the CSV format, such as a spreadsheet application, to view and work with the data.

## Creating a Data Diagram
A data diagram is a visual representation of a database schema that shows how different pieces of data are related to each other. This is useful because it allows people to understand the structure of a database at a glance, which can be especially helpful for people who are not familiar with databases or who are trying to understand a complex database system.

A data diagram can help to identify potential problems or inconsistencies in a database schema, and it can also be used to communicate the design of a database to others, such as other members of a development team or stakeholders in a project. By providing a clear and concise visual representation of a database, a data diagram can help to ensure that everyone is on the same page when it comes to understanding the structure and organization of the data.

You can create a diagram by following the procedure [here](procedures/data-diagram.md)

## Best practices
There are a few limits to consider in the workflows database: 

- You can currently have a maximum of 2,000 columns in a type and we would recommend you go nowhere near this. 
- Use relationships where you can to improve performance.
- Don't store large amounts of data in a single column. If you need to store a large amount of data, consider using a relationship to another type.

## Sample Database Structures
The following are some sample database structures we have created to demonstrate certain scenarios:




Previous [Introduction](introduction-module.md) | Next [Views](views.md)