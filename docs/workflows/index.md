---
title: "Workflows"
---

A workflow is a visual canvas that lets you to build and run complex operators (calibration, simulation, and stratification) on models and data.

![Workflow graph with an SIR model and related dataset passed into calibration and simulation operations](../img/workflows/workflow.png)

## Create a workflow

??? list "To create a new workflow"

    * On the project overview tab, click :octicons-git-merge-24:{ aria-hidden="true"} **New workflow**.

??? list "To add a dataset or model to the workflow"

    * Perform one of the following actions:
        + Drag the model or dataset in from the Resources pane.
        + Click :octicons-plus-24:{ aria-hidden="true"} **Add component > Model** or **Dataset** and then select the resource from the dropdown list on the new node.

??? list "To add a new model operation to the workflow"

    * Perform one of the following actions:
        + Right-click anywhere on the graph and then select an operation from the menu.
        + Click :octicons-plus-24:{ aria-hidden="true"} **Add component** and then select the operation from the list.

### Workflow node inputs and outputs

Nodes in your workflow graph have input and output ports that let you string them together to form complex model operations.

![Output nodes (left) for a model and a dataset connected to the input nodes of a calibrate operation](../img/workflows/nodes.png)

??? list "To connect node ports"

    - Click the input or output port of one node and then click the opposite port on another node.

    ??? example

        - To configure a Calibrate operation to use a dataset, first click the output port on the right side of the Dataset node and then click the **Dataset** input port on the left side of the Calibrate node.

## Workflow node details

Nodes in the workflow graph summarize the resources and operations that they represent. You can drill down on a node to view more details or access additional settings.

??? list "To view node details"

    - Click :octicons-sign-in-24:{ .flip title="Open details" } next to the node title.

## Manage a workflow

To organize your workflow graph so it's easy to follow, you can freely move, rearrange, or remove the nodes it contains.

???+ note "Saving workflows"

    Terarium periodically autosaves the state of your workflow as you make changes.

??? list "To rename a workflow"

    * Click :fontawesome-solid-ellipsis-vertical:{ title="Menu" } > :octicons-pencil-24:{ aria-hidden="true"} **Rename**, type a unique name for the workflow, and press ++enter++.

??? list "To move a workflow node"

    * Click the title of the node and drag it to another location on the graph.

??? list "To bring a workflow node to the front of the graph"

    * Click :fontawesome-solid-ellipsis-vertical:{ title="Menu" } **> Bring to front**.

??? list "To remove a workflow node"

    * Click :fontawesome-solid-ellipsis-vertical:{ title="Menu" } **>** :fontawesome-regular-trash-can:{ aria-hidden="true" } **Remove**.