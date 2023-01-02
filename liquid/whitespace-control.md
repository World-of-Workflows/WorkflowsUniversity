[Previous](expressions-in-workflows.md) | [Home](README.md) | [Next](control-flow.md)
{% raw %}
# Whitespace control

In Liquid, you can include a hyphen in your tag syntax ```{{-```, ```-}}```, ```{%-```, and ```-%}``` to strip whitespace from the left or right side of a rendered tag.

Normally, even if it doesn’t print text, any line of Liquid in your template will still print a blank line in your rendered HTML:

## Input

```liquid
{% assign my_variable = "tomato" %}
{{ my_variable }}
```

Notice the blank line before “tomato” in the rendered template:

## Output

```

tomato
```

By including a hyphen in your assign closing delimiter, you can strip the whitespace following it from the rendered template:

## Input

```liquid
{% assign my_variable = "tomato" -%}
{{ my_variable }}
```

## Output

```
tomato
```

If you don’t want any of your tags to print whitespace, as a general rule you can add hyphens to both sides of all your tags (```{%-``` and ```-%}```):

## Input

```liquid
{% assign username = "John G. Chalmers-Smith" %}
{% if username and username.size > 10 %}
  Wow, {{ username }} , you have a long name!
{% else %}
  Hello there!
{% endif %}
```

## Output without whitespace control



```  Wow, John G. Chalmers-Smith , you have a long name!```

Input

```liquid
{% assign username = "John G. Chalmers-Smith" -%}
{%- if username and username.size > 10 -%}
  Wow, {{ username -}} , you have a long name!
{%- else -%}
  Hello there!
{%- endif %}
```

## Output with whitespace control

```Wow, John G. Chalmers-Smith, you have a long name!```

[Previous](expressions-in-workflows.md) | [Home](README.md) | [Next](control-flow.md)

{% endraw % }