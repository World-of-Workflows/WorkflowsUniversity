---
title: Variable
layout: default
parent: Liquid Reference
nav_order: 10
---
{% raw %}
# Variable
Variable tags create new Liquid variables.

## assign
Creates a new named variable.

### Input

```liquid
{% assign my_variable = false %}
{% if my_variable != true %}
  This statement is valid.
{% endif %}
```

### Output

```This statement is valid.```
Wrap a value in quotations ```"``` to save it as a string variable.

### Input

```liquid
{% assign foo = "bar" %}
{{ foo }}
```

### Output


```bar```

## capture
Captures the string inside of the opening and closing tags and assigns it to a variable. Variables created using capture are stored as strings.

### Input

```liquid
{% capture my_variable %}I am being captured.{% endcapture %}
{{ my_variable }}
```

### Output

```I am being captured.```

Using capture, you can create complex strings using other variables created with assign.

### Input

```liquid
{% assign favorite_food = "pizza" %}
{% assign age = 35 %}

{% capture about_me %}
I am {{ age }} and my favorite food is {{ favorite_food }}.
{% endcapture %}

{{ about_me }}
```

### Output

```I am 35 and my favourite food is pizza.```

## increment
Creates and outputs a new number variable with initial value 0. On subsequent calls, it increases its value by one and outputs the new value.

### Input

```liquid
{% increment my_counter %}
{% increment my_counter %}
{% increment my_counter %}
```

### Output

```
0
1
2
```

Variables created using increment are independent from variables created using assign or capture.

In the example below, a variable named “var” is created using assign. The increment tag is then used several times on a variable with the same name. Note that the increment tag does not affect the value of “var” that was created using assign.

### Input

```liquid
{% assign var = 10 %}
{% increment var %}
{% increment var %}
{% increment var %}
{{ var }}
```

###
Output

```
0
1
2
10
```

## decrement
Creates and outputs a new number variable with initial value -1. On subsequent calls, it decreases its value by one and outputs the new value.

### Input
```liquid
{% decrement variable %}
{% decrement variable %}
{% decrement variable %}
```

### Output

```
-1
-2
-3
```

Like increment, variables declared using decrement are independent from variables created using assign or capture.

{% endraw %}