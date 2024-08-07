---
title: Create Workflow
layout: default
parent: Getting Started
nav_order: 3
---

# Create Workflow

1. Navigate to **Admin** --> **Workflows**
   ![Workflow Dashboard](../images/04_image-13.png)
2. Click **Create Workflow**
   ![Workflow Canvas](../images/04_image-14.png)
3. Click the ![Cog](../images/04_image-15.png) icon in the top right
   ![Workflow Settings](../images/04_image-16.png)
4. Make the name **Review Lead** and click **Save**
5. Click **Add Activity**
6. On the left, choose **Data**
   ![Activity Picker](../images/04_image-17.png)
7. Scroll down and choose **Object Instance Trigger**
   ![Object Instance Trigger](../images/04_image-18.png)
8. Drag the new activity to a position on the left
   ![Dragged Activity](../images/04_image-19.png)
9. **Right Click** the **Object Instance Trigger** and click **Edit**
    ![OIT Properties](../images/04_image-20.png)
10. Select **Lead** under Object Type Id and Choose the **Common** Tab.
11. Change the **Name** to **LeadTrigger** and the Display Name to **Review Lead**
    ![Common Settings](../images/04_image-21.png)
12. Click **Save**
13. Click **Add Activity**
14. On the left, choose **Tasks** and choose **Task Create**
15. Drag the **Task Create** activity to the right of the **Review Lead** Activity
    ![Two Activities](../images/04_image-22.png)
16. Now using the blue dot to the right of the **Review Lead** activity, connect it to the blue circle on the Task Create Activity. It should look like the below:
    ![Connected Activities](../images/04_image-23.png)
17. Right Click the **Task Create** activity and choose **Edit**
    ![Task Editor](../images/04_image-24.png)
18. To the right of the Title, click ![Elipsis](../images/04_image-25.png) and choose **Liquid**
19. In the Title Type ```Review Lead #{%raw%}{{Activities.LeadTrigger.InstanceId}}{%endraw%}```
20. In the description, type 
    ```
    # Review Lead
    It is time to review this lead. Please review it
    ```
21. Leave the Severity, Priority and Due.
    ![Task Editor](../images/04_image-27.png)
22. In the related ObjectId, click ![Elipsis](../images/04_image-25.png) and choose **Liquid**
23. Enter ```{%raw%}{Activities.LeadTrigger.ObjectId}}{%endraw%}``` in the Related Object Id
24. In the Data Questions Add ```Status``` for **Name** and ```Status``` for **Value**
25. In Branches, add the text "Done" and click Enter.
    ![Task Editor 2](../images/04_image-28.png)
26. Click **Save**
27. Click **Publish**

**Congratulations.** You have created your first workflow. When you click the option on a lead it should create a task to update the lead. You can now [Try it out](./try_it_out.html).

**Note:** The **Liquid** system is a way of reading and writing data between activities. In World of Workflows, we support Liquid and JavaScript for this. 

