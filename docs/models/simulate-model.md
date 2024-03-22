---
title: "Simulate a model"
---

# Simulate a model

Simulating a model lets you understand how the underlying system might behave under specific conditions.

<figure markdown>
  ![Workflow graph of two simulations (one deterministic and one probabilistic) of a SIDARTHE model of COVID-19 spread in Italy](../img/models/simulate.png)
  <figcaption>A deterministic simulation (center) showing various variables in a COVID-19 model (left) and a probabilistic simulation (right) showing the distribution of a single variable with uncertainty.</figcaption>
</figure>

Terarium supports two types of simulations: deterministic (with SciML) and probabilistic (with PyCIEMSS).

??? tip

    Simulating early with a simple model (one with a population of 1,000) can help you spot issues and fix them before you start using a more complex model.

## Deterministic simulations

Deterministic simulations (SciML) take a model configuration as an input and run a single simulation across an editable time range.

<figure markdown>![](../img/models/simulate-sciml-operator.png)<figcaption markdown>How it works: [sciml-service](https://github.com/DARPA-ASKEM/sciml-service/blob/main/src/operations.jl#L222) :octicons-link-external-24:{ alt="External link" title="External link" }</figcaption></figure>

<div class="grid cards" markdown>

-   :material-arrow-collapse-right:{ .lg .middle aria-hidden="true" } __Inputs__

    ---

    Model configuration

-   :material-arrow-expand-right:{ .lg .middle aria-hidden="true" } __Outputs__

    ---

    Simulation data

</div>

??? list "To run a deterministic simulation"

    1. Add the model to a workflow graph.
    2. Connect the Model operator output to a Configure model operator. See [Configure a model](configure-model.md) for information on selecting a model configuration. 
    3. Right-click anywhere on the workflow graph and select **Run model** > **Simulate with SciML**.
    4. Connect the Configure model operator output to the Simulate with SciML input.
    5. Click **Edit** on the Simulate with SciML operator.
    6. Configure the simulation options as needed:
        - **Start time** and **End time**: Specify the simulation time range.
    8. Click :material-play-outline:{ aria-hidden="true" } **Run**.
    9. Review the output and click :fontawesome-solid-floppy-disk:{ aria-hidden="true" } **Save as new dataset** to add the results to your project resources.

## Probabilistic simulations

Probabilistic simulations (PyCIEMSS) take a model configuration and an optional model calibration as inputs and run an editable number of samples to account for uncertainty in results.

<figure markdown>![](../img/models/simulate-pyciemss-operator.png)<figcaption markdown>How it works: [PyCIEMSS](https://github.com/ciemss/pyciemss/blob/main/pyciemss/interfaces.py#L323) :octicons-link-external-24:{ alt="External link" title="External link" }</figcaption></figure>

<div class="grid cards" markdown>

-   :material-arrow-collapse-right:{ .lg .middle aria-hidden="true" } __Inputs__

    ---

    - Model configuration
    - Calibration (optional)

-   :material-arrow-expand-right:{ .lg .middle aria-hidden="true" } __Outputs__

    ---

    Simulation data

</div>

??? list "To run a probabilistic simulation"

    1. Add the model to a workflow graph.
    2. Connect the Model operator output to a Configure model operator. See [Configure a model](configure-model.md) for information on selecting a model configuration. 
    3. Right-click anywhere on the workflow graph and select **Run model** > **Simulate with PyCIEMSS**.
    4. Connect the Configure model operator output to the Simulate with PyCIEMSS input.
    5. Click **Edit** on the Simulate with PyCIEMSS operator.
    6. Configure the simulation options as needed:
        - **Start time** and **End time**: Specify the simulation time range.
        - **Number of samples**: Enter the number of stochastic samples to generate.
        - **Method**: Choose whether to solve ordinary differential equations using [dopri5](https://en.wikipedia.org/wiki/Dormand-Prince_method) or [euler](https://en.wikipedia.org/wiki/Euler_method).

            ??? tip

                Using a low number of samples and the dopri5 method can speed up your runtime for debugging purposes.

    7. Click :material-play-outline:{ aria-hidden="true" } **Run**.
    8. Review the output and click :fontawesome-solid-floppy-disk:{ aria-hidden="true" } **Save as new dataset** to add the results to your project resources.

## View and save simulation results

Simulation results are summarized on each Simulate operator and in the operator details. You can choose which variables to plot.

??? list "To view simulation results"

    1. In the output section of the Simulate operator details, use the dropdown list to choose the variables you want to visualize. If you choose multiple variables, Terarium overlaps them on the same plot.
    2. To add an additional chart, click :octicons-plus-24:{ aria-hidden="true"} **Add chart** and repeat the previous step.

        ??? tip

            It's recommended to use multiple charts if the variables you want to display have very different magnitudes.

??? list "To save simulation results as a new dataset"

    - On the Simulate pane, click :material-content-save-outline:{ aria-hidden="true" } **Save as new dataset**.

<!-- ## Compare model configurations

You can use the same simulate operator to compare multiple configurations of a model.

??? list "To simulate multiple model configurations"

    1. In the workflow graph, drag in the model you want to simulate.
    2. Right-click the workflow graph and select **Run model** > **Simulate with SciML**.
    3. For each configuration you want to use, click its output port and then click the **Model Configuration** input port on the simulate operator.
    4. On the Simulate operator, click **Run**.
    5. On the Simulate pane, click :octicons-sign-out-24:{ aria-hidden="true" } **Output**.
    6. Use the **Select variables to plot** dropdown to choose the variable you want to visualize. 
    
        When comparing simulations, you can only add one variable to each plot. Each simulation result is color-coded to match the line coming out of the configuration port in the workflow graph.
    
    7. To compare a different variable, click :octicons-plus-24:{ aria-hidden="true"} **Add Chart** and repeat the previous step. -->