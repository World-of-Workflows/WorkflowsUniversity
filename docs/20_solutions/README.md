---
title: Solutions
layout: default
nav_order: 21
has_children: true
---

# Solutions

Solutions are packaged collections of Types, Views and Workflows. Using the Solutions feature of world of workflows, you can export these items and re-import them into another system.

**Note:** Solutions are compressed into Zip files. Solution Authors can open the zip file and edit the files within prior to sending a solution to someone else.

## Exporting Solutions

Navigate to Admin -\> Solutions and click the Export button <img src="./media/image104.png" style="width:0.27378in;height:0.28473in" alt="A blue square with white arrow Description automatically generated" />.

Give the solution a name, version, and optional description and icon,

<img src="./media/image105.png" style="width:6.26806in;height:1.70972in" alt="A screenshot of a computer Description automatically generated" />

Next, expand **Types, Workflows** and **Views** and select the items you want to include in the solution.

<img src="./media/image106.png" style="width:6.26806in;height:2.70625in" alt="A screenshot of a computer Description automatically generated" />

When complete, click **Export Solution.**

The system will download a zip file.

In this zip file are several files:

- **SOLUTION_DETAILS** is a file which contains information on your solution in **JSON** format.

- **SETUP_WF** is a workflow that is run when the solution in imported. It creates all the types, and views. You can modify this workflow to do anything you wish by importing it into World of Workflows, editing it and exporting it.

- **The remaining files** are the workflows you wish to import.

## To import a solution

Navigate to Admin -\> Solutions and click the green import button <img src="./media/image107.png" style="width:0.35174in;height:0.33795in" />.

Click to upload the solution or drag and drop.

<img src="./media/image108.png" style="width:6.26806in;height:1.87222in" alt="A screenshot of a computer Description automatically generated" />

Check the Name, Version, Icon and Description are what you expect:

<img src="./media/image109.png" style="width:6.26806in;height:1.70347in" alt="A computer screen shot of a computer screen Description automatically generated" />

Verify (or deselect) the types, workflows and views.

<img src="./media/image110.png" style="width:6.26806in;height:3.11806in" alt="A screenshot of a computer Description automatically generated" />

Finally, check whether you want to delete the setup workflow after run and click **Confirm Import Solution.**

**Important:** Importing solutions is at your own risk. Solutions can contain destructive workflows so ensure you check the solution source and setup workflow before importing.
