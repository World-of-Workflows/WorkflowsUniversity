---
title: Timers
layout: default
nav_order: 10
parent: Workflow Activities
---


Timer activities provide useful activities to do with time.

# Cron
**Description:** Triggers periodically based on a specified CRON expression.

**Category:** Timers

**Properties:**
- **CronExpression**: Specify a Quartz CRON expression. Go to https://www.freeformatter.com/cron-expression-generator-quartz.html to generate valid Quartz cron expressions.

**Input Properties:**
- **CronExpression**: Specify a Quartz CRON expression. Go to https://www.freeformatter.com/cron-expression-generator-quartz.html to generate valid Quartz cron expressions.

# Timer
**Description:** Triggers at a specified interval.

**Category:** Timers

**Properties:**
- **Timeout**: The time interval at which this activity should tick.

**Input Properties:**
- **Timeout**: The time interval at which this activity should tick.

# Start at
**Description:** Triggers at a specified moment in time.

**Category:** Timers

**Properties:**
- **Instant**: An instant in the future at which this activity should execute.

**Input Properties:**
- **Instant**: An instant in the future at which this activity should execute.

# Clear Timer
**Description:** Cancel a timer (Cron, StartAt, Timer) so that it is not executed.

**Category:** Timers

**Properties:**
- **ActivityId**: The ID of the timer (Cron, StartAt, Timer) activity, which is to be cleared.

**Input Properties:**
- **ActivityId**: The ID of the timer (Cron, StartAt, Timer) activity, which is to be cleared.
