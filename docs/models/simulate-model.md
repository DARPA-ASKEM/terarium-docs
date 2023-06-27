---
title: "Simulate a model"
---

Simulating a model lets you understand how the underlying system might behave under specific conditions.

![Workflow graph of a simulation of a SIDARTHE model of COVID-19 spread in Italy](../img/models/simulate.png)

## Simulate a model

To simulate a model, you need to pass in the specific [configuration](../configure-model/) you want to simulate.

<p class="procedure">To simulate a model</p>

1. In the workflow graph, drag in the model you want to simulate.
2. Right-click the workflow graph and select **Deterministic > Simulate**.
3. On the model node, click the output port for the config you want to use and then click the input node on the simulate node.
4. To edit the simulation time range: 
    1. Click :octicons-sign-in-24:{ .flip title="Open simulate details" } to open the Simulate pane. 
    2. Scroll down to the Simulation Time Range section and set the **Units**, **Start date** and **End date**.
5. On the simulate node, click **Run**.

<p class="procedure">To view simulation results</p>

1. On the Simulate pane, click :octicons-sign-out-24:{ aria-hidden="true" } **Output**.
2. Use the **Select variables to plot** dropdown to choose the variables you want to visualize. If you choose multiple variables, Terarium overlaps them on the same plot.
3. To add an additional chart, click :octicons-plus-24:{ aria-hidden="true"} **Add Chart** and repeat the previous step.

## Compare model configurations

You can use the same simulate node to compare multiple configurations of a model.

<p class="procedure">To simulate multiple model configurations</p>

1. In the workflow graph, drag in the model you want to simulate.
2. Right-click the workflow graph and select **Deterministic > Simulate**.
3. For each configuration you want to use, click its output port and then click the input node on the simulate node.
4. On the simulate node, click **Run**.