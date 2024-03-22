---
title: "Stratify a model"
---

# Stratify a model

By stratifying a model, you divide its populations into subsets along demographic characteristics such as age and location.

![](../img/models/stratify.png)

Terarium automatically updates both the graphical representation of the model and its equations to reflect your changes.

<figure markdown>![](../img/models/stratify-model-operator.png)<figcaption markdown>How it works: [MIRA](https://github.com/gyorilab/mira/blob/main/notebooks/viz_strat_petri.ipynb) :octicons-link-external-24:{ alt="External link" title="External link" }</figcaption></figure>

<div class="grid cards" markdown>

-   :material-arrow-collapse-right:{ .lg .middle aria-hidden="true" } __Inputs__

    ---

    Model

-   :material-arrow-expand-right:{ .lg .middle aria-hidden="true" } __Outputs__

    ---

    Stratified model

</div>

## Stratify a model

???+ tip

    To create complex stratification schemes, chain several Stratify model operators together. To facilitate the interpretation of the generated matrices, use as many parameters as the number of stratification levels. 

<p class="procedure">To stratify a model</p>

1. Add the model to a workflow graph.
2. Right-click anywhere on the workflow graph and select **Work with model** > **Stratify model**.
3. Connect the output of the Model resource to the input of the Stratify model operator.
4. On the Stratify model operator, click **Edit**.

    ??? tip

        Only stratify the parameters that differ for each strata.

5. Enter a **Name** for the strata you want to add.
6. Use the **Select variables and parameters to stratify** dropdown.
7. Enter a comma-separated list of labels for each of the strata groups:
    ```
    A1, A2
    ```
8. Choose whether you want to:
    - Create new transitions between strata
    
        ??? tip

            - When stratifying by age, this option is usually off, as people do not change age groups.
            - When stratifying by location, this option can be turned on if people are allowed to travel between locations.

    - Allow existing interactions to involve multiple strata

9. Click :material-play-outline:{ aria-hidden="true" } **Stratify**.
10. Review the Preview of the stratified model.
11. Click **Save as new model**.

## Interpret a stratified model

Terarium previews the a stratified model as:

- A color-coded diagram that highlights the base model and the newly added strata.
- A list of stratified initial variables, parameters, observables, and transitions.

When reviewing the stratified model, you can get a sense of the initial variable and parameter values as a hierarchical list, but the results are easiest to understand in matrix form.

??? list "To review stratified model initials or parameters"

    Perform one of the following actions:

    - To view values as a hierarchical list, click :fontawesome-solid-angle-right:{ alt="Show strata" title="Show strata"} next a symbol name.
    - To view values as a matrix, click :fontawesome-solid-table-cells-large:{ aria-hidden="true"} **Matrix**.

The block matrices in the model diagram should hint at the collapsed transitions.