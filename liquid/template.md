[Previous](iteration.md) | [Home](README.md) | [Next](variable.md)

# Template
Template tags tell Liquid where to disable processing for comments or non-Liquid markup, and how to establish relations among template files.

## comment
Allows you to leave un-rendered code inside a Liquid template. Any text within the opening and closing comment blocks will not be printed, and any Liquid code within will not be executed.

### Input

```liquid
{% assign verb = "turned" %}
{% comment %}
{% assign verb = "converted" %}
{% endcomment %}
```

Anything you put between ```{% comment %}``` and ```{% endcomment %}``` tags
is ```{{ verb }}``` into a comment.

### Output
```
Anything you put between  tags
is turned into a comment.
```

### Inline comments
You can use inline comments to prevent an expression from being rendered or output. Any text inside of the tag also won’t be rendered or output.

You can create multi-line inline comments. However, each line must begin with a #.

#### Input

```liquid
{% # for i in (1..3) -%}
  {{ i }}
{% # endfor %}

{%
  ###############################
  # This is a comment
  # across multiple lines
  ###############################
%}
```

#### Output



### Inline comments inside liquid tags
You can use the inline comment tag inside liquid tags. The tag must be used for each line that you want to comment.

#### Input

```liquid
{% liquid
  # this is a comment
  assign topic = 'Learning about comments!'
  echo topic
%}
```

#### Output

```Learning about comments!```

### raw
Temporarily disables tag processing. This is useful for generating certain content that uses conflicting syntax, such as [Mustache](https://mustache.github.io/) or [Handlebars](https://handlebarsjs.com/).

#### Input

```liquid
{% raw %}
In Handlebars, {{ this }} will be HTML-escaped, but {{{ that }}} will not.
{% endraw %}
```

#### Output


```In Handlebars, {{ this }} will be HTML-escaped, but {{{ that }}} will not.```

### liquid
Encloses multiple tags within one set of delimiters, to allow writing Liquid logic more concisely.

```liquid
{% liquid
case section.blocks.size
when 1
  assign column_size = ''
when 2
  assign column_size = 'one-half'
when 3
  assign column_size = 'one-third'
else
  assign column_size = 'one-quarter'
endcase %}
```
Because any tag blocks opened within a liquid tag must also be closed within the same tag, use echo to output data.

### echo
Outputs an expression in the rendered HTML. This is identical to wrapping an expression in ```{{``` and ```}}```, but works inside liquid tags and supports filters.

#### Input

```liquid
{% liquid
for product in collection.products
  echo product.title | capitalize
endfor %}
```

#### Output

```Hat Shirt Pants```

### render
Insert the rendered content of another template within the current template.

```liquid
{% render "template-name" %}
```

> Note that you don’t need to write the file’s .liquid extension.

The code within the rendered template does not automatically have access to the variables assigned using variable tags within the parent template. Similarly, variables assigned within the rendered template cannot be accessed by code in any other template.

### render (parameters)
Variables assigned using variable tags can be passed to a template by listing them as parameters on the render tag.

```liquid
{% assign my_variable = "apples" %}
{% render "name", my_variable: my_variable, my_other_variable: "oranges" %}
```
One or more objects can be passed to a template.

```liquid
{% assign featured_product = all_products["product_handle"] %}
{% render "product", product: featured_product %}
```

with
A single object can be passed to a template by using the with and optional as parameters.

```liquid
{% assign featured_product = all_products["product_handle"] %}
{% render "product" with featured_product as product %}
```

In the example above, the product variable in the rendered template will hold the value of featured_product from the parent template.

### for
A template can be rendered once for each value of an enumerable object by using the for and optional as parameters.

```liquid
{% assign variants = product.variants %}
{% render "product_variant" for variants as variant %}
```
In the example above, the template will be rendered once for each variant of the product, and the variant variable will hold a different product variant object for each iteration.

When using the for parameter, the forloop object is accessible within the rendered template.

### include
The include tag is deprecated; please use render instead.

Insert the rendered content of another template within the current template.

```liquid
{% include "template-name" %}
```

The include tag works similarly to the render tag, but it allows the code inside of the rendered template to access and overwrite the variables within its parent template. It has been deprecated because the way that it handles variables reduces performance and makes Liquid code harder to both read and maintain.

Note that when a template is rendered using the render tag, the include tag cannot be used within the template.

[Previous](iteration.md) | [Home](README.md) | [Next](variable.md)