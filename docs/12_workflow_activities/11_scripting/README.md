---
title: Scripting
layout: default
nav_order: 11
parent: Workflow Activities
has_children: false
---

# Run JavaScript

**Description:** Run JavaScript code.

**Category:** Scripting

**Properties:**
- **Script**: The JavaScript to run.
- **PossibleOutcomes**: The possible outcomes that can be set by the script.

**Input Properties:**
- **Script**: The JavaScript to run.
- **PossibleOutcomes**: The possible outcomes that can be set by the script.

use
```js
setOutcome("Outcome Name");
```

to set an outcome

**Output Properties:**
- **Output**: Whatever you set the output to be in the script.

use
```js
setVariable("Name","Value");
```

to set a variable
