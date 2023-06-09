---
title: "Get started"
---

## Create a project

1. Click **New project**.
2. In the **Name** field, enter `COVID-19`.
3. Click **Create**.

## Explore and add data

1. Enter `covid` in the search bar and press ++enter++.
2. In the **Publication year** facet, click the current year.
3. In the **GitHub repositories** facet, click *nytimes/covid-19-data*.
4. Click a paper to view more details and then click **Add to selected resources**.
5. On the Selected resources pane, click **Add to project > COVID-19**.
6. Open the newly added resource, scroll down to the extracted **GitHub URLs**, and click **Import** next to the `https://github.com/nytimes/covid-19-data` repository.
7. Select the **us.csv** file and click **Import 1 file**.

## Explore and add models

1. Search for `covid` again and this time switch to the **Models** results.
2. To look for models that have the same variables as the selected dataset, click *Dead* in the **Concepts** facet.
3. Click a model to view its description, including the list of variables it contains. 
4. When you find a model that matches the dataset concepts, click **Add to selected resources**. Choose the following models:
    - Bucky
    - CHIME-SIR
    - Giordano2020 - SIDARTHE model of COVID-19 spread in Italy
5. On the Selected resources pane, click **Add to project > COVID-19**.

## Create a workflow

1. On the project overview, click **New workflow**.
2. Drag the **us** dataset from the list of resources onto the workflow graph.
3. Right-click the workflow graph and click **Calibrate**.
4. Click the output port on the us dataset node and then click one of the input nodes on the CalibrationOperation node.

## Simulate a model

1. Drag the **Giordano2020** model from the list of resources onto the workflow graph.
2. Right-click the workflow graph and click **Simulate**.
3. Click the output port on the Giordano2020 model node and then click the input node on the SimulateOperation node.
4. Click **Run**.
5. Repeat steps 1&ndash;3 with another model and then compare the behavior of the two simulations.
6. Click the output port on the Giordano2020 model node and then click the remaining input node on the CalibrationOperation node.

## Calibrate a model

More info coming soon.

## Compare simulations

Pipe the output of calibration into the same simulate node to compare the model before and after calibration.

More info coming soon.