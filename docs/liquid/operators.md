---
title: Operators
layout: default
parent: Liquid Reference
nav_order: 2
---
{% raw %}
# Operators
Liquid includes many logical and comparison operators. You can use operators to create logic with control flow tags.

## Basic operators

| Operator | Description |
| -- | -- |
| == | 	equals |
| != |	does not equal | 
| > | greater than |
|< | less than |
|>= | greater than or equal to |
|<= | less than or equal to |
|or | logical or |
|and | logical and |

For example:

```liquid
{% if product.title == "Awesome Shoes" %}
  These shoes are awesome!
{% endif %}
```

You can do multiple comparisons in a tag using the and and or operators:

```liquid
{% if product.type == "Shirt" or product.type == "Shoes" %}
  This is a shirt or a pair of shoes.
{% endif %}
```

#### contains

contains checks for the presence of a substring inside a string.

```liquid
{% if product.title contains "Pack" %}
  This product's title contains the word Pack.
{% endif %}
```
contains can also check for the presence of a string in an array of strings.

```liquid
{% if product.tags contains "Hello" %}
  This product has been tagged with "Hello".
{% endif %}
```
contains can only search strings. You cannot use it to check for an object in an array of objects.

## Order of operations
In tags with more than one ```and``` or ```or``` operator, operators are checked in order from right to left. You cannot change the order of operations using parentheses — parentheses are invalid characters in Liquid and will prevent your tags from working.

```liquid
{% if true or false and false %}
  This evaluates to true, since the `and` condition is checked first.
{% endif %}
```

```liquid
{% if true and false and false or true %}
  This evaluates to false, since the tags are checked like this:

  true and (false and (false or true))
  true and (false and true)
  true and false
  false
{% endif %}
```

[Previous](introduction.html) | [Home](README.html) | [Next](filters.html)

{% endraw %}