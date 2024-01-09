---
title: Reporting
layout: default
parent: User Guide
nav_order: 5
---

# Reporting

Reporting on World of Workflows can be performed using any oData Client. Examples of this are Excel, PowerBI or Tableau. The following instructions are for Excel:

## Excel

Open a new spreadsheet in Microsoft Excel

Click the **Data** menu

Click **Get Data**

<img src="./media/image53.png" style="width:1.59036in;height:1.61119in" />

Choose **From Other Sources** and choose **oData feed.**

<img src="./media/image54.png" style="width:4.75719in;height:6.72951in" alt="A screenshot of a computer Description automatically generated" />

In the OData feed window, enter the URL of your World of Workflows Instance followed by /odata. For example for World of Workflows PE this will be <https://localhost:7063/odata>. Once done, click Ok

<img src="./media/image55.png" style="width:6.26806in;height:2.01042in" alt="A screenshot of a computer Description automatically generated with medium confidence" />

Next, for World of Workflows Business Edition, choose Organizational Account and Login. For World of Workflows Personal Edition, just click **Connect**

<img src="./media/image56.png" style="width:6.26806in;height:2.56806in" alt="A screenshot of a computer Description automatically generated with medium confidence" />

Next, select the items you want to report on. For each type there are two tables, the **CurrentState** and the **HistoryState.** Current State is the current configuration of those objects whereas History State is the history and changes for that object.

<img src="./media/image57.png" style="width:6.26806in;height:4.73681in" alt="A screenshot of a computer Description automatically generated" />

When you have selected your tables click **Transform Data.**

You will now be working with the Power Query Editor. Please refer to Excel documentation on how to manipulate this data. When complete click **Close & Load**

<img src="./media/image58.png" style="width:6.26806in;height:2.98403in" alt="A screenshot of a computer Description automatically generated with medium confidence" />