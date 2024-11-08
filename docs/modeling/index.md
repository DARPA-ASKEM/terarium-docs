---
title: "Work with a model"
---

# Work with a model

In Terarium, a model is an abstract representation that approximates the behavior of a system. You can build a chain of complex operations to edit, configure, stratify, calibrate, and simulate models.

![Workflow graph with an SIR model and related dataset passed into calibration and simulation operations](../img/models/description.png)

## Model resource

A model resource represents a model you've uploaded or created in Terarium. In the workflow graph, you can display its diagram or equations. It takes no inputs and outputs the model for use in modeling, configuration, and intervention operators.

![Model resource for a SIDARTHE model of COVID-19 with a diagram preview](../img/models/model-resource.png)

<div class="grid cards" markdown>

-   :material-arrow-collapse-right:{ .lg .middle aria-hidden="true" } __Inputs__

    ---

    None

-   :material-arrow-expand-right:{ .lg .middle aria-hidden="true" } __Outputs__

    ---

    Model

</div>

## What can I do with a model resource?

You can connect a model resource to the following operators:

- [Edit model](edit-model.md): Add, remove, or change state variables, transitions, parameters, rate laws, and observables.
- [Stratify model](stratify-model.md): Divide populations into subsets along demographic characteristics such as age and location.
- [Compare models](compare-models.md): Compare side-by-side with other models to understand their similarities and differences.
- [Configure model](../config-and-intervention/configure-model.md): Set the initial values and parameters for the condition you want to test
- [Create intervention policy](../config-and-intervention/create-intervention-policy.md): Create static and dynamic interventions for "what-if" scenarios.

## Add a model to a workflow

!!! note

    For information about: 

    - Uploading models, see [Upload modeling resources](../upload-resources/index.md).
    - Creating models, see [Edit model](edit-model.md).

Once you create a model or add it to your project, you can open it to view more details or add it to a workflow for use in scientific modeling processes.

???+ list "To add a model to a workflow"

    - From the Resources panel, drag the model into a workflow graph.

## Understand model representations

Each model has a detailed view that summarizes the following extracted details:

- Description
- Diagram
- Model equations
- State variables
- Parameters
- Observables
- Transitions
- Time
- Provenance
- Other concepts

To support systematic curation of model structure and extracted metadata, you can view and [edit](edit-model.md) different representations of a model:

- A diagram that summarizes the different states and transitions in the model.
- Equations that show the same.

![Diagram and equations representing the structure of an SIR model](../img/models/diagram.png)

???+ list "To view model details"

    - Click the model name in the Resources panel.

## Manage models

You can create, copy, and edit models for use in your workflows.

??? list "To create a new model"

    1. In the Resources panel, click :octicons-plus-24:{ aria-hidden="true" } **New** in the Model section.
    2. Enter a unique name for the model and click **Save**.
    3. From the Resources panel, drag the new model into a workflow.
    4. Hover over the Model output and click :octicons-plus-24:{ title="Link" aria-label="Link" } > **Edit model**.
    5. Click **Edit** on the Edit model operator.
    6. Use the AI assistant or code editor to construct a set of equations that describe the model.

??? list "To rename a model"

    * Click :fontawesome-solid-ellipsis-vertical:{ title="Menu" } > :octicons-pencil-24:{ aria-hidden="true"} **Rename**, type a unique name for the model, and press ++enter++.

??? list "To copy a model"

    1. Add the Model operator to a workflow graph and connect it to an Edit model operator.
    2. Click **Edit** on the Edit model operator.
    3. Click **Save for re-use**, enter a name for the copy, and click **Save**.
