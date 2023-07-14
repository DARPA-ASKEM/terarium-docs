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
- Observables
- Transitions
- Other concepts
- Time

## Model representations

To support systematic curation of model structure and extracted metadata, you can also view and [edit](edit-model.md) different representations of a model:

- A diagram that summarizes the different states and transitions in the model.
- Equations that show the same.
- Observables that capture measured observation data points.
- Configurations that indicate the initial conditions and parameters to use in various simulations.

![Diagram and equations representing the structure of an SIR model](../img/models/diagram.png)

## Manage models

You can create, copy, and edit models for use in your workflows.

??? list "To create a new model"

    1. On the Overview page, click :octicons-share-android-24:{ aria-hidden="true" } **New model**.
    2. Enter a unique name for the model and click **Create model**.
    3. Click :octicons-file-24:{ aria-hidden="true" } **Model** to access and edit the model diagram, equations, observables, and configurations.

??? list "To rename a model"

    * Click :fontawesome-solid-ellipsis-vertical:{ title="Menu" } > :octicons-pencil-24:{ aria-hidden="true"} **Rename**, type a unique name for the model, and press ++enter++.

??? list "To make a copy of a model"

    * Click :fontawesome-solid-ellipsis-vertical:{ title="Menu" } > :octicons-copy-24:{ .flip aria-hidden="true"} **Make a copy**, type a unique name for the duplicate model, and click **Copy model**.