---
title: "Stratify a model"
---

## Generate the strata

1. In the workflow graph, drag in the model you want to stratify.
2. Right click the workflow graph and select **Stratify**.
3. Click one of the output ports on the model node and then click the input node on the stratify node.
4. In the Stratify panel, use the **Select a strata type** dropdown to choose the type of strata you want to add (such as age groups or locations).
5. Enter a comma-separated list of labels for each of the strata groups:
    ```
    A1, A2
    ```
6. Click **Generate strata**.
7. Click **Continue to step 2: Assign types**.

## Type the variables

1. In the Stratify panel, select a variable type and then click all of the nodes in the model diagram that belong to that type.
2. Select another type and repeat the previous step.
3. To add a custom type, click **Add a type** and provide a name for the new type. Repeat the node typing described in the previous steps.