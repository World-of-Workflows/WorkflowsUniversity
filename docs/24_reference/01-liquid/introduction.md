---
title: Introduction
layout: default
parent: Liquid Reference
grand_parent: Reference
nav_order: 1
---

{% raw %}
## Introduction

Liquid uses a combination of objects, tags, and filters inside template files to display dynamic content.

### Objects
Objects contain the content that Liquid displays on a page. Objects and variables are displayed when enclosed in double curly braces: ```{{``` and ```}}```.

#### Input

```liquid
{{ page.title }}
```

#### Output

```liquid
Introduction
```

In this case, Liquid is rendering the content of the title property of the page object, which contains the text Introduction.

### Tags
Tags create the logic and control flow for templates. The curly brace percentage delimiters ```{%``` and ```%}``` and the text that they surround do not produce any visible output when the template is rendered. This lets you assign variables and create conditions or loops without showing any of the Liquid logic on the page.

#### Input

```liquid
{% if user %}
  Hello {{ Variables.user.name }}!
{% endif %}
```

Output

```liquid
Hello Adam!
```

Tags can be categorized into various types:

- Control flow
- Iteration
- Template
- Variable assignment

You can read more about each type of tag in their respective sections.

### Filters
Filters change the output of a Liquid object or variable. They are used within double curly braces ```{{ }}``` and variable assignment, and are separated by a pipe character ```|```.

#### Input

```liquid
{{ "/my/fancy/url" | append: ".html" }}
```

#### Output

```liquid
/my/fancy/url.html
```

Multiple filters can be used on one output, and are applied from left to right.

#### Input

```liquid
{{ "adam!" | capitalize | prepend: "Hello " }}
```

#### Output

```liquid
Hello Adam!
```

[Home](README.html) | [Next](operators.html)

{% endraw %}