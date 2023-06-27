---
title: "Stratify a model"
---

Stratifying a model allows you to divide its populations into subsets along demographic characteristics such as age and location. Terarium automatically updates both the graphical representation of the model and its equations to reflect your changes.

![](../img/models/stratify.png)

## Define the strata

More info coming soon.

<p class="procedure">To define the strata</p>

1. In the workflow graph, drag in the model you want to stratify.
2. Right-click the workflow graph and select **Stratify**.
3. Click one of the output ports on the model node and then click the input node on the stratify node.
4. Click :octicons-sign-in-24:{ .flip title="Open stratify details" } to open the Stratify panel, and use the **Select a strata type** dropdown to choose the type of strata you want to add (such as age groups or locations).
5. Enter a comma-separated list of labels for each of the strata groups:
    ```
    A1, A2
    ```
6. To add another strata group, click :octicons-plus-24:{ aria-hidden="true" } **Add another strata group** and repeat steps 4&ndash;5.
7. Click **Generate strata**.
8. Click **Continue to step 2: Assign types**.

## Assign types

More info coming soon.

<p class="procedure">To assign types</p>

1. In the Model section, use the **Assign to** dropdowns to assign model concepts to each of the depicted node types.
2. To add a type not depicted, click :octicons-plus-24:{ aria-hidden="true" } **Add a type** and provide a name and color for the new type. Repeat the node typing described in the previous steps.
3. Click **Continue to step 3: Manage Interactions**.

## Manage interactions

More info coming soon.

<p class="procedure">To manage interactions</p>

- In the Strata section, use the dropdown list to indicate which populations in the new strata are allowed to perform certain transitions.

## Stratify the model

More info coming soon.

<p class="procedure">To stratify the model</p>

- Click **Stratify**.