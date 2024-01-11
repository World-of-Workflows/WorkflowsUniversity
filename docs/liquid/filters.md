---
title: Filters
layout: default
parent: Liquid Reference
nav_order: 3
---

{% raw %}
# Filters

The following table contains filters available using Liquid.



| Filter | Description | Input | Output |
| --- | --- | --- | --: |
| abs | Returns the absolute value of a number. | ```{{ -17 | abs }}``` | 17 |
| append | Adds the specified string to the end of another string | ```{{ "/my/fancy/url" | append: ".html" }}``` | ```/my/fancy/url.html``` |
| at_least | Limits a number to a minimum value. | ```{{ 5 | at_least: 3 }}``` | ```5``` |
| at_most | Limits a number to a maximum value. | ```{{ 4 | at_most: 3 }}``` | ```3``` |
| capitalize | Makes the first character of a string capitalized and converts the remaining characters to lowercase. | ```{{ "hello world" | capitalize }}``` | ```Hello world``` |
| ceil | Rounds a number up to the nearest integer. | ```{{ 4.2 | ceil }}``` | ```5``` |
| compact | Removes any ```nil``` values from an array. | ```{{ [1, 2, 3, "", nil, false] | compact }}``` | ```[1, 2, 3]``` |
| concat | Concatenates two strings. | ```{{ "hello" | concat: " world" }}``` | ```hello world``` |
| date | Formats a date. | ```{{ "2016-01-01" | date: "%Y" }}``` | ```2016``` |
| default | Returns the specified value if the input is ```nil```, false or an empty string. | ```{{ nil | default: "hello" }}``` | ```hello``` |
| divided_by | Divides a number by another number. | ```{{ 100 | divided_by: 2 }}``` | ```50``` |
| downcase | Converts a string to lowercase. | ```{{ "Hello World" | downcase }}``` | ```hello world``` |
| escape | Escapes a string. | ```{{ "<script>" | escape }}``` | ```&lt;script&gt;``` |
| escape_once | Escapes a string once. | ```{{ "<script>" | escape_once }}``` | ```&lt;script&gt;``` |
| first | Returns the first element of an array. | ```{{ [1, 2, 3] | first }}``` | ```1``` |
| floor | Rounds a number down to the nearest integer. | ```{{ 4.2 | floor }}``` | ```4``` |
| join | Joins the elements of an array with a specified string. | ```{{ [1, 2, 3] | join: ", " }}``` | ```1, 2, 3``` |
| last | Returns the last element of an array. | ```{{ [1, 2, 3] | last }}``` | ```3``` |
| lstrip | Removes whitespace from the left side of a string. | ```{{ " hello world " | lstrip }}``` | ```hello world ``` |
| map | Applies a filter to each element of an array. | ```{{ [1, 2, 3] | map: "plus: 1" }}``` | ```[2, 3, 4]``` |
| minus | Subtracts a number from another number. | ```{{ 100 | minus: 50 }}``` | ```50``` |
| modulo | Returns the remainder of a number divided by another number. | ```{{ 100 | modulo: 3 }}``` | ```1``` |
| newline_to_br | Converts newlines to ```<br>``` tags. | ```{{ "hello \n world" | newline_to_br }}``` | ```hello <br> world``` |
| plus | Adds a number to another number. | ```{{ 100 | plus: 50 }}``` | ```150``` |
| prepend | Adds the specified string to the beginning of another string. | ```{{ "fancy/url" | prepend: "/my/" }}``` | ```/my/fancy/url``` |
| remove | Removes all instances of a specified string from another string. | ```{{ "hello world" | remove: "l" }}``` | ```heo word``` |
| remove_first | Removes the first instance of a specified string from another string. | ```{{ "hello world" | remove_first: "l" }}``` | ```hello word``` |
| replace | Replaces all instances of a specified string with another string. | ```{{ "hello world" | replace: "l", "p" }}``` | ```heppo worpd``` |
| reverse | Reverses the order of the elements in an array. | ```{{ [1, 2, 3] | reverse }}``` | ```[3, 2, 1]``` |
| round | Rounds a number to the nearest integer. | ```{{ 4.2 | round }}``` | ```4``` |
| rstrip | Removes whitespace from the right side of a string. | ```{{ " hello world " | rstrip }}``` | ``` hello world``` |
| size | Returns the size of an array or string. | ```{{ [1, 2, 3] | size }}``` | ```3``` |
| slice | Returns a slice of an array. | ```{{ [1, 2, 3] | slice: 1, 2 }}``` | ```[2, 3]``` |
| sort | Sorts the elements of an array. | ```{{ [3, 2, 1] | sort }}``` | ```[1, 2, 3]``` |
| sort_natural | Sorts the elements of an array in natural order. | ```{{ ["a1", "a2", "a10"] | sort_natural }}``` | ```["a1", "a2", "a10"]``` |
| split | Splits a string into an array. | ```{{ "hello world" | split: " " }}``` | ```["hello", "world"]``` |
| strip | Removes whitespace from both sides of a string. | ```{{ " hello world " | strip }}``` | ```hello world``` |
| strip_html | Removes HTML tags from a string. | ```{{ "<p>hello world</p>" | strip_html }}``` | ```hello world``` |
| strip_newlines | Removes newlines from a string. | ```{{ "hello \n world" | strip_newlines }}``` | ```hello world``` |
| times | Multiplies a number by another number. | ```{{ 100 | times: 2 }}``` | ```200``` |
| truncate | Truncates a string to a specified length. | ```{{ "hello world" | truncate: 5 }}``` | ```hello...``` |
| truncatewords | Truncates a string to a specified number of words. | ```{{ "hello world" | truncatewords: 1 }}``` | ```hello...``` |
| uniq | Removes duplicate elements from an array. | ```{{ [1, 2, 3, 2, 1] | uniq }}``` | ```[1, 2, 3]``` |
| upcase | Converts a string to uppercase. | ```{{ "Hello World" | upcase }}``` | ```HELLO WORLD``` |
| url_encode | URL encodes a string. | ```{{ "hello world" | url_encode }}``` | ```hello%20world``` |
| url_decode | URL decodes a string. | ```{{ "hello%20world" | url_decode }}``` | ```hello world``` |
| where | Filters an array of objects by a specified property. | ```{{ site.posts | where: "title", "hello world" }}``` | ```[<Post title="hello world">]``` |
{% endraw %}




