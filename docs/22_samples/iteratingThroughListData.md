---
title: Combining JavaScript and Liquid 
layout: default
parent: Sample Workflows
xgrand_parent: Reference
nav_order: 6
---
{% raw %}

# Combining JavaScript and Liquid

## Using JSON variables
If your workflow variable is a JSON object, use this syntax:

```liquid
{{ Variables.NameOfVariable | json | raw}}
```

For example:
You have an API that returns a list of companies in JSON.
You create an HTTP Request activity that calls the API, returning JSON.
You can use this JavaScript to create your variable Companies:
`activities.getCompanies.ResponseContent()`

The equivalent command in Liquid is {{ActivitiesgetCompanies.ResponseContent}}

In this case you will use this syntax in your HTTP Response to use the variable `Companies`:
```liquid
{{ Variables.Companies | json | raw}}
```

### Iterating through liquid variables in JavaScript
See also [Iteration](./iteration.html) for details.

Your web page will very likely use JavaScript to improve the user experience.  You will want to build up JavaScript variables from the variables created with [Set Variables](../../12_workflow_activities/09_Primitives/06_set-variable.html) or [ObjectInstanceList](../../08_handling%20_the_data/listingData.html) activities, which you include in the workflow prior to displaying the HTML page.

For example, let's say we have a `ObjectInstanceList` activity with the Name of 'GetJobItems'.  We want to write JavaScript for our web page that manipulates this data somehow, maybe filtering it based on a value on the page.  JavaScript is needed because we want changes to be dynamic, and we don't want to go back to the server for these UI changes.

Here is a sample, which uses a jobId set elsewhere on the page and filters data from the 'GetJobItems' activity:

```js
<script>

        const jobItemsData = [
        {% for item in Activities.GetJobItems.ExpandedOutput %}
            { "objectId": {{item.ObjectId}}, "title": "{{item.Title}}", "jobId": {{item.Job.ObjectId}} },
        {% endfor %}
        ]; 

        function getJobItemsOptions(jobId, selectedJobItem) {
            const thisJobsItems = jobItemsData.filter(item => item.jobId === jobId);

            let jobItemOptions = '';
            thisJobsItems.forEach(item => {
                const isSelected = item.objectId == selectedJobItem ? 'selected' : '';
                jobItemOptions += `<option value="${item.objectId}" ${isSelected}>${item.title}</option>`;
            });
            return jobItemOptions;
        }

</script>
```

This JavaScript code generates a list of `<option>` elements for a dropdown menu based on job items related to a specific job. Here's a detailed breakdown:

### Breakdown:

1. **Array Creation (`jobItemsData`)**:
   - The code creates a JavaScript array called `jobItemsData` by looping through a list of job items from the server-side `Activities.GetJobItems.ExpandedOutput`.
   - Each job item object has three properties: 
     - `objectId`: The unique identifier for the job item.
     - `title`: The title of the job item.
     - `jobId`: The identifier of the related job.

   ```javascript
   const jobItemsData = [
        { "objectId": 1, "title": "Job Item 1", "jobId": 100 },
        { "objectId": 2, "title": "Job Item 2", "jobId": 101 },
        // More job items...
    ]; 
   ```

   This array will contain all the job items, with each job item tied to a particular job.

2. **Function to Get Options (`getJobItemsOptions`)**:
   - **Purpose**: This function generates the `<option>` elements for a dropdown menu based on the job's ID and the currently selected job item.
   - **Parameters**:
     - `jobId`: The ID of the job for which you want to get job items.
     - `selectedJobItem`: The ID of the currently selected job item (for marking it as `selected` in the dropdown).
   
   **Logic**:
   - First, it filters the `jobItemsData` array to get only the job items that match the provided `jobId`.
   - Then, for each of these job items, it creates an HTML `<option>` element.
     - If the `objectId` of the item matches the `selectedJobItem`, it adds the `selected` attribute to that option (to mark it as selected in the dropdown).
   - Finally, it returns a string containing the generated `<option>` elements.

   **Code Example**:
   ```javascript
   function getJobItemsOptions(jobId, selectedJobItem) {
       // Filter job items by the given jobId
       const thisJobsItems = jobItemsData.filter(item => item.jobId === jobId);

       let jobItemOptions = '';
       // Loop through the filtered job items and create <option> elements
       thisJobsItems.forEach(item => {
           const isSelected = item.objectId == selectedJobItem ? 'selected' : '';
           jobItemOptions += `<option value="${item.objectId}" ${isSelected}>${item.title}</option>`;
       });
       return jobItemOptions;
   }
   ```

### Example:

If `jobItemsData` contains the following items:

```javascript
const jobItemsData = [
    { "objectId": 1, "title": "Task A", "jobId": 100 },
    { "objectId": 2, "title": "Task B", "jobId": 100 },
    { "objectId": 3, "title": "Task C", "jobId": 101 },
];
```

And you call the function like this:

```javascript
getJobItemsOptions(100, 2);
```

The result will be:

```html
<option value="1">Task A</option>
<option value="2" selected>Task B</option>
```

### Summary:
- The JavaScript defines an array of job items (`jobItemsData`) that contain `objectId`, `title`, and `jobId` for each job item.
- It defines a function `getJobItemsOptions()` that filters job items based on a `jobId` and returns the appropriate HTML `<option>` elements for a dropdown, with the `selected` attribute applied to the matching `selectedJobItem`.

{% endraw %}