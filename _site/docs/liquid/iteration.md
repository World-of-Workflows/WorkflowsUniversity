[Previous](control-flow.md) | [Home](README.md) | [Next](template.md)
{% raw %}
# Iteration

Iteration tags repeatedly run blocks of code.

## for

Repeatedly executes a block of code. For a full list of attributes available within a for loop, refer to the forloop object.

### Input

```liquid
{% for product in collection.products %}
  {{ product.title }}
{% endfor %}
```

### Output

```hat shirt pants```

## else

Specifies a fallback case for a for loop which will run if the loop has zero length.

### Input

```liquid
{% for product in collection.products %}
  {{ product.title }}
{% else %}
  The collection is empty.
{% endfor %}
```

### Output

```The collection is empty.```

## break

Causes the loop to stop iterating when it encounters the break tag.

### Input

```liquid
{% for i in (1..5) %}
  {% if i == 4 %}
    {% break %}
  {% else %}
    {{ i }}
  {% endif %}
{% endfor %}
```

### Output

```1 2 3```

## continue

Causes the loop to skip the current iteration when it encounters the continue tag.

### Input

```liquid
{% for i in (1..5) %}
  {% if i == 4 %}
    {% continue %}
  {% else %}
    {{ i }}
  {% endif %}
{% endfor %}
```

### Output

```1 2 3   5```

## for (parameters)

### limit

Limits the loop to the specified number of iterations.

#### Input

```liquid
<!-- if array = [1,2,3,4,5,6] -->
{% for item in array limit:2 %}
  {{ item }}
{% endfor %}
```

#### Output

```1 2```

### offset

Begins the loop at the specified index.

#### Input

```liquid
<!-- if array = [1,2,3,4,5,6] -->
{% for item in array offset:2 %}
  {{ item }}
{% endfor %}
```

#### Output

```3 4 5 6```

To start a loop from where the last loop using the same iterator left off, pass the special word continue.

#### Input

```liquid
<!-- if array = [1,2,3,4,5,6] -->
{% for item in array limit: 3 %}
  {{ item }}
{% endfor %}
{% for item in array limit: 3 offset: continue %}
  {{ item }}
{% endfor %}
```

#### Output

```
1 2 3
4 5 6
```

### range

Defines a range of numbers to loop through. The range can be defined by both literal and variable numbers, and can be pulled from a variable.

#### Input

```liquid
{% for i in (3..5) %}
  {{ i }}
{% endfor %}

{% assign num = 4 %}
{% assign range = (1..num) %}
{% for i in range %}
  {{ i }}
{% endfor %}
```

#### Output

```
3 4 5
1 2 3 4
```

### reversed

Reverses the order of the loop. Note that this flag’s spelling is different from the filter reverse.

#### Input

```liquid
<!-- if array = [1,2,3,4,5,6] -->
{% for item in array reversed %}
  {{ item }}
{% endfor %}
```

#### Output

```6 5 4 3 2 1```

## forloop (object)

Information about a parent for loop.

```json
{
  "first": true,
  "index": 1,
  "index0": 0,
  "last": false,
  "length": 4,
  "rindex": 3
}
```

### Use the forloop object
 #### Input

```liquid
{% assign smoothie_flavors = "orange, strawberry, banana" | split: ", " %}

{% for flavor in smoothie_flavors -%}
  {%- if forloop.length > 0 -%}
    {{ flavor }}{% unless forloop.last %}-{% endunless -%}
  {%- endif -%}
{% endfor %}
```

#### Output

```orange-strawberry-banana```

### forloop (properties)
| Property | Description | Returns |
| --- | --- | --- |
| length | The total number of iterations in the loop. | number
| parentloop | The parent forloop object. If the current for loop isn’t nested inside another for loop, then nil is returned. | forloop
| index | The 1-based index of the current iteration. | number
| index0 | The 0-based index of the current iteration. | number
| rindex | The 1-based index of the current iteration, in reverse order. | number
| rindex0 | The 0-based index of the current iteration, in reverse order. | number
| first | Returns true if the current iteration is the first. Returns false if not. | boolean
| last | Returns true if the current iteration is the last. Returns false if not. | boolean


## cycle

Loops through a group of strings and prints them in the order that they were passed as arguments. Each time cycle is called, the next string argument is printed.

cycle must be used within a for loop block.

### Input

```liquid
{% cycle "one", "two", "three" %}
{% cycle "one", "two", "three" %}
{% cycle "one", "two", "three" %}
{% cycle "one", "two", "three" %}
```

### Output

```
one
two
three
one
```

### Uses for cycle include:

- applying odd/even classes to rows in a table
- applying a unique class to the last product thumbnail in a row

### cycle (parameters)

cycle accepts a “cycle group” parameter in cases where you need multiple cycle blocks in one template. If no name is supplied for the cycle group, then it is assumed that multiple calls with the same parameters are one group.

#### Input

```liquid
{% cycle "first": "one", "two", "three" %}
{% cycle "second": "one", "two", "three" %}
{% cycle "second": "one", "two", "three" %}
{% cycle "first": "one", "two", "three" %}
```

#### Output

```
one
one
two
two
```

### tablerow
Generates an HTML table. Must be wrapped in opening ```<table>``` and closing ```</table>``` HTML tags. For a full list of attributes available within a tablerow loop, refer to the tablerowloop object.

#### Input

```liquid
<table>
{% tablerow product in collection.products %}
  {{ product.title }}
{% endtablerow %}
</table>
```

#### Output

```html
<table>
  <tr class="row1">
    <td class="col1">
      Cool Shirt
    </td>
    <td class="col2">
      Alien Poster
    </td>
    <td class="col3">
      Batman Poster
    </td>
    <td class="col4">
      Bullseye Shirt
    </td>
    <td class="col5">
      Another Classic Vinyl
    </td>
    <td class="col6">
      Awesome Jeans
    </td>
  </tr>
</table>
```

## tablerow (parameters)

### cols
Defines how many columns the tables should have.

#### Input

```liquid
{% tablerow product in collection.products cols:2 %}
  {{ product.title }}
{% endtablerow %}
```

#### Output

```html
<table>
  <tr class="row1">
    <td class="col1">
      Cool Shirt
    </td>
    <td class="col2">
      Alien Poster
    </td>
  </tr>
  <tr class="row2">
    <td class="col1">
      Batman Poster
    </td>
    <td class="col2">
      Bullseye Shirt
    </td>
  </tr>
  <tr class="row3">
    <td class="col1">
      Another Classic Vinyl
    </td>
    <td class="col2">
      Awesome Jeans
    </td>
  </tr>
</table>
```

### limit
Exits the tablerow loop after a specific index.

```liquid
{% tablerow product in collection.products cols:2 limit:3 %}
  {{ product.title }}
{% endtablerow %}
```

### offset

Starts the tablerow loop after a specific index.

```liquid
{% tablerow product in collection.products cols:2 offset:3 %}
  {{ product.title }}
{% endtablerow %}
```

### range
Defines a range of numbers to loop through. The range can be defined by both literal and variable numbers.

```liquid
<!--variable number example-->

{% assign num = 4 %}
<table>
{% tablerow i in (1..num) %}
  {{ i }}
{% endtablerow %}
</table>
```

```liquid
<!--literal number example-->

<table>
{% tablerow i in (3..5) %}
  {{ i }}
{% endtablerow %}
</table>
```

### tablerowloop (object)

Information about a parent tablerow loop.

```json
{
  "col": 1,
  "col0": 0,
  "col_first": true,
  "col_last": false,
  "first": true,
  "index": 1,
  "index0": 0,
  "last": false,
  "length": 5,
  "rindex": 5,
  "rindex0": 4,
  "row": 1
}
```


### tablerowloop (properties)
| Property | Description | Returns |
| --- | --- | --- |
| col | The 1-based index of the current column. | number
| col0 | The 0-based index of the current column. | number
| col_first | Returns true if the current column is the first in the row. Returns false if not. | boolean
| col_last | Returns true if the current column is the last in the row. Returns false if not. | boolean
| first | Returns true if the current iteration is the first. Returns false if not. | boolean
| index | The 1-based index of the current iteration. | number
| index0 | The 0-based index of the current iteration. | number
| last | Returns true if the current iteration is the last. Returns false if not. | boolean
| length | The total number of iterations in the loop. | number
| rindex | The 1-based index of the current iteration, in reverse order. | number
| rindex0 | The 0-based index of the current iteration, in reverse order. | number
| row | The 1-based index of current row. | number

[Previous](control-flow.md) | [Home](README.md) | [Next](template.md)
{% endraw %}