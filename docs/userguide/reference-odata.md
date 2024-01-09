---
title: OData Filters
layout: default
parent: Reference
grand_parent: User Guide
nav_order: 3
---


# OData Filters

## Introduction

The Open Data Protocol (oData) is an open standard that defines a set of best practices for building and consuming RESTful APIs. oData enables the creation of HTTP-based data services, allowing clients to interact with data sources in a standardized and platform-agnostic way. This document provides a comprehensive guide to oData query syntax, which allows clients to filter, sort, and manipulate data retrieved from oData services.

## System Query Options

System query options are used to specify the data requested from an oData service. These options can be combined to create complex queries. The following system query options are available:

### Filer

The *\$filter* option is used to filter the data returned the databse based on specified criteria. It supports a range of logical, arithmetic, and comparison operators.

``filter_expression```

Examples:

- Filter products with a **<span class="smallcaps">Price</span>** greater than 20:

```Price gt 20```

- Filter orders with a **<span class="smallcaps">Status</span>** of 'Shipped':

```Status eq 'Shipped'```



oData also provides a set of functions to perform operations on the data. These functions can be used within the filter 

### String Functions

- *substringof*: Checks if a substring is within a string.

- *length*: Returns the length of a string.

- *indexof*: Returns the starting position of a substring in a string.

- *substring*: Returns a substring from a string.

- *tolower*: Converts a string to lowercase.

- *toupper*: Converts a string to uppercase.

- *trim*: Removes leading and trailing whitespace from a string.

- *concat*: Concatenates two strings.

## Date Functions

- *year*: Returns the year component of a date.

- *month*: Returns the month component of a date.

- *day*: Returns the day component of a date.

- *hour*: Returns the hour component of a date.

- *minute*: Returns the minute component of a date.

- *second*: Returns the second component of a date.

### Math Functions

- *round*: Rounds a number to the nearest integer.

- *floor*: Rounds a number down to the nearest integer.

- *ceiling*: Rounds a number up to the nearest integer.

