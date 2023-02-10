# Compensation

## Introduction
Compensation in Elsa was first discussed in Elsa issue [#2683](https://github.com/elsa-workflows/elsa-core/issues/2683) and is described as follows:

We need a way for workflows to compensate for when a workflow faults so that previously executed activities can e.g. cleanup.
When a workflow compensates, its final status will be Cancelled rather than Faulted.

The below description is a revised version based on the approach taken by Windows Workflow Foundation, which I think is a more flexible approach compared to the previous description.

### Compensable Activity
The Compensable Activity has 5 outcomes:

- Body - The Body outcome lets the user specify what work to be done within the scope of the compensable activity.
- Compensate - If any activity causes an unhandled exception in the Done branch, the Compensate outcome of the compensable activity will be scheduled, allowing the workflow to undo actions as necessary.
- Cancel - If an activity within the Body branch faults, the Cancel outcome is scheduled.
- Confirm - For some scenarios, compensable activities should no longer be allowed to be compensated anymore.
    To control this, the user should be able to explicitly confirm a compensable activity. When this happens, the Confirm outcome will be scheduled, allowing the user to do any work that finalizes some state.
- Done- Once the Body branch completes, the Done outcome is scheduled.


### Compensate Activity
Whenever an activity faults, any upper Compensable activity in its inbound branch will have its Compensate outcome scheduled for execution.

However, this is not always enough. Some activities can have an e.g. "Error" outcome. For example, the SendHttpRequest activity lets the user handle HTTP 500 status codes as an outcome. It is reasonable to allow the user to undo work that was done earlier in the workflow.

To allow for this, the user can add a Compensate activity and specify the name of the Compensable activity.

### Confirm Activity
To confirm a compensable activity, the user can use the Confirm activity by specifying the name of the compensable activity.
This will result in the Confirm outcome of the compensable activity to be scheduled for execution.

Confirmed compensable activities can no longer compensate. Trying to do so will cause an exception.

## Activities

- [Compensable](compensation-compensable.md)
- [Compensate](compensation-compensate.md)
- [Confirm](compensation-confirm.md)

