---
title: "Calibrate a model"
---

<h2 class="procedure">To calibrate a model</h2>

1. In the workflow graph, drag in the model and dataset you want to calibrate.
2. Right click the workflow graph and select **Calibrate**.
3. Connect the output ports of the model and dataset to the input node on the calibrate node:
    1. On the model node, click the output port for the config you want to use and then click the input node on the calibrate node.
    2. On the dataset node, click the output port and then click the other input node on the calibrate node.
4. Click the calibrate node to open the Calibrate panel.
5. In the Mapping section, map the model variables to the columns in the dataset.
6. Click **Run**.

## Intermediate results

<h2 class="procedure">To view calibration results</h2>

1. On the Calibrate panel, click **Output**.
2. Use the Select variables to plot dropdown to choose the variables you want to see, or click **Add Chart** to add another chart.