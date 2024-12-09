---
title: "Calibrate a model"
---

# Calibrate a model

Calibration lets you improve the performance of a model by updating the value of configuration parameters. You can calibrate a model with a reference dataset of observations and an optional intervention policy.

![Output ports (left) for a model and a dataset connected to the input ports of a calibrate operation](../img/workflows/nodes.png)

## Calibrate

Calibrate takes a model configuration and a dataset as an input.

<figure markdown>![](../img/models/model-calibrate-pyciemss-operator.png)<figcaption markdown>How it works: [PyCIEMSS](https://github.com/ciemss/pyciemss/blob/main/pyciemss/interfaces.py#L529) :octicons-link-external-24:{ alt="External link" title="External link" }</figcaption></figure>

<div class="grid cards" markdown>

-   :material-arrow-collapse-right:{ .lg .middle aria-hidden="true" } __Inputs__

    ---

    - Model configuration
    - Dataset
    - Interventions (optional)

-   :material-arrow-expand-right:{ .lg .middle aria-hidden="true" } __Outputs__

    ---

    Calibrated model configuration

</div>

???+ list "Calibrate a model"

    1. Add the model and reference dataset to a workflow graph.
    2. Connect the Model operator output to a Configure model operator. See [Configure a model](../config-and-intervention/configure-model.md) for information on selecting a model configuration. 
    
        ??? tip
    
            At least one parameter in the configuration needs to be defined as a distribution, and there needs to be a timestamp column.
    
    3. Right-click anywhere on the workflow graph and select **Simulation** > **Calibrate**.
    4. Connect the outputs of the Configure model operator and Dataset resource to the inputs on the Calibrate operator.
    5. Click **Edit** on the Calibrate operator.
    6. In the Mapping section, map the model variables to the columns in the dataset.
    
        ??? tip
    
            If the model concepts are assigned to variables, click **Auto map** to speed the alignment process. 
    
    7. Configure the calibration options as needed:
        - **Chains**: Number of parallel chains to run during the calibration.
        - **Iterations**: Number of steps each chain should take.
        - **ODE method**: Method to solve ordinary differential equations.
        - **Calibrate method**: Approach to calibration (*bayesian*, *local*, or *global*).
    8. Click :material-play-outline:{ aria-hidden="true" } **Run**.

## Intermediate results

???+ list "View calibration results"

    - Use the **Select variables to plot** dropdown to choose the variables you want to see, or click **Add Chart** to add another chart.