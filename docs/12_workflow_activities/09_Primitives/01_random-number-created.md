---
title: Random Number Create
layout: default
nav_order: 1
parent: Primitives
grand_parent: Workflow Activities
---

# Random Number Create

**Description:** Generates a psuedorandom number. This should not be used for cryptography

**Category:** Primitives

**Properties:**
- **Seed**: The Seed. If this is 0, the timer is used as a seed
- **LowerBound**: The Lower bound of numbers to return inclusively
- **UpperBound**: The Upper bound of numbers to return inclusively
- **Sequence**: The Number in the sequence to return, capped at 100. If you set a seed, each time you call this with the same number, the result will be identical

**Input Properties:**
- **Seed**: The Seed. If this is 0, the timer is used as a seed
- **LowerBound**: The Lower bound of numbers to return inclusively
- **UpperBound**: The Upper bound of numbers to return inclusively
- **Sequence**: The Number in the sequence to return, capped at 100. If you set a seed, each time you call this with the same number, the result will be identical

**Output Properties:**
- **ReturnResult**: The returned result


