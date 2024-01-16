---
title: Control Flow
layout: default
parent: Liquid Reference
nav_order: 8
---

# Control flow
{% raw %}
Control flow tags create conditions that decide whether blocks of Liquid code get executed.

## if
Executes a block of code only if a certain condition is true.

### Input

```liquid
{% if product.title == "Awesome Shoes" %}
  These shoes are awesome!
{% endif %}
```

### Output

```These shoes are awesome!```


## unless

The opposite of if – executes a block of code only if a certain condition is not met.

### Input

```liquid
{% unless product.title == "Awesome Shoes" %}
  These shoes are not awesome.
{% endunless %}
```

### Output

```These shoes are not awesome.```

This would be the equivalent of doing the following:

```liquid
{% if product.title != "Awesome Shoes" %}
  These shoes are not awesome.
{% endif %}
```

## elsif / else

Adds more conditions within an if or unless block.

### Input

```liquid
<!-- If customer.name = "anonymous" -->
{% if customer.name == "kevin" %}
  Hey Kevin!
{% elsif customer.name == "anonymous" %}
  Hey Anonymous!
{% else %}
  Hi Stranger!
{% endif %}
```

### Output

```Hey Anonymous!```

## case/when

Creates a switch statement to execute a particular block of code when a variable has a specified value. ```case``` initializes the switch statement, and ```when``` statements define the various conditions.

A ```when``` tag can accept multiple values. When multiple values are provided, the expression is returned when the variable matches any of the values inside of the tag. Provide the values as a comma-separated list, or separate them using an or operator.

An optional else statement at the end of the case provides code to execute if none of the conditions are met.

### Input

```liquid
{% assign handle = "cake" %}
{% case handle %}
  {% when "cake" %}
     This is a cake
  {% when "cookie", "biscuit" %}
     This is a cookie
  {% else %}
     This is not a cake nor a cookie
{% endcase %}
```
### Output

```This is a cake```

[Previous](whitespace-control.html) | [Home](README.html) | [Next](iteration.html)

{% endraw %}