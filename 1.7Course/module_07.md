# 7. Advanced Workflow Features

Enhancing your workflows with advanced features such as variables, task management activities, HTTP activities, and timers allows for greater flexibility and functionality within the World of Workflows platform.

## 7.1 Variables

Variables are temporary storage units within a workflow, enabling the retention and manipulation of data during execution. They are essential for dynamic workflows that require data handling and decision-making.

**Types of Variables:**

- **Persistent Variables:** Created using the *Set Variable* activity, these variables persist throughout the entire workflow execution.
- **Transient Variables:** Created using the *Set Transient Variable* activity, these variables exist only for the current iteration of a loop and are reset in each iteration.

**Utilising Variables:**

1. **Creating a Variable:**
   - Add the *Set Variable* or *Set Transient Variable* activity to your workflow.
   - Define the variable's name and assign a value.

2. **Accessing a Variable:**
   - Use JavaScript with `GetVariable('variableName')` or Liquid syntax `{{ Variables.variableName }}` to retrieve the variable's value.

3. **Modifying a Variable:**
   - Reassign a new value using the *Set Variable* activity or within a script.

For detailed information, refer to the [Variables](https://world-of-workflows.github.io/WorkflowsUniversity/docs/06_What_Are_workflows/variables.html) section.

## 7.2 Task Management Activities

Task management activities facilitate the creation and handling of tasks within workflows, enabling user interaction and process tracking.

**Creating a Task:**

1. **Add a Task Activity:**
   - Incorporate the *Create Task* activity into your workflow.

2. **Configure Task Details:**
   - Specify the task's title, description, assignee, and other relevant properties.

3. **Await Task Completion:**
   - The workflow will pause until the assigned user completes the task.

**Managing Tasks:**

- **Viewing Tasks:**
  - Users can view their tasks in the *My Tasks* pane, which displays details such as title, description, and task ID.

- **Completing Tasks:**
  - Users can pick tasks from the task queue, perform the required actions, and mark them as complete, allowing the workflow to proceed.

For comprehensive guidance, consult the [Tasks in Workflows](https://world-of-workflows.github.io/WorkflowsUniversity/docs/05_tasks/task-workflows.html) section.

## 7.3 HTTP Activities

HTTP activities enable workflows to handle incoming HTTP requests and interact with external web services, facilitating integration with APIs and webhooks.

**Key HTTP Activities:**

- **HTTP Endpoint:**
  - Handles incoming HTTP requests within your workflow.
  - Supports various HTTP methods, including GET, POST, PUT, DELETE, PATCH, OPTIONS, and HEAD.
  - Allows definition of custom paths and reading of request content in formats such as JSON, XML, or plain text.

- **Send HTTP Request:**
  - Enables your workflow to send HTTP requests to external services.
  - Supports different HTTP methods and allows configuration of headers and request bodies.

- **HTTP Response:**
  - Sends an HTTP response to an HTTP Endpoint within your workflow.
  - Allows customization of status codes, headers, and content.

For detailed instructions, refer to the [HTTP Activities](https://world-of-workflows.github.io/WorkflowsUniversity/docs/06_What_Are_workflows/http_activities.html) section.

## 7.4 Timers

Timers allow workflows to be scheduled to run at specific times or intervals, enabling automation of time-based processes.

**Using Timers:**

1. **Add a Timer Activity:**
   - Incorporate the *Cron* activity into your workflow.

2. **Configure the Schedule:**
   - Define the schedule using a cron expression, specifying the exact times or intervals for execution.

3. **Activate the Workflow:**
   - Once configured, the workflow will run automatically according to the defined schedule.

For guidance on creating cron expressions and setting up timers, consult the [Starting Workflows](https://world-of-workflows.github.io/WorkflowsUniversity/docs/07_basic_workflows/04-starting-workflows.html) section.

By leveraging these advanced features, you can create robust and dynamic workflows that effectively automate complex business processes within the World of Workflows platform. 