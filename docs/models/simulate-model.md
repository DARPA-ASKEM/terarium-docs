---
title: "Simulate a model"
---

Simulating a model lets you understand how the underlying system might behave under specific conditions. Terarium supports deterministic simulations and probabilistic simulations that incorporate uncertainty. 

<figure markdown>
  ![Workflow graph of two simulations (one deterministic and one probabilistic) of a SIDARTHE model of COVID-19 spread in Italy](../img/models/simulate.png)
  <figcaption>A deterministic simulation (center) showing various variables in a COVID-19 model (left) and a probabilistic simulation (right) showing the distribution of a single variable with uncertainty.</figcaption>
</figure>

## Simulate a model

To simulate a model, you need to pass in the specific [configuration](../configure-model/) you want to simulate.

??? list "To run a deterministic simulation"

    1. In the workflow graph, drag in the model you want to simulate.
    2. Right-click the workflow graph and select **Deterministic > Simulate**.
    3. On the model node, click the output port for the config you want to use and then click the **Model Configuration** input port on the simulate node.
    4. To edit the simulation time range: 
        1. Click :octicons-sign-in-24:{ .flip title="Open simulate details" } to open the Simulate pane. 
        2. Scroll down to the Simulation time range section and set the **Start date** and **End date**.
    5. On the simulate node, click **Run**.

??? list "To run a probabilistic simulation"

    1. In the workflow graph, drag in the model you want to simulate.
    2. Right-click the workflow graph and select **Probabilistic > Simulate**.
    3. On the model node, click the output port for the config you want to use and then click the **Model Configuration** input port on the simulate node.
    4. To choose the number of stochastic samples: 
        1. Click :octicons-sign-in-24:{ .flip title="Open simulate details" } to open the Simulate pane. 
        2. Scroll down to the Other options section and change the **Number of stochastic samples**.
    5.  To edit the simulation time range, scroll to the Simulation time range section and set the **Start date** and **End date**.
    6. On the simulate node, click :material-play-outline:{ aria-hidden="true" } **Run**.

??? list "To view simulation results"

    1. On the Simulate pane, click :octicons-sign-out-24:{ aria-hidden="true" } **Output**.
    2. Use the **Select variables to plot** dropdown to choose the variables you want to visualize. If you choose multiple variables, Terarium overlaps them on the same plot.

        If you ran a probabilistic simulation, you can only plot one variable per chart.

    3. To add an additional chart, click :octicons-plus-24:{ aria-hidden="true"} **Add Chart** and repeat the previous step.

??? list "To save simulation results as a new dataset"

    - On the Simulate pane, click :material-content-save-outline:{ aria-hidden="true" } **Save as dataset**.

## Compare model configurations

You can use the same simulate node to compare multiple configurations of a model.

??? list "To simulate multiple model configurations"

    1. In the workflow graph, drag in the model you want to simulate.
    2. Right-click the workflow graph and select **Deterministic > Simulate**.
    3. For each configuration you want to use, click its output port and then click the **Model Configuration** input node on the simulate node.
    4. On the simulate node, click **Run**.
    5. On the Simulate pane, click :octicons-sign-out-24:{ aria-hidden="true" } **Output**.
    6. Use the **Select variables to plot** dropdown to choose the variable you want to visualize. 
    
        When comparing simulations, you can only add one variable to each plot. Each simulation result is color-coded to match the line coming out of the configuration port in the workflow graph.
    
    7. To compare a different variable, click :octicons-plus-24:{ aria-hidden="true"} **Add Chart** and repeat the previous step.