---
title: DataTypes
layout: default
parent: Reference
grand_parent: User Guide
nav_order: 1
---

## Data Types

Data types is the name given to field types in the database. By using data types, you can control how data is stored in the database and how it is displayed to the end user. The following datatypes are available in World of Workflows:

| Id  | Data Type   | Use                                                                                                                                                     |
|-----|-------------|---------------------------------------------------------------------------------------------------------------------------------------------------------|
| 1   | Big Integer | The Big Integer data type is commonly used to reference another Type, but can be used anywhere an extremely large whole number is required.             |
| 2   | Integer     | The Integer data type is used where a whole positive or negative number is required.                                                                    |
| 3   | Decimal 2   | This is a decimal number with two digits of precision, commonly used for representing monetary amounts.                                                 |
| 4   | Decimal 5   | This is a decimal number with 5 digits of precision, commonly used for representing floating point numbers.                                             |
| 5   | True/False  | This is commonly known as the Boolean data type and holds anything that can have only two values.                                                       |
| 6   | String      | Strings are any length collections of character strings, stored in UTF-8                                                                                |
| 7   | DateTime    | Stored in the database as UTC DateTime and shown in the interface as local datetime, The DateTime DataType is used for storing dates and times or both. |
| 8   | Url         | This is a string which represents a hyperlink                                                                                                           |
| 9   | Embed       | This is a string which can contain a html embed code.                                                                                                   |

*Note on storing Binary in the database. We have deliberately chosen not to provide a binary data type, Instead we recommend to use JavaScript inside of workflows to Base64Encode/Decode and store the data in a String DataType. This is because of direct limitations of some of our supported database platforms not allowing binary types.*