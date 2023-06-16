---
title: "Calibrate a model"
---

Calibrating a model lets you determine or update the value of model parameters in light of a reference dataset of observations.

![Output nodes (left) for a model and a dataset connected to the input nodes of a calibrate operation](../img/workflows/nodes.png)

<p class="procedure">To calibrate a model</p>

1. In the workflow graph, drag in the model and dataset you want to calibrate.
2. Right click the workflow graph and select **Calibrate**.
3. Connect the output ports of the model and dataset to the input node on the calibrate node:
    1. On the model node, click the output port for the config you want to use and then click the input node on the calibrate node.
    2. On the dataset node, click the output port and then click the other input node on the calibrate node.
4. Click :octicons-sign-in-24:{ .flip title="Open calibrate details" } to open the Calibrate pane.
5. In the Train / Test ratio section, drag the slider to adjust how much data should be reserved for training.
6. In the Mapping section, map the model variables to the columns in the dataset.
7. Click :material-play-outline:{ aria-hidden="true" } **Run**.

## Intermediate results

<p class="procedure">To view calibration results</p>

1. On the Calibrate panel, click **Output**.
2. Use the Select variables to plot dropdown to choose the variables you want to see, or click **Add Chart** to add another chart.