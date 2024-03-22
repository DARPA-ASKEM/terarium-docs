---
title: "Workflows"
---

# Manage workflows

A workflow is a visual canvas that lets you to build and run complex operations (calibration, simulation, and stratification) on models and data.

![Workflow graph with an SIR model and related dataset passed into a calibration operation](../img/workflows/workflow.png)

??? list "To create a new workflow"

    * In the Resources panel, click :fontawesome-solid-plus:{ aria-hidden="true"} **New** in the Workflow section.

## Add resources and operators to a workflow

Workflows consist of models, datasets, documents, and code that you can feed into a series of operators that transform or simulate your resources.

??? list "To add a resource to the workflow"

    Perform one of the following actions:

    + Drag the model, dataset, document, or code in from the Resources panel.
    + Right-click anywhere on the graph, select **Add resource** > **Model**, **Dataset**, **Document**, or **Code** and then select the resource from the dropdown list.

??? list "To add an operator to the workflow"

    Perform one of the following actions:

    + Right-click anywhere on the graph and then select an operation from the menu.
    + Click :octicons-plus-24:{ aria-hidden="true"} **Add component** and then select the operation from the list.

### Link resources and operators

Resources and operators in your workflow graph have inputs and outputs that let you string them together to form complex model operations.

![Outputs (left) for a model and a dataset connected to the input of a calibrate operation](../img/workflows/nodes.png)

??? list "To connect resources and operators"

    - Click the output of one operator and then click the corresponding input on another operator.

    ??? example

        - To configure a Calibrate operation to use a dataset, first click the output on the right side of the Dataset operator and then click the **Dataset** input on the left side of the Calibrate operator.

??? list "To remove a connection between resources and operators"

    - Hover over the input or output and click :octicons-unlock-24:{ aria-hidden="true" } **Unlink**.

??? note "Operators with yellow headers"

    An operator with a yellow header indicates that a resource or indicator that feeds into it has changed and the operator needs to be rerun.

### Edit resource and operator details

Resources and operators in the workflow graph summarize the data and inputs/outputs that they represent. You can drill down to view more details or settings.

??? list "To view resource or operator details"

    Perform one of the following actions:

    - Click **Open** or **Edit**.
    - Click :fontawesome-solid-ellipsis-vertical:{ alt="Menu" title="Menu" } > :fontawesome-solid-up-right-from-square:{ aria-hidden="true" } **Open in new window**.

??? list "To duplicate a resource or operator"

    - Click :fontawesome-solid-ellipsis-vertical:{ title="Menu" } > :octicons-copy-24:{ aria-hidden="true"} **Duplicate**

## Manage a workflow

To organize your workflow graph, you can move, rearrange, or remove any of the operators.

???+ note "Saving workflows"

    Terarium periodically autosaves the state of your workflow as you make changes.

??? list "To rename a workflow"

    * Click :fontawesome-solid-ellipsis-vertical:{ title="Menu" } > :octicons-pencil-24:{ aria-hidden="true"} **Rename**, type a unique name for the workflow, and press ++enter++.

??? list "To move a workflow operator"

    * Click the title of the operator and drag it to another location on the graph.

??? list "To adjust the layering of a workflow operator"

    * Click :fontawesome-solid-ellipsis-vertical:{ alt="Menu" title="Menu" } > :fontawesome-solid-arrow-up:{ aria-hidden="true" } **Bring to front** or :fontawesome-solid-arrow-down:{ aria-hidden="true" } **Send to back**.

??? list "To remove a workflow operator"

    * Click :fontawesome-solid-ellipsis-vertical:{ alt="Menu" title="Menu" } > :fontawesome-regular-trash-can:{ aria-hidden="true" } **Remove**.