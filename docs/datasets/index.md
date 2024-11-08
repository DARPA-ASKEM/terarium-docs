---
title: "Working with data"
---

# Working with data

You can use uploaded datasets or simulation results to [configure](../config-and-intervention/configure-model.md) and [calibrate](../simulation/calibrate-model.md) models. If the data doesn't align with your intended analysis, you can [transform](transform-dataset.md) it by:

- Creating new variables
- Calculating summary statistics
- Filtering data
- Joining datasets

The Transform data operator can also serve as a place to visually plot and compare multiple datasets or simulation results.

!!! note

    For information about uploading datasets, see [Upload modeling resources](../upload-resources/index.md).

## Dataset resource

Once you add a dataset to your project, you can: 

- [Open it to explore the raw data](review-and-enrich-dataset.md).
- Drag it into a workflow from the Resources panel and connect it to transformation, configuration, and calibration operators.

In a workflow, the Dataset resource lists the columns it contains.

![Resource node of a SEIRD dataset for UK compartments with a 5-row preview](../img/data/data-resource.png)

<div class="grid cards" markdown>

-   :material-arrow-collapse-right:{ .lg .middle aria-hidden="true" } __Inputs__

    ---

    None

-   :material-arrow-expand-right:{ .lg .middle aria-hidden="true" } __Outputs__

    ---

    Dataset

</div>

### What can I do with a dataset resource?

Hover over the output of the Dataset resource and click :octicons-plus-24:{ title="Link" aria-label="Link" } to use the dataset as an input to one of the following operators.

<div class="grid cards" markdown>

-   __Data__

    ---

    - [Transform dataset](transform-dataset.md)  
      Guide an AI assistant to modify or visualize the dataset. 
    - [Subset dataset](subset-dataset.md)  
      Generate a subset of an Earth System Grid Federation (ESGF) dataset along geo-boundaries or temporal slices.
    - [Transform gridded dataset](transform-gridded-dataset.md)  
      Guide an AI assistant to modify or visualize a gridded dataset.

-   __Configuration and intervention__

    ---

    - [Configure model](../config-and-intervention/configure-model.md)  
      Use the dataset to extract initial values and parameters for the condition you want to test.
    - [Validate configuration](../config-and-intervention/configure-model.md#validate-a-model-configuration)  
      Use the dataset to validate a configuration

-   __Simulation__

    ---

    - [Calibrate](../simulation/calibrate-model.md)  
      Use the dataset to improve the performance of a model by updating the value of configuration parameters.
    - [Calibrate ensemble](../simulation/calibrate-ensemble.md)  
      Use the dataset to improve the performance of a model by updating the value of configuration parameters.

</div>