---
title: Calibrate ensemble
---

# Calibrate ensemble

Calibrate ensemble extends the calibration process by working across multiple models simultaneously, allowing you to explore how different configurations collectively align with historical data. By aggregating results from multiple models, Calibrate ensemble can provide a more comprehensive understanding of system behavior.

## Calibrate ensemble operator

In a workflow, the Calibrate ensemble operator takes two or more model configurations and a dataset as inputs. It outputs a calibrated dataset.

Once you've completed the calibration, the thumbnail preview shows the calibrated ensemble variables over time.

<figure markdown>![](../img/simulation/calibrate-ensemble/calibrate-ensemble-operator.png)<figcaption markdown>How it works: [PyCIEMSS](https://github.com/ciemss/pyciemss/blob/main/pyciemss/interfaces.py#L156) :octicons-link-external-24:{ alt="External link" title="External link" }</figcaption></figure>

<div class="grid cards" markdown>

-   :material-arrow-collapse-right:{ .lg .middle aria-hidden="true" } __Inputs__

    ---

    - Two or more model configurations
    - Dataset (with timepoints)

-   :material-arrow-expand-right:{ .lg .middle aria-hidden="true" } __Outputs__

    ---

    Calibrated dataset

</div>

??? list "Add a Calibrate ensemble operator to a workflow"

    - Do one of the following actions:
    
        - On an operator that outputs a model configuration, click <span class="sr-only" id="link-icon-label">Link</span> :octicons-plus-24:{ title="Link" aria-labelledby="link-icon-label" } > **Calibrate ensemble**.
        - Right-click anywhere on the workflow graph, select **Simulation** > **Calibrate ensemble**, and then connect two or more model configurations and a dataset to the Calibrate ensemble input.

## Calibrate ensemble

The Calibrate ensemble operator allows you to define how to:

- [Map your model configurations and dataset](#map-dataset-columns-and-model-variables).
- [Assign your level of confidence in each model](#assign-model-weights).
- [Choose how to run the calibration](#configure-the-run-settings).

??? list "Open a Calibrate ensemble operator"

    1. Make sure you've connected two or more model configurations and a dataset to the Calibrate ensemble operator. 
    2. Click **Open**.

### Map dataset columns and model variables

To begin, map the observed data (such as number of cases) to the corresponding model states (such as detected cases). 

![](../img/simulation/calibrate-ensemble/mapping.png)

Only relevant variables need to be mapped. For example, if the models include susceptible and recovered states, but the data only includes infected, you only need to map the infected state. States like susceptible populations that are typically not observed may not be mappable.

??? list "Create a mapping between the data and model configurations"

    1. Select the Timestamp column from the dataset.
    2. For each variable of interest:
    
        1. Click :octicons-plus-24:{ aria-hidden="true" } **Add mapping**.
        2. Enter a unique name for the variable in the ensemble model.
        3. Select the corresponding state from each of the model configurations. 

### Assign model weights

Model weights control how much influence each model has on the final ensemble result. Adjusting these weights allows you to express your confidence in individual models or combinations of them.

- If you're unsure which model is most accurate, assign **equal medium weights** (5). This treats all models as likely contributors, allowing their outputs to combine in a balanced way. This is the default and recommended option.
- Assign a **high weight** (10) to one or more models you believe are the most accurate. The ensemble prioritizes their influence.
- Assign a **low weight** (1) to a model you believe is less reliable. Its influence is minimized in the ensemble calculation.

![](../img/simulation/calibrate-ensemble/model-weights.png)

By tuning weights, you can better match the ensemble's output to your expectations or historical data, potentially achieving a more reliable result.

??? list "Assign model weights"

    - For each model, select a relative certainty from 1 (low) to 10 (high).

### Configure the run settings

The Calibrate ensemble run settings allow you to fine-tune the time frame, solver behavior, and inference process. By adjusting these settings, you can balance performance and precision.

![](../img/simulation/calibrate-ensemble/other-settings.png)

??? list "Configure the run settings"

    1. Choose the **Start** and **End time**.
    2. Select a **Preset**, Fast or Normal.

??? list "Advanced settings"

    Using the following advanced settings, you can further optimize the computational efficiency and thoroughness of the calibration:
    
    - **Number of samples**: Number of calibration attempts made to explore the parameter space and identify the best fit.
    - ODE solver options determine the approach for solving the system's equations during calibration:
        - **Solver method**: *dopri5* provides more accurate results with finer calculations, while *euler* performs simpler, faster calculations.
        - **Solver step size**: Interval between calculation steps, influencing precision and computational cost.
    - Inference options control how model parameters are estimated during calibration:
        - **Number of solver iterations**: Number of steps to take to converge on a solution.
        - **Learning rate**: Step size for updating parameters during the optimization process.
        - **Inference algorithm**: Stochastic Variational Inference (SVI), which estimates parameters probabilistically.
        - **Loss function**: Evidence Lower Bound (ELBO), which guides parameter updates by balancing data fit and model complexity.
        - **Optimize method**: ADAM, an algorithm for efficient parameter updates.

## Create and save the calibrated dataset

Once you've configured the settings, you can run the operator to generate a new calibrated dataset. The new dataset becomes a temporary output for the Calibrate ensemble operator. You can connect it to other operators in the same workflow.

??? list "Create a new calibrated dataset"

    - Click :material-play-outline:{ aria-hidden="true" } **Run**.

??? list "Choose a different output for the Calibrate ensemble operator"

    - Use the **Select an output** dropdown.

## Understand the results

Ensemble calibration results are presented as a series of charts that show:

- [Loss](#loss)
- [Ensemble variables over time](#ensemble-variables-over-time)
- [Error](#error)
- [Model weights](#model-weights)

??? list "Access the Output settings"

    Additional settings for the various chart types are available in the Output settings panel.

    - Click <span class="sr-only" id="expand-icon-label">Expand</span> :fontawesome-solid-angles-left:{ title="Expand" aria-labelledby="expand-icon-label" } to expand the Output settings.

??? list "Save a chart for use outside Terarium"

    You can save Calibrate ensemble charts for use outside of Terarium. Download charts as images that you can share or include in reports, or access structured JSON that you can edit with [Vega](https://vega.github.io/) :octicons-link-external-24:{ alt="External link" title="External link" }.

    - Click <span class="sr-only" id="menu-icon-label">Menu</span> :fontawesome-solid-ellipsis-vertical:{ title="Menu" aria-labelledby="menu-icon-label" } and then choose one of the following options:
        - Save as SVG
        - Save as PNG
        - View source (Vega-Lite JSON)
        - View compiled Vega (JSON)
        - Open in [Vega Editor](https://vega.github.io/editor/#/) :octicons-link-external-24:{ alt="External link" title="External link" }

??? list "Add annotations that call out key values and timesteps"

    To highlight notable findings, you can manually add annotations that label plotted values at key timesteps on loss and ensemble variable charts.

    1. Click anywhere on the chart to add a callout.
    2. To add more callouts without clearing the first one, hold down ++shift++ and click a new area of the chart.

    ???+ note

        Ensemble variable charts also support [AI-generated annotations](#ensemble-variables-over-time).

### Loss

The loss chart shows the error between the model's output and the calibration data. A decreasing loss indicates successful calibration.

![](../img/simulation/calibrate-ensemble/loss.png)

??? list "Show or hide the loss chart"

    - Select or clear **Show loss chart**.

### Ensemble variables over time

To aid visual validation, the Ensemble variables over time charts compare the effects of calibration for each state variable and the historical data. 

- The grey line represents the model before calibration.
- The colored line represents the model after calibration.
- Circles represent observations from the historical data.

The Output settings panel has several options that let you customize the scale and display of the charts. You can also use an AI assistant to generate chart annotations that highlight key data points.

![](../img/simulation/calibrate-ensemble/ensemble-variables.png)

??? list "Choose which model states to plot"

    - Select the model states from the dropdown list.

??? list "Show charts for each model configuration"

    You can view individual charts for all the models that contribute to the ensemble model as small multiples.

    - Click **Show individual models**.

??? list "Change the data format"

    The data format controls how the ensemble variable charts are drawn.

    - Choose the **Data format**:
        - Default: Include the historical observations in the plot.
        - Quantiles (CDC Forecast Hub): Omit the historical observations and draw filled shapes to represent quantiles ranging from 50$ndash;90%.

Additional chart settings are available for each of the state variables.

![](../img/simulation/calibrate-ensemble/ensemble-variable-options.png)

??? list "Access additional chart settings"

    - Click <span class="sr-only" id="options-icon-label">Options</span> :octicons-gear-24:{ title="Options" aria-labelledby="options-icon-label" }.

??? list "Change the chart scale"

    By default, ensemble variable charts are shown in linear scale. You can switch to log scale to view large ranges, exponential trends, and improve visibility of small variations.

    - Select or clear **Use log scale**.

??? list "Change variable colors"

    You can change the color of any model state to make your charts easier to read.

    - Click the color picker and choose a new color from the palette or use the eye dropper to select a color shown on your screen. 

??? list "Prompt an AI assistant to add chart annotations"

    You can prompt an AI assistant to automatically create annotations on the ensemble variable charts. Annotations are labelled or unlabelled lines that mark specific timestamps or peak values. Examples of AI-assisted annotations are listed below.

    - Describe the annotations you want to add and press ++enter++.

        ```{ .text .wrap }
        Draw a vertical line at day 100
        ```
        ```{ .text .wrap }
        Draw a line at the peak S after calibration
        ```
        ```{ .text .wrap }
        Draw a horizontal line at the peak of default configuration Susceptible after calibration. Label it as "important"
        ```
        ```{ .text .wrap }
        Draw a vertical line at x is 10. Don't add the label
        ```
        ```{ .text .wrap }
        Draw a line at x = 40 only for ensemble after calibration
        ```

### Error

The error plots show the mean absolute error (MAE) for each model and variable of interest.

![](../img/simulation/calibrate-ensemble/error.png)

??? list "Change the chart scale"

    By default, error charts are shown in linear scale. You can switch to log scale to view large ranges, exponential trends, and improve visibility of small variations.

    1. Click <span class="sr-only" id="options-icon-label">Options</span> :octicons-gear-24:{ title="Options" aria-labelledby="options-icon-label" }.
    2. Select or clear **Use log scale**.

### Model weights

The model weights charts show the distribution of weights assigned to each model before and after calibration.

![](../img/simulation/calibrate-ensemble/model-weights.png)

??? list "To show or hide the model weights charts"

    - Select or clear **Show distributions in charts**.