---
title: "Workflows"
---

A workflow is a visual canvas that lets you to build and run complex operators (calibration, simulation, and stratification) on models and data.

![](../img/workflows/workflow.png)

## Create a workflow

??? list "To create a new workflow"

    * On the project overview tab, click :octicons-git-merge-24:{ aria-hidden="true"} **New workflow**.

??? list "To add a dataset or model to the workflow"

    * Perform one of the following actions:
        + Drag the model or dataset in from the Resources pane.
        + Click :octicons-plus-24:{ aria-hidden="true"} **Add component > Model** or **Dataset** and then select the resource from the dropdown list on the new node.

??? list "To add a new model operation to the workflow"

    * Perform one of the following actions:
        + Right click anywhere on the graph and then select an operation from the menu.
        + Click :octicons-plus-24:{ aria-hidden="true"} **Add component** and then select the operation list.

### Workflow node inputs and outputs

Nodes in your workflow graph have input and output ports that let you string them together to form complex model operations.

![Output nodes (left) for a model and a dataset connected to the input nodes of a calibrate operation](../img/workflows/nodes.png)

??? list "To connect node ports"

    - Click the input or output port of one node and then click the opposite port on another node.

    ??? example

        - To configure a simulation operation to use a dataset, first click the output port on the dataset node and then click the input port on the simulation node.

## Manage a workflow

To clean your workflow graph so it's easy to follow, you can freely move, rearrange, or remove the nodes it contains.

???+ note "Saving workflows"

    Terarium periodically autosaves the state of your workflow as you make changes.

??? list "To move a workflow node"

    * Click the title of the node and drag it to another location on the graph.

??? list "To bring a workflow node to the front of the graph"

    * Click :fontawesome-solid-ellipsis-vertical:{ title="Menu" } **> Bring to front**.

??? list "To remove a workflow node"

    * Click :fontawesome-solid-ellipsis-vertical:{ title="Menu" } **>** :fontawesome-regular-trash-can:{ aria-hidden="true" } **Remove**.