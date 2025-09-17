# Getting Started / My First Workflow

In this section, we're going to step you through getting started,
creating a **Table** and **Data**, Creating a **Workflow** and working
with a task.

We're going to start with a customer service example. We're going to
configure World of Workflows with a system to manage sales leads. We'll
be able to categorize these leads and create a system for follow-up and
closing them.

In addition, we'll create several **views** so you can allow your users
to easily navigate the data.

Follow the steps below to complete this exercise.

1.  [Creating a data structure](./create_data_structure.html) - In this
    section, we create the structure for the data we are going to use.
    We commonly create solutions by working with data first.
2.  [Adding data](./adding_data.html) - In this section we add data for
    lead status and add our first lead.
3.  [Create Workflow](./create-workflow.html) - In this section, we
    create a workflow to follow up a lead with a task.
4.  [Try it out](./try_it_out.html) - Try out the workflow and see the
    tasks you created

# Creating a data structure

We're going to create two types:

-   **Lead** contains information on the lead
-   **LeadStatus** contains the status of the lead.

*Note: we use singular names by convention when creating types.*

## Creating Tables

1.  Navigate to Admin -\> Tables ![Tables](../images/04_image.png)
2.  Click **+** to create a New Table ![New
    Lead](../images/04_image-1.png)
3.  Enter the Name as **Lead** and the Description as **A Lead**. Click
    **Save**.
4.  Click **+** to create another new Table
5.  Enter the Name as **LeadStatus** and the Description as **Status of
    a Lead**
6.  Tables should look like the screenshot below. If not, use the delete
    or edit buttons to make the relevant amendments. ![Created
    Tables](../images/04_image-2.png)

## Creating Columns

1.  Click the ![Edit Table Columns](../images/04_image-3.png) button next
    to the **Lead** Table.
2.  As you can see, we have an existing column, the Title Column. *Title
    columns are important but you can change their name, display name,
    description, display order and whether they are visible.* ![Initial
    Columns](../images/04_image-4.png)
3.  Click **+** to add a new Column ![Add
    Column](../images/04_image-5.png)
4.  Enter details as follows:
    1.  **Column Name:** FullName
    2.  **Display Name:** Full Name
    3.  **Description:** The Full name of the lead
    4.  **DataType:** String
    5.  **Display Order:** Leave Blank
    6.  **Visible:** Checked
    7.  **Indexed:** Not Checked
5.  Click **Save & Add Another**
6.  Enter Details as follows:
    1.  **Column Name:** Email
    2.  **Display Name:** Email
    3.  **Description:** The Email address of the lead
    4.  **DataType:** String
    5.  **Display Order:** Leave Blank
    6.  **Visible:** Checked
    7.  **Indexed:** Not Checked
7.  Click **Save & Add Another**
8.  Enter Details as follows:
    1.  **Column Name:** Description
    2.  **Display Name:** Description
    3.  **Description:** The Description of the lead
    4.  **DataType:** String
    5.  **Display Order:** Leave Blank
    6.  **Visible:** Checked
    7.  **Indexed:** Not Checked
9.  Click **Save & Add Another**
10. Enter Details as follows:
    1.  **Column Name:** Status
    2.  **Display Name:** Status
    3.  **Description:** The status of the lead
    4.  **DataType:** Reference
    5.  **Object Type:** LeadStatus
    6.  **Display Order:** Leave Blank
    7.  **Visible:** Checked
    8.  **Indexed:** Not Checked
11. Click **Save**
12. Your Lead Columns should look like the screenshot below. If not, use
    the edit and delete buttons to fix it. ![Lead
    Columns](../images/04_image-6.png)

You have successfully created the data structure so can go to **[step 2,
adding data](./adding_data.html)**

# Adding Data

## Status

In this section, we are going to add some lead statuses, and our first
couple of leads.

1.  Navigate to **Admin** -\> **Tables** -\> **LeadStatus**
    ![LeadStatusClear](../images/04_image-7.png)
2.  Click **+** to add a new Lead Status ![Add Lead
    Status](../images/04_image-8.png)
3.  Add details as follows:
    1.  **Title:** New
4.  Click **Save & Add Another**
5.  Add details as follows:
    1.  **Title:** Qualified
6.  Click **Save & Add Another**
7.  Add details as follows:
    1.  **Title:** Closed
8.  Click **Save**
9.  LeadStatus will look like the screen shot below. Click on the Id of
    items to change or delete them. ![Lead
    Statuses](../images/04_image-9.png)

## Leads

1.  Navigate to **Admin** -\> **Tables** -\> **Lead**
    ![LeadsClear](../images/04_image-10.png)
2.  Click **+** to add a new Lead ![Add New
    Lead](../images/04_image-11.png)
3.  Add details as follows:
    1.  **Title:** World of Workflows
    2.  **Full Name:** Nick Beaugeard
    3.  **Email:** nick@worldofworkflows.com
    4.  **Description:** opportunity to sell our product to World of
        Workflows
    5.  **Status:** New
4.  Click **Save**
5.  The list of leads should look like the screen shot below. *Note in
    this case I modified a mistake, so the modified date is greater than
    the created date.* ![Created Lead](../images/04_image-12.png)

You have successfully created the data so can go to **[step 3, create
workflow](./create-workflow.html)**

# Create Workflow

1.  Navigate to **Admin** --\> **Workflows** ![Workflow
    Dashboard](../images/04_image-13.png)
2.  Click **Create Workflow** ![Workflow
    Canvas](../images/04_image-14.png)
3.  Click the ![Cog](../images/04_image-15.png) icon in the top right
    ![Workflow Settings](../images/04_image-16.png)
4.  Make the name **Review Lead** and click **Save**
5.  Click **Add Activity**
6.  On the left, choose **Data** ![Activity
    Picker](../images/04_image-17.png)
7.  Scroll down and choose **Object Instance Trigger** ![Object Instance
    Trigger](../images/04_image-18.png)
8.  Drag the new activity to a position on the left ![Dragged
    Activity](../images/04_image-19.png)
9.  **Right Click** the **Object Instance Trigger** and click **Edit**
    ![OIT Properties](../images/04_image-20.png)
10. Select **Lead** under Object Type Id and Choose the **Common** Tab.
11. Change the **Name** to **LeadTrigger** and the Display Name to
    **Review Lead** ![Common Settings](../images/04_image-21.png)
12. Click **Save**
13. Click **Add Activity**
14. On the left, choose **Tasks** and choose **Task Create**
15. Drag the **Task Create** activity to the right of the **Review
    Lead** Activity ![Two Activities](../images/04_image-22.png)
16. Now using the blue dot to the right of the **Review Lead** activity,
    connect it to the blue circle on the Task Create Activity. It should
    look like the below: ![Connected
    Activities](../images/04_image-23.png)
17. Right Click the **Task Create** activity and choose **Edit** ![Task
    Editor](../images/04_image-24.png)
18. To the right of the Title, click
    ![Elipsis](../images/04_image-25.png) and choose **Liquid**
19. In the Title Table
    `Review Lead #{%raw%}{{Activities.LeadTrigger.InstanceId}}{%endraw%}`
20. In the description, type
    `# Review Lead     It is time to review this lead. Please review it`
21. Leave the Severity, Priority and Due. ![Task
    Editor](../images/04_image-27.png)
22. In the related ObjectId, click ![Elipsis](../images/04_image-25.png)
    and choose **Liquid**
23. Enter `{%raw%}{Activities.LeadTrigger.ObjectId}}{%endraw%}` in the
    Related Object Id
24. In the Data Questions Add `Status` for **Name** and `Status` for
    **Value**
25. In Branches, add the text "Done" and click Enter. ![Task Editor
    2](../images/04_image-28.png)
26. Click **Save**
27. Click **Publish**

**Congratulations.** You have created your first workflow. When you
click the option on a lead it should create a task to update the lead.
You can now [Try it out](./try_it_out.html).

**Note:** The **Liquid** system is a way of reading and writing data
between activities. In World of Workflows, we support Liquid and
JavaScript for this.

# Try it Out

1.  Navigate to **Admin** --\> **Tables** --\> **Lead**
    ![Leads](../images/04_image-29.png)
2.  Click the Id for the Lead (In this case 4) ![Lead
    Details](../images/04_image-30.png)
3.  Click the Workflows Tab ![Workflows Tab](../images/04_image-31.png)
4.  Click **Review Lead**
5.  Navigate to **Tasks** ![Tasks](../images/04_image-32.png)
6.  Click **Pick** next to the task. This moves the task from the
    available queue into your queue. ![Picked
    Task](../images/04_image-33.png)
7.  Click the Task in the **My Tasks** queue. ![Review
    Task](../images/04_image-34.png)
8.  Here you can change the status of the lead, click **Done** and
    Submit to save. You can also **Unassign** the lead if you wish.

**Congratulations.** You have now completed our first getting started
guide. You have created a lead management system that allows for
task-based reviews of leads.
