---
title: "Compare datasets"
---

# Compare datasets

You can compare the impacts of two or more interventions or rank interventions using the Compare datasets operator.

## Compare datasets operator

In a workflow, the Compare datasets operator takes two or more datasets or simulation results as inputs and plots them. It outputs a dataset comparison, which can be used as a dataset in other operators.

![](../img/simulation/compare/workflow.png)

<div class="grid cards" markdown>

-   :material-arrow-collapse-right:{ .lg .middle aria-hidden="true" } __Inputs__

    ---

    Two or more datasets or simulation results

    ???+ tip 

        Use descriptive names for your datasets and simulation results. This will help you interpret the comparison.

-   :material-arrow-expand-right:{ .lg .middle aria-hidden="true" } __Outputs__

    ---

    Dataset comparison

</div>

??? list "Add the Compare datasets operator to a workflow"

    - Perform one of the following actions:
    
        - On a resource or operator that outputs a dataset or simulation result, click <span class="sr-only" id="link-icon-label">Link</span> :octicons-plus-24:{ title="Link" aria-labelledby="link-icon-label" } > **Compare datasets**.
        - Right-click anywhere on the workflow graph, select **Data** > **Compare datasets**, and then connect the output of two or more datasets or simulation results to the Compare datasets inputs. 

## Compare datasets

You can visually compare the [impact of interventions](#compare-the-impact-of-interventions) or [rank interventions](#rank-interventions) based on multiple criteria.

??? list "Open the Compare datasets operator"

    - Make sure you've connected two or more datasets or simulation results to the Compare datasets operator and then click **Open**.

### Compare the impact of interventions

You can assess how different interventions influence outcomes by directly comparing their effects on key variables.

#### Define the comparison

You can set up your dataset comparison by selecting a baseline and adjusting key options to align with your analysis goals.

![](../img/simulation/compare/settings.png)

??? list "Define the comparison"

    1. Select **Compare the impact of interventions**.
    2. (Optional) Specify which dataset is the baseline simulation.
    3. (Optional) Select **Average treatment effect** to include a summary of the overall impact of interventions in the resulting comparison tables.

### Customize the comparison plot

You can tailor the resulting comparison plots to highlight the most relevant aspects of your interventions.

![](../img/simulation/compare/plot.png)

??? list "Customize the comparison plots"

    1. Select the variables you want to plot.
    2. Select how to plot the values. You can show:

        - **Raw values**.
        - **Percent change** with respect to the baseline.
        - **Difference** from the baseline.

    3. Select the data format to be displayed in the plot:

        - **Default** (mean)
        - **Quantiles** (specify upper and lower bounds). 

## Rank interventions

More info coming soon.