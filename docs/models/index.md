---
title: "Work with models"
---

In Terarium, a model is an abstract representation that approximates the behavior of a system. In the workflow graph, you can build a chain of complex operations to configure, stratify, calibrate, and simulate models.

![Workflow graph with an SIR model and related dataset passed into calibration and simulation operations](../img/models/description.png)

## Extracted model details

Each model has a description that summarizes the following extracted details:

- Description
- Parameters
- State variables
- Transitions
- Variable statements

## Model representations

To support systematic curation of model structure and extracted metdata, you can also view and edit different representations of a model:

- A diagram that summarizes the different states and transitions in the model.
- An equation that shows the same.
- Configurations that indicate the initial conditions and parameters to use in various simulations.

![Output ports on the right side of nodes can be passed into input ports on the left side of other nodes](../img/models/diagram.png)