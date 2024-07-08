---
title: Random Number
layout: default
parent: Activities
---

## Random Number
Generates a pseudo random number. This can be any number or you can set a specific random seed and choose the number of iterations to get a specific number in the random number sequence.

A Pseudo random generator creates seemingly random numbers from a mathematically generated sequence. To obtain more "randomness", random generators use a "seed" which is a number to seed the sequence. In this activity you can choose a seed or use the system timer which should produce a more random answer.

**Category:** Primitives

### Input Parameters

| Name | Type | Label | Hint | ReadOnly | Browsable |
| -- | -- | -- | -- | -- | -- | -- |
| Seed | int32 | Number | The Random seed. 0 uses the timer. | False | True |
| Lower Bound | int32 | Number | The smallest number that can be returned. | False | True |
| Upper Bound | int32 | Number | The largest number that can be returned. | False | True |
| Sequence | int32 | Number | The number in the sequence to return. | False | True |

### Output Parameters

| Name | Type | Hint |
| -- | -- | -- |
| Output | Int32  | The Random Number |