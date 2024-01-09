# Compensable

The Compensable Activity has 5 outcomes:

- Body - The Body outcome lets the user specify what work to be done within the scope of the compensable activity.
- Compensate - If any activity causes an unhandled exception in the Done branch, the Compensate outcome of the compensable activity will be scheduled, allowing the workflow to undo actions as necessary.
- Cancel - If an activity within the Body branch faults, the Cancel outcome is scheduled.
- Confirm - For some scenarios, compensable activities should no longer allow to be compensated anymore.
    To control this, the user should be able to explicitly confirm a compensable activity. When this happens, the Confirm outcome will be scheduled, allowing the user to do any work that finalizes some state.
- Done- Once the Body branch completes, the Done outcome is scheduled.