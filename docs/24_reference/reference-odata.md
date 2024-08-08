---
title: OData Filters
layout: default
parent: Reference
nav_order: 3
---


# OData Filters

## Introduction

The Open Data Protocol (oData) is an open standard that defines a set of best practices for building and consuming RESTful APIs. oData enables the creation of HTTP-based data services, allowing clients to interact with data sources in a standardized and platform-agnostic way. This document provides a comprehensive guide to oData query syntax, which allows clients to filter, sort, and manipulate data retrieved from oData services.

## System Query Options

System query options are used to specify the data requested from an oData service. These options can be combined to create complex queries. The following system query options are available:

### Filter

The *\$filter* option is used to filter the data returned the database based on specified criteria. It supports a range of logical, arithmetic, and comparison operators.


Examples:

- Filter products with a **<span class="smallcaps">Price</span>** greater than 20:

```Price gt 20```

- Filter orders with a **<span class="smallcaps">Status</span>** of 'Shipped':

```Status eq 'Shipped'```

- Filter orders with a **<span class="smallcaps">OrderDate</span>** after midday 20 November 2024 UTC :  
  > Note that the format needs be be in UTC Z datetime format, and ***not*** surrounded by quotes.

```OrderDate gt 2024-11-20T12:00:00Z```



oData also provides a set of functions to perform operations on the data. These functions can be used within the filter 

### String Functions

- *substringof*: Checks if a substring is within a string.

```substringof({search text}, {string})```

- *length*: Returns the length of a string.

```length({string})```

- *indexof*: Returns the starting position of a substring in a string.

```indexof({string}, {search text})```

- *substring*: Returns a substring from a string.

```substring({string}, {start}, {length})```

- *tolower*: Converts a string to lowercase.

```tolower({string})```

- *toupper*: Converts a string to uppercase.

```toupper({string})```

- *trim*: Removes leading and trailing whitespace from a string.

```trim({string})```

- *concat*: Concatenates two strings.

```concat({string1}, {string2})```

## Date Functions

- *year*: Returns the year component of a date.

```year({datetime})```

- *month*: Returns the month component of a date.

```month({datetime})```

- *day*: Returns the day component of a date.

```day({datetime})```

- *hour*: Returns the hour component of a date.

```hour({datetime})```

- *minute*: Returns the minute component of a date.

```minute({datetime})```

- *second*: Returns the second component of a date.

```second({datetime})```

### Math Functions

- *round*: Rounds a number to the nearest integer.

```round({number})```

- *floor*: Rounds a number down to the nearest integer.

```floor({number})```

- *ceiling*: Rounds a number up to the nearest integer.

```ceiling({number})```