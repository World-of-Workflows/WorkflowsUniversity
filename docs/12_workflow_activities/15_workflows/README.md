---
title: Workflows
layout: default
nav_order: 15
parent: Workflow Activities
has_children: false
---


# Run Workflow
**Description:** Runs a child workflow.

**Category:** Workflows

**Properties:**
- **WorkflowDefinitionId**: The workflow definition ID to run.
- **TenantId**: The tenant ID to which the workflow to run belongs.
- **Input**: Optional input to send to the workflow to run.
- **PossibleOutcomes**: Enter one or more potential child workflow outcomes you might want to handle.
- **CorrelationId**: The correlation ID to associate with the workflow to run.
- **ContextId**: The context ID to associate with the workflow to run.
- **CustomAttributes**: Optional custom attributes to associate with the workflow to run.
- **Mode**: Fire And Forget: run the child workflow and continue the current one. Blocking: Run the child workflow and suspend the current one until the child workflow finishes.
- **RetryFailedActivities**: True to retry existing ChildWorkflow instance instead of creating a new one when faulted.

**Input Properties:**
- **WorkflowDefinitionId**: The workflow definition ID to run.
- **TenantId**: The tenant ID to which the workflow to run belongs.
- **Input**: Optional input to send to the workflow to run.
- **PossibleOutcomes**: Enter one or more potential child workflow outcomes you might want to handle.
- **CorrelationId**: The correlation ID to associate with the workflow to run.
- **ContextId**: The context ID to associate with the workflow to run.
- **CustomAttributes**: Optional custom attributes to associate with the workflow to run.
- **Mode**: Fire And Forget: run the child workflow and continue the current one. Blocking: Run the child workflow and suspend the current one until the child workflow finishes.
- **RetryFailedActivities**: True to retry existing ChildWorkflow instance instead of creating a new one when faulted.

**Output Properties:**
- **Output**: No hint available

# Interrupt Trigger
**Description:** Resumes suspended workflows that are blocked on a specific trigger.

**Category:** Workflows

**Properties:**
- **WorkflowInstanceId**: The ID of the workflow instance to resume.
- **BlockingActivityId**: The ID of the blocking activity to trigger.
- **Input**: An optional input to pass to the blocking activity.

**Input Properties:**
- **WorkflowInstanceId**: The ID of the workflow instance to resume.
- **BlockingActivityId**: The ID of the blocking activity to trigger.
- **Input**: An optional input to pass to the blocking activity.

# Send Signal
**Description:** Sends the specified signal.

**Category:** Workflows

**Properties:**
- **Signal**: An expression that evaluates to the name of the signal to trigger.
- **CorrelationId**: An expression that evaluates to the correlation ID to use when signaling.
- **Input**: An expression that evaluates to an input value when triggering the signal.
- **SendMode**: The send-mode controls whether the signal should be sent asynchronously or synchronously.

**Input Properties:**
- **Signal**: An expression that evaluates to the name of the signal to trigger.
- **CorrelationId**: An expression that evaluates to the correlation ID to use when signaling.
- **Input**: An expression that evaluates to an input value when triggering the signal.
- **SendMode**: The send-mode controls whether the signal should be sent asynchronously or synchronously.

# Signal Received
**Description:** Suspend workflow execution until the specified signal is received.

**Category:** Workflows

**Properties:**
- **Signal**: The name of the signal to wait for.

**Input Properties:**
- **Signal**: The name of the signal to wait for.

**Output Properties:**
- **SignalInput**: The input that was received with the signal.
- **Output**: No hint available

# Correlate

**Description:** Set the CorrelationId of the workflow to a given value.

**Category:** Workflows

**Properties:**
- **Value**: An expression that evaluates to the value to store as the correlation ID.

**Input Properties:**
- **Value**: An expression that evaluates to the value to store as the correlation ID.

**Output Properties:**
- **Output**: No hint available


# Finish
**Description:** Removes any blocking activities from the current container (workflow or composite activity).

**Category:** Workflows

**Properties:**
- **ActivityOutput**: The value to set as the workflow's output
- **OutcomeNames**: The outcomes to set on the container activity

**Input Properties:**
- **ActivityOutput**: The value to set as the workflow's output
- **OutcomeNames**: The outcomes to set on the container activity

**Output Properties:**
- **Output**: No hint available
