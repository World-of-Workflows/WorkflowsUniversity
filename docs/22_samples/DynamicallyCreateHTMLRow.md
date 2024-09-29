---
title: Dynamically create row in HTML table  
layout: default
parent: Sample Workflows
xgrand_parent: Reference
nav_order: 6
---
{% raw %}

# Dynamically create row in HTML table

Let's say you want to build a table in your from your World of Workflows HTTP Response to show your data.

We use a JavaScript to dynamically create a new row in an HTML table. This row contains various input fields and controls related to a purchase order or similar transactional data entry form. 

### Breakdown of the Code

1. **Dynamic Row Creation**: 
   - `newRow.innerHTML = ...`: This line sets the inner HTML of a newly created row element (`newRow`) to a template string containing the HTML structure for the row.

2. **Input Fields**:
   - Each cell (`<td>`) contains an input field where users can enter or modify data.
   - The input fields include:
     - **Description**: Text input for item description.
     - **Quantity**: Numeric input for the quantity of items. Includes an `oninput` event that triggers a `calculateTotal` function when the value changes.
     - **Quantity Received**: Numeric input for the quantity of items received (read-only).
     - **Unit Price**: Numeric input for the price per unit, also triggering `calculateTotal`.
     - **Discount**: Numeric input for discount percentage, triggering `calculateTotal`.
     - **Tax Rate**: Dropdown (`<select>`) to choose a tax type, with an `onchange` event to calculate totals based on the selected value.
     - **Total**: A cell that will display the total amount, updated dynamically.
     - **Received Total**: Displays the total received amount for the item.
     - **Job Item**: Another dropdown for job selection.

3. **Remove Button**:
   - A button to remove the row from the table, triggering the `removeRow` function when clicked.

4. **Hidden Input**:
   - A hidden input to store the `objectId` associated with the item.

5. **Conditional Attributes**: 
   - The `{% if ... %}` statements are Liquid templating syntax, which conditionally apply attributes (like `readonly`, `disabled`, etc.) based on the `Variables.IsEdit` value or other conditions (e.g., item status).

### Example Simplified Implementation

Below is a simplified version of the code that demonstrates the same functionality without the complexity of conditional logic and Liquid syntax. This version creates a static row with inputs and a remove button.

```html
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Dynamic Row Example</title>
    <style>
        .border { border: 1px solid #ccc; }
        .py-2 { padding: 0.5rem 0; }
        .px-2 { padding: 0 0.5rem; }
        .text-right { text-align: right; }
        .flex { display: flex; }
        .justify-center { justify-content: center; }
    </style>
</head>
<body>

<table id="items-table">
    <thead>
        <tr>
            <th>Description</th>
            <th>Quantity</th>
            <th>Unit Price</th>
            <th>Total</th>
            <th>Actions</th>
        </tr>
    </thead>
    <tbody id="items-table-body">
        <!-- Dynamic rows will be inserted here -->
    </tbody>
</table>

<button id="addRowButton">Add Row</button>

<script>
    document.getElementById('addRowButton').addEventListener('click', function() {
        const rowIndex = document.querySelectorAll('#items-table-body tr').length + 1; // Calculate the new row index
        const newRow = document.createElement('tr');
        newRow.innerHTML = `
            <td class="border"><input type="text" id="description-${rowIndex}" name="description-${rowIndex}" placeholder="Description" class="w-full px-2 py-2 border-none" required></td>
            <td class="border"><input type="number" step="0.00001" id="quantity-${rowIndex}" name="quantity-${rowIndex}" class="w-full px-2 py-2 border-none text-right" required {% if Variables.IsEdit== false %}disabled{% endif %}></td>
            <td class="border"><input type="number" step="0.00001" id="unitprice-${rowIndex}" name="unitprice-${rowIndex}" class="w-full px-2 py-2 border-none text-right" required></td>
            <td class="border text-right total-cell" id="total-${rowIndex}">$0.00</td>
            <td class="border">
                <button type="button" onclick="removeRow(this)">Remove</button>
            </td>
        `;
        document.getElementById('items-table-body').appendChild(newRow);
    });

    function removeRow(button) {
        const row = button.closest('tr');
        row.remove();
    }
</script>

</body>
</html>
```

### Explanation of the Simplified Implementation:

1. **HTML Structure**:
   - A basic HTML structure with a table that contains a header and a body. The body (`#items-table-body`) is where dynamic rows will be added.

2. **Add Row Button**:
   - A button that allows the user to add a new row to the table.

3. **JavaScript Functionality**:
   - **Event Listener**: When the "Add Row" button is clicked, a new row is created.
   - **Row Creation**: The row includes:
     - Description input
     - Quantity input
     - Unit price input
     - Total cell (initially set to $0.00)
     - Remove button
   - **Dynamic Indexing**: The `rowIndex` variable keeps track of the row count.
   - **Remove Row Function**: A function that removes the row when the "Remove" button is clicked.

4. **Styling**:
   - Some basic styles are provided for borders and padding to enhance the visual layout.

### Conclusion
This simplified version provides a clearer and more accessible example of how to dynamically manage rows in a table with input fields and actions. You can expand it further by reintroducing the more complex logic and templating as needed for your specific application.
{% endraw %}